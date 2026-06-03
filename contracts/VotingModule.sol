// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title Voting Module
contract VotingModule {
    address public admin;
    mapping(bytes32 => uint256) public votes;

    constructor() {
        admin = msg.sender;
    }

    function vote(bytes32 proposalId, uint256 weight) external {
        votes[proposalId] += weight;
    }

    function getVotes(bytes32 proposalId) external view returns (uint256) {
        return votes[proposalId];
    }
}