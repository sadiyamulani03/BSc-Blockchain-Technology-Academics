let processes = [1,2,3,4,5];

let initiator =2;

console.log("Process " + initiator + " starts election");

for (let p of processes) {
    if (p > initiator) {
        console.log("P" + initiator + " -> ELECTION Message -> P" + p);
    }
}
let leader = Math.max(...processes);

console.log("\nP" + leader + " is elected as the new leader");

for (let p of processes) {
    if (p !== leader) {
        console.log("P" + leader + " -> COORDINATOR -> P" + p);
    }
}

