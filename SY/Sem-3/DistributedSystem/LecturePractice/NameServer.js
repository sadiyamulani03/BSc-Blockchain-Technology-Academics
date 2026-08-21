const net = require("net");

const server = net.createServer((socket) => {

    socket.on("data", (data) =>{
       let name=data.toString();
       let len=name.length;
       socket.write(len);
        socket.write(`Welcome...${data}!`);
    });//End of acceping the request from client
});//End of socket

server.listen(5000,"127.0.0.1",()=>{
    console.log("Server is waiting for client");
});