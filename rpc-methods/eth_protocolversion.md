---
description: Returns the current Telcoin Network protocol version.
---

# eth\_protocolVersion

#### Parameters

`None`

#### Returns

`String` - Hexadecimal representing the current Telcoin Network protocol version

#### Example

```
// Request
curl -X POST --data '{"jsonrpc":"2.0","method":"eth_protocolVersion","params":[],"id":67}'
// Result
{
  "id":67,
  "jsonrpc": "2.0",
  "result": "0x5"
}
```

[source](https://ethereum.org/en/developers/docs/apis/json-rpc/#eth\_protocolversion)
