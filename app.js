const express = require('express')
const exphbs = require('express-handlebars')
const app = express()
const path  = require('path')
app.set('port',process.env.PORT || 4501)

app.use(express.json())


app.engine('handlebars',
    exphbs({
        defaultLayout:'layout'
    })
)
app.set('view engine','handlebars')

app.use(express.static(path.join(__dirname,"public")))


app.use(require('./routes/usuarios'))
app.use(require('./routes/data'))
//app.use(require('./routes/bancos'))


app.listen(app.get('port'),()=>{
    console.log('Server on port',app.get('port'))
})