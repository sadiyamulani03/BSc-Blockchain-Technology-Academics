//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract prac{
    uint acntBalance=600000;

    function setBalance(uint newBalance)public{
        acntBalance=newBalance;
    }

    function getBalance()public view returns(uint){
        return acntBalance;
    }
}