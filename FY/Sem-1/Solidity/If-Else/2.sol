//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GradingSystem {
    function chkGrades(uint marks) public pure returns(string memory){
        if(marks>90){
            return "Grade A";
        }
        else if(marks>75){
            return "Grade B";
        }
        else if(marks>50){
            return "Grade C";
        }
        else {
            return "Fail";
        }
    }
}