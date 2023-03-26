// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Array{
    // array 可宣告 不固定長度 與 固定長度
    uint[] public nums = [1, 2, 3];
    // 固定長度的 array，無法使用 push()、pop()
    uint[3] public numsFixed = [4, 5, 6];

    function arrayMethods() external {
        nums.push(4);       // [1, 2, 3, 4] -> 增加長度 且放入值
        uint x = nums[1];   // 2 -> 從 array 取值, index 從 0 開始
        nums[2] = 777;      // [1, 2, 777, 4] -> 賦值
        delete nums[1];     // [1, 0, 777, 4] 刪除陣列中的值, 並不會縮短陣列長度，會給予初始值
        nums.pop();          // [1, 0, 777] 要縮短陣列長度的話，要使用 pop(), 不返回任何值
        uint len = nums.length; // 3

        // 要建立 array 存放在記憶體中的話，只能是固定長度的
        uint[] memory a = new uint[](5);
        a[1] = 123;
    }

    // 不推薦這麼做，理由是因為不確定程式在跑的時候，這 array 有多大
    // 如果太大的話，很有可能將 gas 燒完，程式都還沒跑完
    // 範例可見：嘟嘟房 NFT 發售事件 : https://abmedia.io/20220312-what-is-wrong-with-car-man-smart-contract
    // 嘟嘟房合約：https://etherscan.io/address/0xae122962331c2b02f837b2aa501d3c5d903ed28a#code
    function returnArray() external view returns (uint[] memory){
        return nums;
    }
}