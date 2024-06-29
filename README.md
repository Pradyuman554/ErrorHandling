# Minerva
The Solidity contract Minerva demonstrates different methods of error handling and a state validation mechanism. As a brief introduction of the functions used:
Require enforces a condition and reverts if the condition is not met.
Revert manually reverts the transaction with a specified error message.
Assert checks an internal condition and causes the transaction to fail if the condition is false.
***
## Implementation
### Introduction
**Minerva** is the **most famous bookstore in my hometown shimla.** Hence, i decided to make my smart contract based on the working of a bookstore.
The Minerva contract is a basic implementation of a bookstore on the Ethereum blockchain. The contract is owned by the address that deploys it, and it maintains a record of different types of books, each with a specific price and stock. The contract also keeps track of the store's money, the total number of books, and the number of books purchased.

### How the contract works
The contract allows the owner to add new books by specifying the stock and price of each book, as long as there is enough store money to cover the cost of the books. It also includes a function to mint (increase) the store's money, which can be used for purchasing additional stock. The purchase function allows anyone to buy a book by specifying its ID and paying the required amount, which decreases the stock and increases the store's money.

### Refunding and Restocking
Additionally, the contract includes a refund function that allows the owner to restock a book and decrease the number of books purchased, effectively reversing a purchase. This ensures that the store's money is sufficient to cover the refund and maintains the integrity of the store's inventory and financial records. The use of assertions and require statements helps to ensure the correctness of the contract's operations and prevent invalid states.

