//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract prac{
   uint rechargeAmt;
   function setRechargeAmt(uint _rechargeAmt)public {
    rechargeAmt=_rechargeAmt;
   }

   function getRechargeAmt()public view returns(uint){
    return rechargeAmt;
   }
}