const express = require('express')

const {getAllMaps, getMapById} = require('../controller/mapsController')

const router = express.Router()

router.get('/maps',getAllMaps)
router.get('/maps/:id',getMapById)

module.exports = router