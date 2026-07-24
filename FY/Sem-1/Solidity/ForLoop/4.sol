//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PrimeCheck{
    uint p;
    function CheckPrime(uint n)public returns(uint){
        for (uint i=1; i<=n; i++){
            p=n%i;
        }
        return(p);
    }
}