# eth-todo-list
A todo list which uses blockchain to store data!

## To run
1. Run `npm install`.
2. Install [Ganache](https://www.trufflesuite.com/ganache) and run it.
3. Set up [MetaMask](https://metamask.io/download.html) account by installing the MetaMask extension on Chrome creating a new account with your Ganache private key and network `http://127.0.0.1:7545`.
4. Run `truffle migrate --reset`.
5. Run `npm run dev`.
6. Add tasks and authorize transactions! Don't worry, it's not your real money :)

## To develop
Key commands to development:
- `truffle migrate --reset` must be run whenever you add new functionality to your smart contract.
- `truffle test` to run tests.
- `truffle compile` to compile your solidity code.
- `truffle console` to run the console.
