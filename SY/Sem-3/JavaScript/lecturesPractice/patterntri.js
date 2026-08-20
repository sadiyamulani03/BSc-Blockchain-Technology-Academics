//Triangle pattern
let rows = Number(prompt("Enter number of rows"));

for (let i = 1; i <= rows; i++) {
    for (let j = 1; j <= i; j++) {
        document.write("* ");
    }
    document.write("<br>");
}
