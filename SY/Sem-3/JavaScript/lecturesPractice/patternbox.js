//BoxPattern

let row=Number(prompt("Enter number of rows"));
let col=Number(prompt("Enter number of columns"));

for(let i=1; i<=row; i++){
    for(let j=1; j<=col; j++){
        document.write("* ");
    }
    document.write("<br>");
}

