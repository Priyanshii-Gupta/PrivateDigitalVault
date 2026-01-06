# PrivateDigitalVault

## Description
Solidity smart contract made to understand how a vault works on Ethereum.
People can send ETH to the contract, and only the owner can take ETH out.

## Use
Anyone can deposit ETH
The contract stores ETH
Only the owner can withdraw ETH
The owner cannot withdraw more ETH than the contract balance

## Functions
deposit() : Used to send ETH to the contract. It deposits amount which must be greater than 0.
getBalance() : Shows how much ETH is currently stored in the contract
withdraw(uint amount) : Only the owner can call this. It helps withdraw a specific amount of ETH and fails if amount is more than available balance

## Ownership Logic
The owner is set as the address that deploys the contract. Only this address can withdraw ETH from the vault. No one else is then allowed to withdraw money from the vault.

## Tools Used
Solidity
Remix- Ethereum IDE

## Reference 
youtube tutorials on solidity
youtube tutorial on private digital vault
