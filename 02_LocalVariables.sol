// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract LocalVariables{
    // 這三個為 State Variable，只要 depoly 了，就會永久存放在區塊鏈上
    uint public i;
    bool public b;
    address public myAddr;

    function foo() external{
        // x 跟 y 則是 Local Variable，僅在這個 function 有效，能被存取
        uint x = 123;
        bool y = false;
        x += 456;
        y = true;

        i = 123;
        b = true;
        myAddr = address(1);
    }
}