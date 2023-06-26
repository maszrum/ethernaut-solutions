// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import '../interfaces/ITelephone.sol';

contract TelephoneProxy is ITelephone {

    ITelephone telephone;

    constructor(address _telephoneAddress) {
        telephone = ITelephone(_telephoneAddress);
    }

    function changeOwner(address _owner) public {
        telephone.changeOwner(_owner);
    }

}
