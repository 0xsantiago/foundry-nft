// SPDX-license-identifier: MIT
pragma solidity ^0.8.13;

import {Test} from "lib/forge-std/src/Test.sol";
import {DeployBasicNft} from "script/DeployBasicNft.s.sol";
import {BasicNft} from "../src/BasicNft.sol";

contract BasicNftTest is Test {
    DeployBasicNft public deployer;
    BasicNft public basicNft;
    address public USER = makeAddr("user");
    string  public constant LD = "ipfs://QmUnFyt31b4jdXF5pLQJ3H8753T6tgJ9cpheW7jsnVdVjG/?filename=LD.json";

    function setUp() public {
        deployer = new DeployBasicNft();
        basicNft = deployer.run();

    }

    function testNameIsCorrect() public view {
        string memory expectedName = "LD";
        string memory actualName = basicNft.name();
        //assert(expectedName == actualName);
        assert(
            keccak256(abi.encodePacked(expectedName))  ==
                keccak256(abi.encodePacked(actualName))
        );

    }

    function testCanMintAndHaveAbalance() public {
        vm.prank(USER);
        basicNft.mintNft(LD);

        assert(basicNft.balanceOf(USER) == 1);
        assert(keccak256(abi.encodePacked(LD)) == keccak256(abi.encodePacked(basicNft.tokenURI(0))));

    }
}