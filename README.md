# ErrorHandling
The Solidity contract DSA includes a state variable and three functions that demonstrate different methods of error handling and a state validation mechanism. As a brief introduction of the functions used:
reQuire enforces a condition and reverts if the condition is not met.
reVert manually reverts the transaction with a specified error message.
testAssert checks an internal condition and causes the transaction to fail if the condition is false.
***
## Implementation
### Require
The reQuire function takes an unsigned integer questions as a parameter and uses the require statement to ensure that the number of questions is greater than 200. If this condition is not met, the function throws an error with the message "Sorry, you need to practice more!". This function demonstrates a common practice in Solidity for input validation and error handling.

### Revert
The reVert function also takes an unsigned integer questions as a parameter and uses the revert statement to throw an error with the same message "Sorry, you need to practice more!" if the condition is not met. 

### Assert
The testAssert function is a view function that uses the assert statement to check that the state variable num is greater than 200, which serves as an internal consistency check to ensure that num holds a valid value as expected by the contract's logic.

![image](https://github.com/Pradyuman554/ErrorHandling/assets/130353989/c2f22f13-6b61-48d5-bc1c-68eb0ce82b32)
