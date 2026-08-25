const net = require('net');

function add(a, b) {
    return a + b;
}

const server = net.createServer((socket) => {
    socket.on('data', (data) => {
        let request = JSON.parse(data.toString());  
        let result;

        if (request.method === "add") {
            result = add(Number(request.a), Number(request.b));
        }   
            socket.write(JSON.stringify({result: result}));
    });
});

server.listen(5000, '127.0.0.1', () => {
    console.log('RPC Server is waiting for client');
});
