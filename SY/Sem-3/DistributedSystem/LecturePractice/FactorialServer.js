const net = require("net");

const server = net.createServer((socket) => {

    socket.on("data", (data) =>{
        
        let num = Number(data);
        let factorial = 1;

       for (let i = 1; i <= num; i++) {
           factorial *= i;
       }  

        socket.write(`The factorial of ${num} is ${factorial}`);
    });//End of acceping the request from client
});//End of socket

server.listen(5000,"127.0.0.1",()=>{
    console.log("Server is waiting for client");
});