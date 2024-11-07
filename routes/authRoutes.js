const express = require('express')
const {logIn, Me, logOut ,register,getuser} = require('../controller/authController')

const router = express.Router();

router.get('/user',getuser)
router.get('/me',Me)
router.post('/login',logIn)
router.delete('/logout', logOut)
router.post('/register',register)

module.exports = router