// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Constructor {
    address public owner;
    uint public x;
    // constructor 僅會在 depoly contract 時，執行一次
    // 主要用在初始化合約變數
    // 感覺很適合用 immutable 欸!?
    constructor(uint _x){
        owner = msg.sender;
        x = _x;
    }
}