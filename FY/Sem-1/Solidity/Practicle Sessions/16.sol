//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract prac{
    function calBill(uint unitsConsumed,uint ratePerUnit)public pure returns(uint){
        
        return unitsConsumed*ratePerUnit;
    }
}