//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract prac{
    function Max(uint a, uint b)public pure returns(string memory){
        if(a>b){
            return "a is Max";
        }
        else{
            return "b is Max";
        }
    }
}