// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleUint {
    uint256 public myUint = 0; // 0 ~ (2^256)-1

    uint8 public myUint8 = 2**4; // 0 ~ (2^8)-1

    int public myint = -10; // -2^128 ~ +2^128

    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }

    function decrementUint() public {
        myUint--;
    }

    function increementUint8() public {
        myUint8++;
    }

    function increementInt() public {
        myint++;
    }
}