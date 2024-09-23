// SPDX-license-identifier: MIT

pragma solidity ^0.8.13;

import {ERC721} from "lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";

contract BasicNft is ERC721{
    uint256 private s_tokenCouter;
    mapping(uint => string) private  s_tokenidToUri;

    constructor() ERC721("Dogie","DOG") {
        s_tokenCouter = 0;
    }
    function minNft() public {}

    function tokenURI(uint256 tokenId) public view override returns(string memory ) {
    return s_tokenidToUri[tokenId];

    }
}