const express = require('express')
const {uploadExcel,
    upload} = require('../controller/uploadController')

const router = express.Router();

// router.post('/uploadexcel',uploadExcel)
router.post('/uploadexcel', upload.single('file'), uploadExcel);

module.exports = router