// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CrowdFunding {
    address public owner;
    uint public goal;
    uint public deadline;
    uint public amountRaised;

    address[] public contributors;
    mapping(address => uint) public contribution;

    constructor(uint _goal, uint _deadline) {
        owner = msg.sender;
        goal = _goal;
        deadline = _deadline;
    }

    function deposit() public payable {
        if (contribution[msg.sender] == 0) {
            contributors.push(msg.sender);
        }
        contribution[msg.sender] += msg.value;
        amountRaised += msg.value;
    }

    function isGoalMet() public view returns (bool) {
        return amountRaised >= goal;
    }

    function withdrawFunds() public {
        require(msg.sender == owner, "Only owner can withdraw");
        require(block.timestamp > deadline, "Campaign not ended");
        require(amountRaised >= goal, "Goal not reached");

        payable(owner).transfer(address(this).balance);
    }

    function getContributorCount() public view returns (uint) {
        return contributors.length;
    }

    function refund() public {
    require(block.timestamp > deadline, "Campaign not ended");
    require(amountRaised < goal, "Goal was met");

    uint amount = contribution[msg.sender];
    require(amount > 0, "No contribution found");

    contribution[msg.sender] = 0;
    payable(msg.sender).transfer(amount);
}
}