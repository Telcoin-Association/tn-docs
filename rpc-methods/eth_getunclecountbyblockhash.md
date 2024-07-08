---
description: >-
  Returns the number of uncles in a block from a block matching the given block
  hash.
---

# eth\_getUncleCountByBlockHash

#### Parameters

`DATA`, 32 Bytes - hash of a block

#### Returns

`QUANTITY` - integer of the number of uncles in this block.

#### Example

```
// Request
curl -X POST --data '{"jsonrpc":"2.0","method":"eth_getUncleCountByBlockHash","params":["0x908539f74911930cb0e7201a43dbcce8743a58f1d49e2bc271159fab3c6cb8fb"],"id":1}'
```

[source](https://ethereum.org/en/developers/docs/apis/json-rpc/#eth\_getunclecountbyblockhash)
