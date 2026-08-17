const net = require('net');

const HOST = '127.0.0.1';
const PORT = 5000;

const client = new net.Socket();
client.connect(PORT, HOST, () => {
    console.log(`Connected to server at ${HOST}:${PORT}`);
    client.write('Hello from Client!');
});

client.on('data', (data) => {
    console.log('Message from Server:', data.toString());
    client.end(); // Close the connection after receiving the response
});

client.on('error', (err) => {
    console.error('Client error:', err);
});