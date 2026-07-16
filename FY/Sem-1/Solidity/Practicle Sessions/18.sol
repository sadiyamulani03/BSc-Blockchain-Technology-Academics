//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract prac{
    function calPer(uint obtainedMarks,uint totalMarks)public pure returns(uint){
        
        return obtainedMarks / totalMarks * 100;
    }
}