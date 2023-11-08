// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract Contract { 
    uint public balance;


    constructor(){
        balance = 0;
    }

    //require functions being used for depositing and withdrawing amounts 
    function deposit(uint amount) public {
        require(amount > 0 , "Deposit amount cannot be lower than 0"); 
        balance += amount;
        assert (amount < 101);
        
    }

    function withdraw(uint amount) public {
        require(amount > 0 , "Withdrawal Amount must be more than 0"); 
        if (balance < amount){
            revert("Insufficient Balance");
        } else { balance -= amount;
          } 
    }
}

