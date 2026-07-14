//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract prac{
    function evenOdd(uint n)public pure returns(string memory) {
        if (n%2==0){
            return "Even";
        }
        else{
            return "Odd";
        }
    }
}