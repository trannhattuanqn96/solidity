//SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;
import './Hello.sol';

contract Calculator  is Hello {
    // khai báo 1 biến result với loại là uint256 và giá trị là 0
    uint256 result = 0;

    // hàm có chức năng cộng vào result được khai báo ở trên
    constructor(uint _a) {
        result = _a;
    }

    function add(uint256 num) public {
        result += num;
    }

    function subtract(uint256 num) public {
        result -= num;
    }

    function multiply(uint256 num) public {
        result *= num;
    }

    function getResult() public view returns (uint256) {
        return result;
    }
}
