// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract ExampleViewPure {
    uint public myStorageVariable;

    // view 함수는 컨트랙트의 상태를 읽는 용도로만 사용됩니다.
    function getMyStorageVariable() public view returns(uint) {
        return myStorageVariable;
    }

    // pure 함수는 오로지 계산을 위한 용도로 사용됩니다.
    function getAddition(uint a, uint b) public pure returns(uint) {
        return a+b;
    }

    function setMyStorageVariable(uint _newVar) public returns(uint) {
        myStorageVariable = _newVar;
        return _newVar;
    }
}