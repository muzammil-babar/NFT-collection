// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

contract Token {
    //name of the token
    string public name='Hardhat Token';

    // symbol of the token
    string public symbol='HHT';

    //the total supply of token produced
    uint public totalSupply = 10000;

    // who is the owner
    address public owner;

    //noting the address of the person and who has how much
    mapping(address=> uint) balances;

    constructor(){
        balances[msg.sender]=totalSupply;
        owner=msg.sender;
    }

    function transfer(address to, uint amount) external {
        require(balances[msg.sender] >=amount, "Not enough tokens!");
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function balanceOf(address account) external view returns(uint ){
        return balances[account];
    }
}