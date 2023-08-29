// 이 프로젝트에서는 스마트 계약으로 간단한 메신저 기능을 구현하려고 합니다.

// 생성자를 통해 계약을 변수에 배포한 주소를 작성했는지 확인하세요.
// 배포자 주소만 업데이트할 수 있는 문자열 유형의 메시지 변수를 생성합니다.
// 변수가 업데이트된 횟수를 확인하려면 카운터를 만듭니다.

// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract TheBlockchainMessenger {
    uint public changeCounter;

    address public owner;

    string public theMessage;

    constructor() {
        owner = msg.sender;
    }

    function updateTheMessage(string memory _newMessage) public {
        if(msg.sender == owner) {
            theMessage = _newMessage;
            changeCounter;
        }
    }
}