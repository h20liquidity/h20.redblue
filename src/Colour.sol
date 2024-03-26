// SPDX-License-Identifier: CAL
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

abstract contract Colour is ERC20 {
    function mint() public {
        _mint(msg.sender, 1e18);
    }

    fallback() external {
        mint();
    }
}