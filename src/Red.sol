// SPDX-License-Identifier: CAL
pragma solidity ^0.8.20;

import {Colour, ERC20} from "./Colour.sol";

contract Red is Colour {
    constructor() ERC20("Red", "RED") {}
}