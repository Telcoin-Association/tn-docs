---
description: Returns the number of transactions in a block matching the given block number.
---

# eth\_getBlockTransactionCountByNumber

#### Parameters

`QUANTITY|TAG` - Hexadecimal representing a block number, or the string `"earliest"`, `"latest"`,  `"safe"` or `"finalized"`

#### Returns

`QUANTITY` - Hexadecimal representing the number of transactions in this block.

#### Example

```
// Request
curl -X POST --data '{"jsonrpc":"2.0","method":"eth_getBlockTransactionCountByNumber","params":["0x608EED"],"id":1}'
// Result
{
  "id":1,
  "jsonrpc": "2.0",
  "result": "0x1" // 1
}
```

[source](https://ethereum.org/en/developers/docs/apis/json-rpc/#eth\_getblocktransactioncountbynumber)
