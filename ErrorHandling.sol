// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Minerva {
    address public owner;
    uint public types;
    uint public bookCount;
    struct Book { uint price; uint stock; }
    mapping(uint => Book) public books;
    uint public storeMoney;
    uint purchased=0;

    constructor() {
        owner = msg.sender;
        storeMoney = 10;
    }

    function addBook(uint stock, uint price) public payable{
        require(msg.sender == owner, "Not owner");
        require(price > 0 && stock > 0, "Invalid input");
        require(storeMoney >= price*stock);
        books[++types] = Book(price, stock);
        bookCount += stock;
        storeMoney -= price*stock;
    }

    function mintMoney(uint value) public{
        storeMoney += value;
    }

    function purchaseBook(uint id) public payable {
        Book storage book = books[id];
        require(book.price > 0 && book.stock > 0, "Invalid purchase");
        book.stock--;
        assert(book.stock >= 0);
        storeMoney += books[id].price;
        bookCount--;
        purchased++;
    }

    function refund(uint id) public{
        require(msg.sender == owner, "Not owner");
        assert(storeMoney>=books[id].price);
        books[id].stock++;
        bookCount++;
        assert(purchased>=0);
        purchased--;
    }
}
