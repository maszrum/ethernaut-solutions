# King

Type in the browser console:

```
> await contract._king() == level
true
```

Check what is the current prize:

```
> web3.utils.toNumber(await contract.prize())
1000000000000000
```

Use Remix to deploy contract with source code listed in file [contracts/IrreplaceableKing.sol](./src/contracts/IrreplaceableKing.sol). When deploying the contract send 1000000000000000 Wei and pass level contract address. Call contract's function named `becomeKing()`.

```
> await contract._king() == level
false
```

Contract has fallback function with ``revert()`` as body, so it should reject all Eth transactions.

Level finished.
