const net = require('net');

const host ="127.0.0.1";
const port = 5000;

const server = net.createServer((socket) => {
    console.log("Client connected!");

socket.on('data',(data)=>{
    const msg = data.toString();
    console.log("Client1 Says:",msg);
    socket.write("Hello client! Message received.");
});//End of data event

socket.on('end',(end)=>{
    console.log("Client disconnected!");
});//End of end event

socket.on('error',(err)=>{
    console.log("Error",err.message);
});//End of error event
});//End of CreateServer

server.listen(port,host,()=>{
    console.log("Server is waiting for client");
});











