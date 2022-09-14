// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "forge-std/Test.sol";
import "forge-std/console.sol";

contract HuffGuard is Test {

    modifier guard() {
        _;
    }

    function protectedFnc() guard public {

    }
    function setUp() public {
    }

    function testPass() public {
        protectedFnc();
    }

    function testFail() public {
        protectedFnc();
        protectedFnc();
    }
}