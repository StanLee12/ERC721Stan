// contracts/GameItem.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract StanNFT is ERC721URIStorage {
  using Counters for Counters.Counter;
  Counters.Counter private _tokenIds;

  constructor() ERC721("Stan", "Lee") {}

  function publish(address author, string memory tokenURI)
    public
    returns (uint256)
  {
    _tokenIds.increment();

    uint256 newItemId = _tokenIds.current();
    _mint(author, newItemId);
    _setTokenURI(newItemId, tokenURI);

    return newItemId;
  }

  function countTokenIds() public view returns (uint256) {
    return _tokenIds.current();
  }
}
