//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract SimpleWallet{
    uint public chkBalance;
    function add(uint deposit)public{
        chkBalance+=deposit;
    }
}