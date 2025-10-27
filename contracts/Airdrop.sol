// contracts/Airdrop.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IERC20 {
    function transfer(address to, uint256 value) external returns (bool);
}

contract Airdrop {
    function send(address token, address[] calldata users, uint256 amount) external {
        for (uint256 i = 0; i < users.length; i++) {
            IERC20(token).transfer(users[i], amount);
        }
    }
}
