//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Countdown{
    uint public cnt;
    function numCnt(uint n)public{
        uint i=0;
        while (i < n){
            cnt++;
        }
    }
}