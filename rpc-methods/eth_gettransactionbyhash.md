---
description: Returns the information about a transaction requested by transaction hash.
---

# eth\_getTransactionByHash

#### Parameters

`DATA`, 32 Bytes - hash of a transaction

#### Returns

`Object` - A transaction object, or `null` when no transaction was found:

* `blockHash`: `DATA`, 32 Bytes - hash of the block where this transaction was in. `null` when its pending.
* `blockNumber`: `QUANTITY` - block number where this transaction was in. `null` when its pending.
* `from`: `DATA`, 20 Bytes - address of the sender.
* `gas`: `QUANTITY` - gas provided by the sender.
* `gasPrice`: `QUANTITY` - gas price provided by the sender in Wei.
* `hash`: `DATA`, 32 Bytes - hash of the transaction.
* `input`: `DATA` - the data send along with the transaction.
* `nonce`: `QUANTITY` - the number of transactions made by the sender prior to this one.
* `to`: `DATA`, 20 Bytes - address of the receiver. `null` when its a contract creation transaction.
* `transactionIndex`: `QUANTITY` - integer of the transactions index position in the block. `null` when its pending.
* `value`: `QUANTITY` - value transferred in Wei.
* `v`: `QUANTITY` - ECDSA recovery id
* `r`: `QUANTITY` - ECDSA signature r
* `s`: `QUANTITY` - ECDSA signature s

#### Example

```
// Request
curl -X POST --data '{"jsonrpc":"2.0","method":"eth_getTransactionByHash","params":["0xbd3a14fcf09f3f9e5ca951f2bfedbc7237fe1cd0d68673231f1333eed801830d"],"id":1}'
// Result
{
  "jsonrpc": "2.0",
  "result": {
    "hash": "0xbd3a14fcf09f3f9e5ca951f2bfedbc7237fe1cd0d68673231f1333eed801830d",
    "nonce": "0x2ba",
    "blockHash": "0x908539f74911930cb0e7201a43dbcce8743a58f1d49e2bc271159fab3c6cb8fb",
    "blockNumber": "0x6038c1",
    "transactionIndex": "0x0",
    "from": "0x3da87b1c3743bd2da60df2ef1bc6f26ef9da6086",
    "to": "0x5eb15fedcca9cb9c5424167e329fd56905ffe0e3",
    "value": "0x121782564b00000",
    "gasPrice": "0xb2d05e07",
    "gas": "0x29810",
    "input": "0x7ff36ab5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000000000000000000000003da87b1c3743bd2da60df2ef1bc6f26ef9da608600000000000000000000000000000000000000000000000000000000667ab007000000000000000000000000000000000000000000000000000000000000000200000000000000000000000080d1f6dafc9c13e9d19aedf75e3c1e2586d4a2a5000000000000000000000000a2c07c15173c183771ffad40c2e972f97e0bce64",
    "r": "0xfe383e41c568fdfd569c910598b51654e0869cb9a01fe6867c6281aa2ef070b1",
    "s": "0xac20158ff00add9d35d448249b48a35b5bb04a87fb39dccc05bf653ef0aa7",
    "v": "0xfe5",
    "chainId": "0x7e1",
    "type": "0x0"
  },
  "id": 1
}
```

[source](https://ethereum.org/en/developers/docs/apis/json-rpc/#eth\_gettransactionbyhash)
