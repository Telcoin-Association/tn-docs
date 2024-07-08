---
description: Returns the balance of the account of given address.
---

# eth\_getBalance

#### Parameters

* `DATA`, 20 Bytes - address to check for balance.
* `QUANTITY|TAG` - integer block number, or the string `"latest"`, `"earliest"`, `"pending"`, `"safe"`, or `"finalized"`, see the [default block parameter](https://ethereum.org/en/developers/docs/apis/json-rpc/#default-block)

#### Returns

`QUANTITY` - A hexadecimal of the current account balance in wei.

#### Example

```
// Request
curl -X POST --data '{"jsonrpc":"2.0","method":"eth_getBalance","params":["0x407d73d8a49eeb85d32cf465507dd71d507100c1", "latest"],"id":1}'
// Result
{
  "id":1,
  "jsonrpc": "2.0",
  "result": "0x0234c8a3397aab58" // 158972490234375000
}
```

[source](https://ethereum.org/en/developers/docs/apis/json-rpc/#eth\_getbalance)
