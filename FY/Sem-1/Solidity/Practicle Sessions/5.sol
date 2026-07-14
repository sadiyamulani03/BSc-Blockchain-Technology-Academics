//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract prac{
    function interest(uint _p, uint _r, uint _t)public pure returns(uint){
        uint si;
        return si=_p*_r*_t/100;
    }
}