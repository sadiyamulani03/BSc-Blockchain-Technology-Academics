//factors :- are the numbers which divide the given number completely without leaving any remainder. ex factors of 12 are 1,2,3,4,6,12.
let n = Number(prompt("Enter a Number"));
for (let i = 1; i <= n; i++) {
    if (n % i === 0) {
        document.write(`${i} `);
    }
}
