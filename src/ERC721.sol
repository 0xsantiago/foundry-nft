// SPDX-license-identifier: MIT

pragma solidity ^0.8.13;


import"@openzeppelin/contract/token/ERC721/ERC721.sol";

contract BasicNft is ERC721{
    uint private s_tokenCounter;

    constructor() ERC721("Dogie", "DOG"){
        s_tokenCounter = 0;
    }
}