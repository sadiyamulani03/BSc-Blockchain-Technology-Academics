// //SPDX-License-Identifier: MIT
// pragma solidity ^0.8.0;

// contract TableGenerator{
//     uint table;
//     function createTable(uint n)public returns(uint){
//         for (uint i=1; i<=n; i++){
//             table=i*n;
//         }
//         return(table);
//     }
// }

pragma solidity ^0.8.0;

contract TableGenerator{
    uint[] public table;
    function createTable(uint n)public{
        for (uint i=1; i<=n; i++){
            table.push(i*n);
        }
    }
}