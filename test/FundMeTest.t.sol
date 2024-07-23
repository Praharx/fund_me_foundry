// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test,console} from "forge-std/Test.sol";
import {FundMe} from "../src/FundMe.sol";

contract FundMeTest is Test{
    FundMe fundMe;
    function setUp() external{
       fundMe = new FundMe();
    }

    function testMinimumDollarIsFive() view public{
        assertEq(fundMe.MINIMUM_USD(), 5e18);
    }

    function testOwnerIsMsgSender() view public{
        console.log("Holaaa!!!!");
        assertEq(fundMe.i_owner(),address(this));
    }

    function testPriceFeedVersionIsAccurate() public{
        uint version = fundMe.getVersion();
        assertEq(version,4);
    }
}