//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract prac{
    function Min(uint a, uint b, uint c)public pure returns(string memory){
        if(a<b && a<c){
            return "a is Min";
        }
        else if(a<b && b<c){
            return "b is Min";
        }
        else{
            return "c is Min";
        }
    }
}