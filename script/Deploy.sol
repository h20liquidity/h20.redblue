// SPDX-License-Identifier: CAL
pragma solidity =0.8.20;

import {Script} from "forge-std/Script.sol";
import {Red} from "../Red.sol";
import {Blue} from "../Blue.sol";

/// @title Deploy
/// @notice A script that deploys all contracts.
contract Deploy is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("DEPLOYMENT_KEY");

        vm.startBroadcast(deployerPrivateKey);

        new Red();
        new Blue();

        vm.stopBroadcast();
    }
}