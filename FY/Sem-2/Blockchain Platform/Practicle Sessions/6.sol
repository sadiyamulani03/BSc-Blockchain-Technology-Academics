//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
contract prac{
    uint[] public nums;
    function addValue(uint value)public{
        nums.push(value);
    }
}