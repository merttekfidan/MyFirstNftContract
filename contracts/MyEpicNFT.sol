// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

import "hardhat/console.sol";

contract MyEpicNFT is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721 {
        console.log("This is my first NFT Contract !!!");
    }

    function makeAnEpicNFT() public {
        uint256 newItemId = _tokenIds.current();
        _safeMint(msg.sender, newItemId);

        _setTokenURI(newItemId, "Blah");

        _tokensId.increment();
    }
}
