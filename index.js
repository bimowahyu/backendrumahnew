const express = require('express')
const cors = require('cors')
const SequelizeStore = require("connect-session-sequelize");
const session = require("express-session");
const authRoutes = require('./routes/authRoutes')
const dataRoutes = require('./routes/dataRoutes')
const mapsRoutes = require('./routes/mapsRoutes')
const fotoRoutes = require('./routes/fotoRoutes')
const uploadRoutes = require('./routes/uploadRoutes')
const db = require('./config/Database')
const fileUpload = require('express-fileupload');
const bodyParser = require('body-parser');
const moment = require('moment');
const questionnaireRoutes = require('./routes/questionnaireRoutes')
const path = require('path');

const SESS_SECRET = "qwertysaqdunasndjwnqnkndklawkdwk";
const TIMEZONE = "Asia/Jakarta";

const app = express()

const SequelizeStoreSession = SequelizeStore(session.Store);

const store = new SequelizeStoreSession({
    db: db
});
// (async()=>{
//    await db.sync();
// })();


app.use(express.json())
app.use((req, res, next) => {
    res.setHeader('Date', moment().tz(TIMEZONE).format('ddd, DD MMM YYYY HH:mm:ss [GMT+0700]'));
    next();
});
app.use(session({
    secret: SESS_SECRET,
    resave: false,
    saveUninitialized: true,
    rolling: true,  
    store: store,
    cookie: {
        maxAge: 3600000, // 1 jam
        secure: 'auto'
    }
}));

app.use(cors({
    credentials: true,
    origin: 'http://localhost:3000'
}));

// app.use(fileUpload());
app.use(bodyParser.json({ limit: '50mb' }));
app.use(bodyParser.urlencoded({ limit: '50mb', extended: true }));
app.use(authRoutes);
app.use(dataRoutes);
app.use(mapsRoutes);
app.use(questionnaireRoutes)
app.use(fotoRoutes)
app.use(uploadRoutes)
app.use('/images', express.static(path.join(__dirname, 'uploads', 'images')));
// store.sync();

app.get('/', (req, res) => {
    res.send('berhasil');
});
app.get("/check-session", (req, res) => {
    if (req.session && req.session.user) {
      // Sesi aktif, kirimkan data user
      res.json({ role: req.session.user.role });
    } else {
      // Tidak ada sesi aktif
      res.status(401).json({ message: "Not authenticated" });
    }
  });
const APP_PORT = 5100;


app.listen(APP_PORT,()=> {console.log("server ready")})