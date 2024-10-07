// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import {ERC721} from "lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";
import {BASE64} from  "lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";

contract MoodNft is ERC721 {
    uint256 private s_tokenCounter;
    string private s_sadSvg;
    string private s_happySvg;

    constructor(string memory sadSvg, string memory happySvg) 
        ERC721("Mood NFT", "MN") // Mover la llamada al constructor de ERC721 aquí
    {
        s_tokenCounter = 0;
        s_sadSvg = sadSvg; 
        s_happySvg = happySvg;     
        }

    function mintNft(bool isHappy) public {
        _safeMint(msg.sender, s_tokenCounter);
        s_tokenCounter++;
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        string memory tokenMetadata = string.concat(arg);('{"name": "', name(),'" "description"');

    }
}
