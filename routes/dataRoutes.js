const express = require('express')
const{ 
    getAllRecaps,
    getRecapById,
    createRecap,
    updateRecap,
    deleteRecap} = require ('../controller/dataController')
const {adminOnly,verifyUser} = require('../middleware/userMiddleware')

const router = express.Router()


router.get('/getallrecaps',getAllRecaps)
router.get('/getrecapbyid/:id',getRecapById)
router.post('/creatercapp',createRecap)
router.put('/updaterecap/:id',updateRecap)
router.delete('/deleterecap/:id',deleteRecap)

module.exports = router