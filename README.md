# MC_ETH project.sol

This is a program in Solidity that demonstrates a minting and burning of a coin in the Solidity language. This serves as a demonstration as well as a submission to the assesment to MetaCrafters.
## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has multiple functions. Namely mint and burn. 
Mint adds on to the total supply of coins and burn takes away to the total supply.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. 
Save the file with a .sol extension. Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract MyToken {

    // public variables here
    string public tokenName = "OniCoin"; 
    string public tokenAbbrev = "OC"; 
    uint totalSupply = 0;

    // mapping variable here
    mapping(address => uint) public balances; 

    // mint function
    function mint (address _address, uint _value) public{
        totalSupply += _value; 
        balances[_address] += _value;


    }

    // burn function
        function burn (address _address, uint _value) public{
        if (balances[_address]>= _value){
            totalSupply -= _value; 
            balances[_address] -= _value;
        }
    }
}
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile HelloWorld.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the contract with the same name of the file you have just compiled (e.g if your file has the name "HelloWorld.sol" the option to click should be "HelloWorld") from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the burn, mint, balances, tokenAbbrev, and tokenName functions. 

For this to be able to work you have to first copy the account address that is written in the account box in the same page and paste it onto the box in either mint, burn, or balances that ask for the address.

Upon doing that you can click on the "mint" function and add to your value by entering a number in the box that says "_value" and click transact to add to the total supply and similarly to the "burn" function to take away from the total supply of tokens. 

To view your balances all you would have to do is to put your address in the text box that asks for your address and click the "call button. 

To view the token abbreviation and name all you would have to do is to click on tokenAbbrev or tokenName respectively to get the abbreviation and name.


## Authors

Contributors names and contact info
Gavinno Othello C. Angeles
email me at: 201911104@fit.edu.ph


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
