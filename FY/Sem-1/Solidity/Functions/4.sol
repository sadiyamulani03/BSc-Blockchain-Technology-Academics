//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract LibrarySystem{
    function issueBook(string memory book)public pure returns(string memory){
        return book;
    }
}