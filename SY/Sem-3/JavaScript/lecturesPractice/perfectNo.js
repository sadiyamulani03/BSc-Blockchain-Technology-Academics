//Perfect Number:- is a number which is equal to the sum of its factors excluding itself. ex 6 = 1+2+3.

let n = Number(prompt("Enter a Number"));
let sum = 0;
for (let i = 1; i < n; i++) {
    if (n % i === 0) {
        sum += i;
    }                           
}
if (sum === n) {
    document.write(`${n} is a Perfect number.`);
} else {
    document.write(`${n} is not a Perfect number.`);
}   