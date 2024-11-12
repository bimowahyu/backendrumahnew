const Sequelize = require('sequelize')

const db = new Sequelize('rumahbaru', 'root', '', {
    host: 'localhost',
    dialect: 'mysql',
    timezone: '+08:00'
});

module.exports = db
