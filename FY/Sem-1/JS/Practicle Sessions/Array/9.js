let a=[10,20,30,40,50];
let left=0;
let right=a.length-1;
let mid=a.length/2;

while(left<right){
    let temp=a[left];
    a[left]=a[right];
    a[right]=temp;
    right--;
    left++;
}
console.log(a);