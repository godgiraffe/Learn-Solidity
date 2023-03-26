// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract FunctionOutputs{
    // 1號寫法：function 複數回傳值 
    function returnMany() public pure returns(uint, bool){
        return (1, false);
    }
    // 2號寫法：function 複數回傳值，我覺得這個在程式可讀性上比較高
    function named() public pure returns(uint x, bool b){
        return (1, true);
    }
    // 3號寫法：function 複數回傳值 ，這個比較省 gas
    function assigned() public pure returns(uint x, bool b){
        x = 1;
        b = true;
    }

    function destructingAssigments() public pure{
        // 取得 function output 的 2個值
        (uint x, bool b) = returnMany();
        // 只要取得 return 的第二個值
        (, bool _b) = returnMany();
    }
}