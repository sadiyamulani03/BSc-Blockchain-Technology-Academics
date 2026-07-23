//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract VotingSystem{
    uint public VoteCnt=0;
    function vote()public {
        VoteCnt++;
    }
}