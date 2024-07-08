---
description: Returns number of peers currently connected to the client.
---

# net\_peerCount

#### Parameters

`None`

#### Returns

`QUANTITY` - integer of the number of connected peers.

#### Example

```
// Request
curl -X POST --data '{"jsonrpc":"2.0","method":"net_peerCount","params":[],"id":1}'
// Result
{
    "id":1,
    "jsonrpc": "2.0",
    "result": "0x0" // 0
}
```

[source](https://ethereum.org/en/developers/docs/apis/json-rpc/#net\_version)
