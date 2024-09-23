// SPDX-license-identifier: MIT

pragma solidity ^0.8.13;

import {script} from "lib/forge-std/src/Script.sol";
import {basicNft} from "../src/basicNft.sol";


contract DeployBasicnFT is script {
    function run() external returns(basicNft){
        vm.startBroacast();
        BasicNft basicnft = new BasicNft();
        vm.stopBroacast();
        return basicNft;
    }

}