//for loop
let student={
    id:63,
    name:"Sadiya",
    percentage:98
}
document.write(student.id+" "+student.name + " " + student.percentage)

//for in 
for(let key in student){
    document.write(key + " " + student[key]+" ")
}