const net = require('net');

const server = net.createServer((socket) => {

    const Servertime = Date.now();

    console.log("Server: Sending time",
        new Date(Servertime).toLocaleTimeString());

    socket.write(Servertime.toString());
});

server.listen(5000, () => {
    console.log("Time Server is running on port 5000");
});