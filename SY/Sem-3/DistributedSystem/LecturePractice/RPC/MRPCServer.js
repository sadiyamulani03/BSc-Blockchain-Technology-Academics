const net = require('net');

function add(a, b) {
    return a + b;
}

const server = net.createServer((socket) => {
    socket.on('data', (data) => {
        let request = JSON.parse(data.toString());  
        let result;
        if (request.method === "add") {
            result = add(request.a, request.b);
        }   
            socket.write(JSON.stringify({result: result}));
    });
});