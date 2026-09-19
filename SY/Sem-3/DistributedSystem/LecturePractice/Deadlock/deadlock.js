let graph = {
    P1: ["P2"],
    P2: ["P3"],
    P3: ["P1"]
};

function detectDeadlock(process, visited) {
    if (visited.includes(process)) {
        return true;
    }
    visited.push(process);
    
    for (let neighbor of graph[process]) {
        if (detectDeadlock(neighbor, visited)) {
            return true;
        }
    }
    visited.pop();
    return false;
}