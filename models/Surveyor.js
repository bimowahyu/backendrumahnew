const Sequelize = require('sequelize')
const db = require('../config/Database')

const {DataTypes} = Sequelize

const Surveyor = db.define("Surveyor", {
    username: {
      type: DataTypes.STRING,
      allowNull: false,
      unique: true,
    },
    email: {
      type: DataTypes.STRING,
      allowNull: false,
      unique: true,
    },
    password: {
      type: DataTypes.STRING,
      allowNull: false,
    },
  });

  module.exports = Surveyor
  