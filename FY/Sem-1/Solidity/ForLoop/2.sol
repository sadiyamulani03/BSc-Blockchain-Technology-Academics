 //SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TableGenerator{
    uint[] table;
    function createTable(uint n)public{
        uint i;
        for(i=1; i<=10; i++){
            table.push(n*i);
        }
    }

    function gettable()public view returns(uint[] memory){
        return table;
    }
}