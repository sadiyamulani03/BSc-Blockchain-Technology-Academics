//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NumberSum{

    function sum(uint n)public pure returns(uint){
        uint i;
        uint s=0;
        for (i==0; n>=i; i++){
            s+=i;
        }
    return s;
    }
}