// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract GlobalVariables{
    function globalVars() external view returns(address, uint, uint){
        // 發起交易的 address
        address sender = msg.sender;
        // 並非是發起交易時的 timestamp，而是交易被執行時，區塊的 timestamp
        uint timestamp = block.timestamp;
        // 目前區塊的編號
        uint blockNum = block.number;
        return (sender, timestamp, blockNum);
    }
}