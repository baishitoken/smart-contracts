// SPDX-License-Identifier: MIT
// Using OpenZeppelin Contracts v4.8 (compatible with Solidity 0.8.19)
pragma solidity 0.8.19;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.0/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.0/contracts/token/ERC20/extensions/ERC20Permit.sol";

/// @custom:security-contact security@baishi.ai
contract BAISHI is ERC20, ERC20Burnable, ERC20Permit {
    constructor(address recipient)
        ERC20("BAISHI", "BAISHI")
        ERC20Permit("BAISHI")
    {
        _mint(recipient, 1500000000 * 10 ** decimals());
    }
}
