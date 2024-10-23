// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.18;

import {TimelockController} from "openzeppelin-contracts/contracts/governance/extensions/GovernorTimelockControl.sol";

contract TimeLock is TimelockController {
    
    // how long to wai tbefore executing
    // proposers is the list of addresses that can propose
    // executors is the list of addresses that can execute
    constructor(uint256 minDelay, address[] memory proposers, address[] memory executors)
    TimelockController(minDelay, proposers, executors, msg.sender)
    {}
}
