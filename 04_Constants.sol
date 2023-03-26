// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Constants{
    // execution cost	378 gas (Cost only applies when called by a contract)
    address public constant MY_ADDR = 0x327cc7Dc38e3678c505CC96239EC827e4F166Fa2;
    // execution cost	307 gas (Cost only applies when called by a contract)
    uint public constant MY_UINT = 123;
}

contract Var{
    // execution cost	2489 gas (Cost only applies when called by a contract)
    address public MY_ADDR = 0x327cc7Dc38e3678c505CC96239EC827e4F166Fa2;
}