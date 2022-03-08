const express= require('express');
const cors= require('cors');

const app= express();

app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ limit: '50mb', extended: true }));

app.get('/', (req, res)=> {
    res.send("Hello world");
})

app.use('/api', require('./routes/api'));
app.use('/auth', require('./routes/auth'));

module.exports= app;