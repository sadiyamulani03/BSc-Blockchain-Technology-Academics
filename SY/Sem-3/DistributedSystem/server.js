const net = require('net');

const HOST = '127.0.0.1';
const PORT = 5000;

const server=net.createServer((socket)=>{
    console.log("Client connected!");

socket.on('data',(data)=>{
    const message = data.toString();
    console.log("Message from Client:",message);
    socket.write("Hello Client! Message received.");
     });
socket.on('end',()=>{
    console.log("Client disconnected!");
});

socket.on('error',(err)=>{
    console.error("Socket error:", err);
});
});

server.listen(PORT, HOST, () => {
    console.log(`Server listening on ${HOST}:${PORT}`);
});