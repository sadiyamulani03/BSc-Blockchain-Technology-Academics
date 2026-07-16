//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract prac{
    string studentName;
    uint marks;
    
    function setMarks(string memory _studentName, uint _marks)public{
        studentName=_studentName;
        marks=_marks;
    }

    function getMarks()public view returns(string memory, uint){
        return (studentName,marks);  
    }
}
