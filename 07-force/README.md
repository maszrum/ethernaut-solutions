# Force

Use ``selfdestruct`` opcode to forcefully send eth to contract.

Type in the browser console:

```
> await getBalance(instance)
'0'
```

Use Remix to deploy contract with source code listed in file [contracts/DestroyMe.sol](./src/contracts/DestroyMe.sol). When deploying the contract send 1 Wei and pass level instance address into constructor as argument. When contract is deployed, call ``boom()`` function.

Type in the browser console:

```
> await getBalance(instance)
'0.000000000000000001'
```

Level finished.
