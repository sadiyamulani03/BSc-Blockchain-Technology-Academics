const net = require("net");

const server = net.createServer((socket) => {

    socket.on("data", (data) =>{
        let num = Number(data); // typecasting(convert the datatype of a var)

        if (num %2 === 0){
            socket.write("Even"); //response
        } else{
            socket.write("Odd"); //response
        }
    });//End of acceping the request from client
});//End of socket

server.listen(5000,"127.0.0.1",()=>{
    console.log("Server is waiting for client");
});