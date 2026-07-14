//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract prac{

    uint public totalSupplies;
    address public owner;
    uint public supply=0;

    constructor(){
        totalSupplies=200;
        owner=msg.sender;
    }

    function increaseUserSupply() view public {
        require(owner==msg.sender, "you are not owner");
    }

    function View()public{
        supply++;
    }

    function Pure() view public {
        supply%2; 
    }
}