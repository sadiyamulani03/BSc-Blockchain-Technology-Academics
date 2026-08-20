//Prime Number:- is a number which is divided by 1 and the number itself. ex 2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97

let n = Number(prompt("Enter a Number"));
for (let i=2; i<=n; i++){
    if (n % i === 0) {
        document.write(`${n} is not a prime number.`);
        break;
    }
}
if (i > n) {
    document.write(`${n} is a prime number.`);
}

// using count
let n=Number(prompt("Enter a Number"));
let count=0;
for (let i=1; i<=n; i++){
    if (n % i === 0) {
        count++;
    }
}
if (count==2){
        document.write(`${n} is a Prime number`);
    }
    else{
        document.write(`${n} is not a Prime Number`);
    }
// using flag
let n = Number(prompt("Enter a Number"));
let flag = true;
for (let i=2; i<=n; i++){
    if (n % i === 0) {
        flag = false;
        break;
    }
}
if (flag) {
    document.write(`${n} is a prime number.`);
} else {
    document.write(`${n} is not a prime number.`);
}