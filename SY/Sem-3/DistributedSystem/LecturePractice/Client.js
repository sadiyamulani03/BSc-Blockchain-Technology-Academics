const net = require('net');
port=5000;
host="127.0.0.1";
//create a client socket
const client=new net.Socket();

//connect to the server and send a request
client.connect(port,host,()=>{
    console.log("Server connected!");
    //request to server
    client.write("Hello Server from Client1....!");
});//End of connect

//accept response from server
client.on('data',data=>{
    msg = data.toString();
    console.log("Server says:",msg);
    client.end();
});

//error handling 
client.on('error',err=>{
    console.log("Error",err.message);
});