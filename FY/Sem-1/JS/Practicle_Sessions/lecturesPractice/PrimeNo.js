
// using count
let n=Number(prompt("Enter a Number"));
let count=0;
for (let i=1; i<=n; i++){
    if (n % i === 0) {
        count++;
    }
}
if (count==2){
        document.write(`${n} is a :prime number`);
    }
    else{
        document.write(`${n} is not a Prime Number`);
    }