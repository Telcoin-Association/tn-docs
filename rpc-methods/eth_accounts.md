---
description: Returns a list of addresses owned by client
---

# eth\_accounts

#### Parameters

`None`

#### Returns

`Array of DATA`, 20 Bytes - addresses owned by the client.

#### Example

```
// Request
curl -X POST --data '{"jsonrpc":"2.0","method":"eth_accounts","params":[],"id":1}'
// Result
{
  "id":1,
  "jsonrpc": "2.0",
  "result": ["0x7e1Fde4A921397A7284570581aC41d827A712E8a"]
}
```

[source](https://ethereum.org/en/developers/docs/apis/json-rpc/#eth\_accounts)
