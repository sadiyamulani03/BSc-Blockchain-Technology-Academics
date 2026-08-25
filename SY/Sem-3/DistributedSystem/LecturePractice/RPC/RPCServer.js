const net = require('net');

const server = net.createServer((socket) => {
    socket.on('data', (data) => {
        let request = JSON.parse(data.toString());
        if (request.method === "add") {
            let result = request.a + request.b;
            
            socket.write(JSON.stringify({result: result}));
        }
    });
    });
