// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IReentrance {

    function donate(address _to) external payable;
    function balanceOf(address _who) external returns (uint balance);
    function withdraw(uint _amount) external;

}
