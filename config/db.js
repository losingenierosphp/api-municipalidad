const mysql = require("mysql")
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


module.exports = connection