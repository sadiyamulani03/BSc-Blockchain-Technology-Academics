let n=prompt("Enter a Num");

m=n;
s=0;
while(n>0){
    k=n%10;
    n=n/10;
    r=k*10;
    s=s+k;
}
if (s==m){
    console.log(s);
}