let str ='Hello World';
let arr = str.split("");
let rev = arr.reverse().join("")
console.log(rev);

//manually 
let array = ['f', 'l', 'o', 'w', 'e', 'r'];
let start = 0;
let end = array.length -1;
let mid = array.length/2;
while(start < end){
    let temp = array[start];
    array[start] = array[end];
    array[end] = temp;
    start++;
    end--;
}
console.log(array);