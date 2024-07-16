// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import {NFT} from "../src/NFT.sol";

contract CounterTest is Test {
     NFT public  counter;

    function setUp() public {
        counter =  new NFT('swille', 'SWILLE');
    }

    function test_checkTokenName() public view {
        string memory tokenName = counter.name();
        assertEq('swille', tokenName);
    }

}
