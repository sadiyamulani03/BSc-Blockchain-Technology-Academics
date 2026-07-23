//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract AgeCheck{
    function chkEligibility(uint age)public pure returns(string memory){
        if(age>=18){
            return "You are Eligible to Vote";
        }
        else{
            return "Your are not Eligible to Vote";
        }
    }
}