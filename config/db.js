const Sequelize = require('sequelize')

const sequelize = new Sequelize('apimunicipalidadtest', 'root', 'password', {
  host: 'localhost',
  dialect: 'mysql',
})

sequelize.authenticate()
  .then(() => {
    console.log('Conectado')
  })
  .catch(err => {
    console.log('No se conecto')
  })
/*const mysql = require("mysql")
const connection = mysql.createConnection({
    host:"localhost",
    port:"3306",
    user:"root",
    password:"password",
    database:"apimunicipalidadtest",
})

connection.connect(function(err){
    if(err){
        console.error(err)
        return
    }else{
        console.log('db is connected')
    }
})
*/

module.exports = sequelize