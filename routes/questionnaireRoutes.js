const express = require("express");
const router = express.Router();
const { verifyUser,adminOnly } = require('../middleware/userMiddleware')
const { 
    calculateScore, 
    createQuestionnaire,
    updateQuestionnaire,
    getQuestionnaires,
    getQuestionnaireById,
    filterQuestionnaires,
    downloadExcel,
    deleteQuestionnaire
} = require('../controller/questionnaireController');

// Definisi routes
router.get('/getquestionnaires', getQuestionnaires);
router.get('/getquestionnaires/:id', getQuestionnaireById);
router.post('/createquestionnaires',verifyUser,createQuestionnaire);
router.put('/updatequestionnaires/:id',verifyUser, updateQuestionnaire);
router.delete('/delete/:id',deleteQuestionnaire)
router.get('/filter',filterQuestionnaires)
router.get('/download',adminOnly,downloadExcel)

module.exports = router;