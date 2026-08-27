let str = "INDIA@11";
let key=2;
let encrypted = "";
let decrypted = "";
let char = str.split('');

for(let i=0; i<str.length; i++)
{
    encrypted[i]+=(str.charCodeAt(i)+key+" ");
}


function getEncrypt(str)
{
    let encrypt=""; 
    for(let i=0; i<str.length;i++)
    {
        console.log(str.codePointAt(i));

        encrypt+=String.fromCharCode(str[i]);
    }
    return encrypt;
}
console.log(getEncrypt(encrypted));