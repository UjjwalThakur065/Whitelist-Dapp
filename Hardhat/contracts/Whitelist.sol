// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Whitelist {

    uint8 public maxWhitelistedAddresses;

    mapping(address => bool) public whitelistedAddresses;

    uint8 public  numAddressesWhitelisted;

    constructor(uint8 _maxWhitelistedAddresses) {
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }

    function addAddressToWhitelist() public {
        require(numAddressesWhitelisted < maxWhitelistedAddresses,
        'No more address can be whitelisted');

        require(!whitelistedAddresses[msg.sender],
        'You are already whitelisted');
         
         whitelistedAddresses[msg.sender] = true;

         numAddressesWhitelisted = numAddressesWhitelisted + 1;
    }
}

// Whitelist contract address: 0x78F5cB24a9f769BE237aeD324304cf983C2eF67C