// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract ExampleConstrutor {
    address public myAddress;

    constructor(address _someAddress) {
        myAddress = _someAddress;
    }

    function setMyAddress(address _myAddress) public {
        myAddress = _myAddress;
    }

    function setmyAddressToMsgSender() public {
        myAddress = msg.sender;
    }
}