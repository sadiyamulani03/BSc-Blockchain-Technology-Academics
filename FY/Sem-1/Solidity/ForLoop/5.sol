//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Factorial{
    uint fact;
    function chkFact(uint n)public returns(uint){
        for (uint i=1; i<=n; i++){
            fact=i%n;
        }
        return(fact);
    }
}