//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NumberSum{
    uint s=0;

    function sum(uint n)public returns(uint){
        for (uint i=0; n>=i; i++){
            s+=i;
        }
    return s;
    }
}