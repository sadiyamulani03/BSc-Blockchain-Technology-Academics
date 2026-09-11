const net = require('net');

const server = net.createServer((socket) => {

    const time = Date.now();

    console.log("Server: Sending time",
        new Date(time).toLocaleTimeString());

    socket.write(time.toString());
});

server.listen(5000, () => {
    console.log("Time Server is running on port 5000");
});