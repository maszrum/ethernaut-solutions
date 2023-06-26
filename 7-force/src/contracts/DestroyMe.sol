// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract DestroyMe {

    address payable receiverAddress;

    constructor(address payable _receiverAddress) payable {
        receiverAddress = _receiverAddress;
    }

    function boom() public {
        selfdestruct(receiverAddress);
    }

}
