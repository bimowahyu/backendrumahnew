const express = require('express')
const {uploadExcel,
    upload} = require('../controller/uploadController');
const { verifyUser } = require('../middleware/userMiddleware');

const router = express.Router();

// router.post('/uploadexcel',uploadExcel)
router.post('/uploadexcel', upload.single('file'),verifyUser, uploadExcel);

module.exports = router