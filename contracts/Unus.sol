// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Unus {
    uint8 maxNumAllowedAddresses;

    mapping(address => bool) public allowedAddresses;

    uint8 public numAddressesWhitelisted;

    constructor(uint8 _maxNumAllowedAddresses) {
        maxNumAllowedAddresses = _maxNumAllowedAddresses;
    }

    function addToAllowed() public {
        require(
            numAddressesWhitelisted < maxNumAllowedAddresses,
            "maximum number is reached"
        );
        require(!allowedAddresses[msg.sender], "already allowed");

        allowedAddresses[msg.sender] = true;
        numAddressesWhitelisted++;
    }
}
