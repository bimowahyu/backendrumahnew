const express = require('express');
const { uploadPdf, upload, getPdfList, downloadPdf } = require('../controller/pdfController');
const { adminOnly } = require('../middleware/userMiddleware');

const router = express.Router();

router.post('/uploadpdf', upload.single('pdf'), uploadPdf);
router.get('/pdf', getPdfList);
router.get('/download/:filename', downloadPdf);

module.exports = router;
