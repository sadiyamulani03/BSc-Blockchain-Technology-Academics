//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract prac{
    uint temp=23;
    function setTemp(uint _temp)public{
        temp=_temp;
    }
    function getTemp()public view returns(uint){
        return temp;
    }
}