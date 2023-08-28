// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;
// 0.7.x 버전에서 increementUint8를 5번 클릭하면 0부터 다시 시작을 한다. (경고 없음)
// 0.8.15 버전에서 decrementUint을 실행하면 0에서 2^256 - 1로 이동한다.

contract ExampleWrapAround {
    uint256 public myUint = 0; // 0 ~ (2^256)-1

    uint8 public myUint8 = 250;

    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }

    function decrementUint() public {
        unchecked {
            myUint--;
        }
    }

    function increementUint8() public {
        myUint8++;
    }
}