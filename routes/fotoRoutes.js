const { uploadFoto, upload, getFotoByQuestionnaireId } = require('../controller/fotoController');
const express = require('express');
const { verifyUser } = require('../middleware/userMiddleware');

const router = express.Router()

router.post('/uploadfoto', upload.single('foto'),verifyUser, uploadFoto);
router.get('/getfotobyname/:id',getFotoByQuestionnaireId)

module.exports = router

