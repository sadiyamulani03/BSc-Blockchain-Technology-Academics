//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract prac{

    uint public totalFunds;

    mapping (uint=>uint)public userFundContribution;

    constructor(){
        totalFunds=450000;
    }

    function UserContribution(uint deadline,uint user, uint amount) public payable{
        require(block.timestamp>=deadline, "in progess");

        userFundContribution[user]=amount;
    }
}