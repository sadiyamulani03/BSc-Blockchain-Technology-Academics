//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LoanEligibility{
    function chkEligibility(uint salary)public pure returns(string memory){
        if(salary>30000){
            return "Your are eligible to apply for loan ";
        }
        else{
            return "You are not eligible to apply for loan";
        }
    }
}