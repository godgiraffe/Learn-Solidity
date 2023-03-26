// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract HashFunc {
    /*
    * 使用 abi.encodePacked() 能大幅減少使用空間(memory / storage)
    * 但有一風險為：
    * 輸入值為 "AAA", "BBB" 產出的 code ，會跟
    * 輸入值為 "AA", "ABBB" 產出的 code 一樣
    *
    * 解決辦法：
    * 在兩個參數中間，加入一個 "絕對固定值"(常數之類的)，這樣子產生碰撞的機率會大幅降低！
    */
    function hash(string memory text, uint num, address addr ) external pure returns(bytes32){
        return keccak256(abi.encodePacked(text, num, addr));
    }

    function encode(string memory text0, string memory text1) external pure returns(bytes memory){
        return abi.encode(text0, text1);
    }
    
    function encodePacked(string memory text0, string memory text1) external pure returns(bytes memory){
        return abi.encodePacked(text0, text1);
    }

    function collision(string memory text0, uint num, string memory text1) external pure returns(bytes memory){
        return abi.encodePacked(text0, num, text1);
    }
}