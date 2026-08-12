//Factorial of a number

let n = Number(prompt("Enter a Number"));
let factorial = 1;

for (let i = 1; i <= n; i++) {
    factorial *= i;
}

document.write(`The factorial of ${n} is ${factorial}`);