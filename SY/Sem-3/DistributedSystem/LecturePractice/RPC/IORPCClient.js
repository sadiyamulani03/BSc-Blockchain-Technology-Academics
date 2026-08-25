const net = require('net');

const readline = require('readline');

const client = new net.Socket(); //client socket object

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});
client.connect(5000, '127.0.0.1', () => {
    console.log('Connected to RPC server'); 
    rl.question("Enter a number:", (num1) => {
        rl.question("Enter another number:", (num2) => {
            const request = {
                method: "add",
                a: num1,
                b: num2
            };
            client.write(JSON.stringify(request));
        });
    });
});

client.on('data', (data) => {
    let response = JSON.parse(data.toString());  //converting to string and then to JSON object 
    console.log('Result from RPC Server:', response.result);
    client.destroy(); 
});