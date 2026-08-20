//Armstrong Number:- is a number that is equal to the sum of cubes of its digits. ex 153 = 1^3 + 5^3 + 3^3 .

let n = Number(prompt("Enter a Number"));
let sum = 0;
let temp = n;
while (temp > 0) {
    let digit = temp % 10;
    sum += digit ** 3;
    temp = Math.floor(temp / 10);
}
if (sum === n) {
    document.write(`${n} is an Armstrong number.`);
} else {
    document.write(`${n} is not an Armstrong number.`);
}