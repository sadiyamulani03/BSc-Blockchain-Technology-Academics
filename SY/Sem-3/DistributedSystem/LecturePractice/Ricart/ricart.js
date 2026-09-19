let processes = [1,2,3];
let request = 1;
let replies = 0;

console.log("Process " + request + " requests critical section");

for (let p of processes) {

    if (p !== request) {

        console.log("P" + request + "Request -> P" + p);
        replies++;
    }
}

if (replies === processes.length - 1) {

    console.log("\nP " + request + " enters critical section");

    console.log("P" + request + " is using shared resource");

    console.log("P" + request + " exits critical section");

}