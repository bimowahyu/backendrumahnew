const express = require('express')
const {logIn, Me, logOut ,register,getuser, resetPassword} = require('../controller/authController');
const { adminOnly, verifyUser } = require('../middleware/userMiddleware');


const router = express.Router();

router.get('/user',verifyUser, getuser)
router.get('/me',Me)
router.post('/login',logIn)
router.delete('/logout', logOut)
router.post('/register',register)
router.put('/reset',resetPassword)

module.exports = router