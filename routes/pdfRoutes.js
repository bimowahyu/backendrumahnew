const express = require('express');
const { uploadPdf, upload, getPdfList, downloadPdf, deletePdf ,getPdfById} = require('../controller/pdfController');
const { adminOnly } = require('../middleware/userMiddleware');

const router = express.Router();

router.post('/uploadpdf', adminOnly,upload.single('pdf'), uploadPdf);
router.get('/pdf', getPdfList);
router.get('/pdf/:id', getPdfById);
router.get('/download/:filename', downloadPdf);
router.delete('/deletepdf/:id',deletePdf)

module.exports = router;
