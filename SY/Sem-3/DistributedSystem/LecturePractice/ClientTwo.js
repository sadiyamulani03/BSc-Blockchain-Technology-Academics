const net = require('net');

port=5000;
host="127.0.0.1";

const client=new net.Socket();

client.connect(port,host,()=>{
    console.log("Server connected!");
    client.write("Hello Server from Client 2...!");
});

client.on('data',data=>{
    msg = data.toString();
    console.log("Server says:",msg);
    client.end();
});

client.on('error',err=>{
    console.log("Error",err.message);
});