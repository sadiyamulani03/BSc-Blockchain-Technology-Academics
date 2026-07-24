//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DiscountShop{
    function applyDiscount(uint amount)public pure returns(string memory){
        if(amount>1000){
            return "Discount is applied";
        }
        else{
            return "No Discount, the purchase is below 1000";
        }
    }
}