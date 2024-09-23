// SPDX-license-identifier: MIT

pragma solidity ^0.8.13;

import{test} from "forge-std/Test.sol";
import{DesployBasicNFT} from "../script/DesployBasicNft.s.sol";
import{BasicNft} from "../src/BasicNft.sol"

contract BasicNftTest is test {
    DeployBasicNftTest public deployer;
    BasicNft public basicNft;

    function setup() public {

    }
}