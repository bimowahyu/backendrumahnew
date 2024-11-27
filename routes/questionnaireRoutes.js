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
    deleteQuestionnaire,
    getStatusRumah,
    getStatusRumah2,
    getDatabacklog,
    getAll
} = require('../controller/questionnaireController');


router.get('/getquestionnaires', getQuestionnaires);
router.get('/getquestionnaires/:id', getQuestionnaireById);
router.post('/createquestionnaires',verifyUser,createQuestionnaire);
router.put('/updatequestionnaires/:id',verifyUser, updateQuestionnaire);
router.delete('/delete/:id',adminOnly,deleteQuestionnaire)
router.get('/filter',filterQuestionnaires)
router.get('/download', adminOnly, downloadExcel)
router.get('/statusrumah', getStatusRumah)
router.get('/statusrumah2', getStatusRumah2)
router.get('/backlog', getDatabacklog)
router.get('/all',getAll)

module.exports = router;