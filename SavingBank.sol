// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 < 0.9;

contract PersonalSavingsBank {
// Mapping to store balance of each customer (address)
mapping(address =>uint) private balances;

//Event logs
event Deposit(address indexed account, uint amount);
event Withdraw(address indexed account, uint amount);

//Deposit money into your account
function deposit() public payable{
require(msg.value > 0, "Deposit amount must be greater than 0");
balances[msg.sender] += msg.value;
emit Deposit(msg.sender, msg.value); 
}

// Withdraw Money from ur account 
function withdraw(uint amount) public {
    require(amount>0, "Withdraw amount must be grater than 0");
    require(balances[msg.sender] >= amount, "Insufficient balance");
    balances[msg.sender] -= amount;
    payable(msg.sender).transfer(amount);
    emit Withdraw(msg.sender,amount);
}

//Show your account balance
function getBalance() public view returns (uint256) {
    return balances[msg.sender];
}
}

