// SPDX-license-identifier: MIT
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {DevOpsTools} from  "lib/foundry-devops/src/DevOpstools.sol";
import {BasicNft} from "../src/BasicNft.sol";

contract MintBasicNft is Script{
    string  public constant LD = "ipfs://QmUnFyt31b4jdXF5pLQJ3H8753T6tgJ9cpheW7jsnVdVjG/?filename=LD.json";
    function run() external {
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment(
        "BasicNft",
        block.chainid
        );
        mintNftOnContract(mostRecentlyDeployed);
    }
    function mintNftOnContract(address contractAddress) public{
        vm.startBroadcast();
        BasicNft(contractAddress).mintNft(LD);
        vm.stopBroadcast();

    }

}