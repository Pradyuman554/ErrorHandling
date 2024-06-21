// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract DSA{
    function reQuire(uint questions) public pure {
        require(questions > 200, "Sorry, you need to practice more!");
    }

    function reVert(uint questions) public pure {
        if (questions <= questions) {
            revert("Sorry, you need to practice more!");
        }
    }

    uint public num=201;

    function testAssert() public view {
        assert(num > 200);
    }
}
