# Re-entrancy

Type in the browser console:

```
> web3.utils.toWei(await getBalance(instance))
'1000000000000000'
```

Use Remix to deploy a contract with source code listed in [interfaces/IReentrance.sol](./src/interfaces/IReentrance.sol) and [contracts/ReentranceHack.sol](./src/contracts/ReentranceHack.sol). Pass level contract address to the constructor when deploying the contract. Call ``steal()`` method with 1000000000000000 Wei.

Type in the browser console:

```
web3.utils.toWei(await getBalance(instance))
'0'
```

Level completed.
