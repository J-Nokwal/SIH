require('dotenv').config({path: './.env'});
const mongoose= require('mongoose');
const http= require('http');

const app= require('./app');

const {
    PORT,
    DB_URL,
    ENV,
}= require('./utils/config');

mongoose.connect(DB_URL, {
    useNewUrlParser:true,
    useUnifiedTopology:true
}).then(()=> {
    console.log("Connected to database", DB_URL);
}).catch(err=>{
    console.log(err);
});

const server= http.createServer(app);

server.listen(PORT, ()=> {
    console.log(`${ENV} Server is running on port ${PORT}`);
});
