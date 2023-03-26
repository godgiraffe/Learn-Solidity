// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract StateVariables{
    uint public stateVariable = 48763;
    // remix 建議我將此 function 宣告為 pure (不會對區塊鏈的 state 造成任何影響)
    function foo() pure external {
        // 這個 warning 只是說，我宣告了，卻沒用這變數
        uint notStateVariable = 88888;
    }
}