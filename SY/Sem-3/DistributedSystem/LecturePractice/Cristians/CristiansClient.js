const net = require('net');

const startTime = Date.now();

const client = net.createConnection({ port: 5000 }, () => {
    console.log("Client: Requesting server time...");
});

client.on('data', (data) => {

    const endTime = Date.now();

    const serverTime = Number(data);

    const roundTripTime = endTime - startTime;

    const delay = roundTripTime / 2;

    const correctedTime = serverTime + delay;

    console.log("\nServer Time:", new Date(serverTime).toLocaleTimeString());
    console.log("Round-trip time:", roundTripTime, "ms");
    console.log("Delay:", delay, "ms");
    console.log("Corrected time:", new Date(correctedTime).toLocaleTimeString());

    client.end();
});
