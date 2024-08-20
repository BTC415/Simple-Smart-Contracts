// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.3;

contract HelloWorld {
    string public message;

    event UpdatedMessage(string oldStr, string newStr);

    constructor(string memory initialMessage) {
        message = initialMessage;
    }

    function update(string memory newMessage) public {
        string memory oldMessage = message;
        message = newMessage;
        emit UpdatedMessage(oldMessage, newMessage);
    }
}
