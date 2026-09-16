let clocks = [10,12,8,11];

console.log("Oringinal Clock Times:");
console.log(clocks);

let sum = 0;

for (let time of clocks) {
    sum += time;
}
let average = sum / clocks.length;
console.log("Average Clock Time:", average);