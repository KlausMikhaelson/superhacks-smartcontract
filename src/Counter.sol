// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/openzeppelin-contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/openzeppelin-contracts/access/Ownable.sol";

contract MyNFT is ERC721, Ownable {
    uint256 public nextTokenId;
    address public admin;

    constructor() ERC721('MyNFT', 'NFT') {
        admin = msg.sender;
    }

    function mint(address to) external onlyOwner {
        _safeMint(to, nextTokenId);
        nextTokenId++;
    }
}