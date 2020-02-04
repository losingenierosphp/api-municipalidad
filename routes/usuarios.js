const express = require('express')
const router = express.Router()

const mysqlConnection = require('../config/db')

router.get('/',(req,res)=>{
    mysqlConnection.query('select * from usuarios',(err,rows,fields)=>{
        if(!err){
            res.render('home',{
                data: rows,
                nombrePagina: 'app'
            })
            console.log(rows)
        }else{
            console.log(err)
        }
    })
})

module.exports = router