const {Sequelize, BelongsTo} = require('sequelize')
const db = require('../config/Database')
const Questionnaire = require('./Questionnaire')

const {DataTypes} = Sequelize

const Foto = db.define('foto',{
    questionnaireId: {
        type: DataTypes.INTEGER,
        allowNull: false,
        references: {
            model: Questionnaire, 
            key: 'id'
        }
    },
    foto_rumah: {
        type: DataTypes.TEXT,
        allowNull: true
    }
})

Foto.belongsTo(Questionnaire, { foreignKey: 'questionnaireId' });
Questionnaire.hasMany(Foto, { foreignKey: 'questionnaireId' });
module.exports = Foto