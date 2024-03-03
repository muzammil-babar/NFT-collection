// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NFTee is ERC721 {

    constructor() ERC721("Halal NFTs", "Halal") {

        // mint 1 nft to myself
        _mint(msg.sender, 1);
        _mint(msg.sender, 2);
    }
    // create an ERC 721 contract
    // mint some NFTs for myself.
}