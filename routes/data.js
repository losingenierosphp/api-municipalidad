const express = require('express')
const router = express.Router()

const mysqlConnection = require('../config/db')

router.get('/data',(req,res)=>{
    mysqlConnection.query('SELECT data.id as id, data.numerofactura as factura ,estado.nombre as estado, data.fecha as fecha, area.nombre as area, data.numerocheque as cheque, data.fecharetiro as retiro, bancos.nombre as banco, data.cuenta as cuenta, data.contacto1 as emailcontacto, data.contacto2 as fonocontacto, data.comentario as comentario FROM bancos inner join data  on  bancos.id = data.banco inner join estado on data.estado =  estado.id inner join area on data.area = area.id;' ,(err,rows,fields)=>{
        if(!err){
            res.render('data',{
                data: rows,
                nombrePagina: 'REPORTE'
            })
            console.log(rows)
        }
    })
})
module.exports = router