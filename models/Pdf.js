const Sequelize = require('sequelize')
const db = require('../config/Database')

const {DataTypes} = Sequelize

const Pdf = db.define('pdf',{
    filename:{
        type: DataTypes.STRING,
        allowNull: false
    },
    path:{
        type: DataTypes.STRING,
        allowNull: false
    }
})

module.exports = Pdf