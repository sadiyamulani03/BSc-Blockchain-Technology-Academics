//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract prac{
    function age(uint a)public pure returns(string memory){
        if (a>18){
            return "u can vote";        
        }
        else{
            return "u cannot vote";
        }
    }
}