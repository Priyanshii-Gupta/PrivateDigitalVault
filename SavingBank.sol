// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 < 0.9;

contract PrivateVault {
    address public owner=msg.sender;

//Event logs
event Deposited(address indexed account, uint amount);
event Withdraw(address indexed account, uint amount);

//Deposit money into your account
function deposit() public payable{
require(msg.value > 0, "Deposit amount must be greater than 0");
emit Deposit(msg.sender, msg.value); 
}


// Shows how much ETH the vault currently has
function getBalance() public view returns (uint256) {
        return address(this).balance
}


// Withdraw Money from ur account 
function withdraw(uint amount) public {
require(msg.sender == owner, "Only owner can withdraw");  
require(amount <= address(this).balance, "Insufficient contract balance");
 payable(owner).transfer(amount);
emit Withdraw(owner, amount);
}
}
