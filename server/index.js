// importing modules
const express = require('express');
const http = require('http');
const mongoose = require('mongoose');
mongoose.set('strictQuery', true);

const app = express();
const port = process.env.PORT || 3000;
var server = http.createServer(app);

const io=require('socket.io')(server);

// middle ware
app.use(express.json());

const DB="mongodb+srv://tictactoe_2:shubham%401304@cluster0.hxjyds4.mongodb.net/?retryWrites=true&w=majority";

io.on("connection",(socket)=>{
    console.log("connected!");
});

mongoose.connect(DB).then(()=>{
    console.log("Connection successfull");
}).catch((e)=>{
    console.log(e);
});

server.listen(port,'0.0.0.0',()=>{
    console.log(`Server started and running on port ${port}`);
    // console.log(`Server continue and running on port ${port}`);
})