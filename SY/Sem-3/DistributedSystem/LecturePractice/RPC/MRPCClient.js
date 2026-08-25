const net = require('net');

const client = new net.Socket(); //client socket object

client.connect(5000, '127.0.0.1', () => {
    console.log('Connected to RPC server'); 

    const request = {
    method: "add",
    a: 10,
    b: 20
};

client.write(JSON.stringify(request)); //send request to server
});

client.on('data', (data) => {
    let response = JSON.parse(data.toString());  //converting to string and then to JSON object 
    console.log('Result from RPC Server:', response.result);
    client.destroy(); 
});