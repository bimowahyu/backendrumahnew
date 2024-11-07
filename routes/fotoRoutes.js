const { uploadFoto, upload, getFotoByQuestionnaireId } = require('../controller/fotoController');
const express = require('express')

const router = express.Router()

router.post('/uploadfoto', upload.single('foto'), uploadFoto);
router.get('/getfotobyname/:id',getFotoByQuestionnaireId)

module.exports = router

