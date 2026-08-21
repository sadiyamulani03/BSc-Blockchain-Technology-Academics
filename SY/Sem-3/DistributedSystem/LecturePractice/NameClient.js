const net = require("net");//it supports all network related work, used to create a connection betweeen client and server
const readline = require("readline");//it is a module used to accept the input from user

const client = net.createConnection(5000, "127.0.0.1");//client object
//const client = new net.Socket(); --> client.createConnection(5000, "127.0.0.1", ()=>{console.log("Server Connected")});

//Initialize the input/output process/object(initialize a interface)
const rl = readline.createInterface({
    input: process.stdin,//standard input
    output: process.stdout//standard output
});

//accepting the input
rl.question("Enter your name:",(name)=>{ // question is a method used to deal with user instruction
    client.write(name); // sending request to server
});

//response (data) is server response
client.on("data", (data)=>{
    console.log("Server says:", data.toString());
    client.end();
    rl.close();
});

