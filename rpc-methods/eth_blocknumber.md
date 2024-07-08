---
description: Returns the current latest block number.
---

# eth\_blockNumber

#### Parameters

`None`

#### Returns

`QUANTITY` - A hexadecimal of an integer representing the current block number the client is on.

#### Example

```
// Request
curl -X POST --data '{"jsonrpc":"2.0","method":"eth_blockNumber","params":[],"id":83}'
// Result
{
  "id":83,
  "jsonrpc": "2.0",
  "result": "0x4b7" // 1207
}
```

[source](https://ethereum.org/en/developers/docs/apis/json-rpc/#eth\_blocknumber)

