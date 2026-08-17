//Factorial of a number:- is a multiplicatipon of all the numbers from 1 to the given number. ex factorial of 5 is 1*2*3*4*5 = 120

let n = Number(prompt("Enter a Number"));
let factorial = 1;

for (let i = 1; i <= n; i++) {
    factorial *= i;
}

document.write(`The factorial of ${n} is ${factorial}`);