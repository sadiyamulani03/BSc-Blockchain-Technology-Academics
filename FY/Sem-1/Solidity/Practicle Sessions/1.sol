//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract prac{
    string studentName="Sadiya";
    uint rollNo=63;

    function setStudent(string memory newName) public {
        studentName=newName;
    }

    function getStudent()public view returns(string memory){
        return studentName;
    } 
}