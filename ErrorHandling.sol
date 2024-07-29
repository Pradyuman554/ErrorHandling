// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Minerva{
    address public owner;
    uint public types;
    uint public bookCount;
    struct Book { uint price; uint stock; }
    mapping(uint => Book) public books;
    uint public storeMoney;
    uint public purchased=0;

    constructor() {
        owner = msg.sender;
        storeMoney = 100;
    }

    function addBook(uint stock, uint price) public payable{
        require(msg.sender == owner, "Not owner");
        require(storeMoney >= price*stock, "Insufficient Funds");
        books[++types] = Book(price, stock);
        bookCount += stock;
        storeMoney -= price*stock;
    }

    function mintMoney(uint value) public{
        storeMoney += value;
    }

    function purchaseBook(uint id) public payable {
        Book storage book = books[id];
        if (!(book.price > 0 && book.stock > 0)) revert("Invalid purchase");
        book.stock--;
        storeMoney += books[id].price;
        bookCount--;
        purchased++;
    }

    function refund(uint id) public{
        assert(msg.sender == owner);
        books[id].stock++;
        bookCount++;
        purchased--;
        storeMoney -= books[id].price;
    }
}
