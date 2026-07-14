let cloth = prompt("Enter cloth type");
if (cloth === "shirt"){
    let shirt = prompt("Enter shirt color");
    if (shirt === "red"){
        let price = prompt("Enter price");
        if (price <=500){
            alert("Purchase");
        }
        else{
            alert("Dont Purchase");
        }
    }
    else{
        alert("Dont Purchase");
    }
}
else{
    alert("Dont Purchase anything");
}