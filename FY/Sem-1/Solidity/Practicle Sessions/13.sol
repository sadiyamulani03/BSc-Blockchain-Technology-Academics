//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract prac{
   string prodName="XYZ";
   uint prodQnt=189000;

   function update(string memory _prodName , uint _prodQnt)public {
    prodName=_prodName;
    prodQnt=_prodQnt;
   }

   function retrieve()public view returns(string memory, uint){
    return (prodName,prodQnt);
   }
}