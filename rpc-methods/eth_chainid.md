---
description: Returns the chain ID used for signing replay-protected transactions.
---

# eth\_chainId

#### Parameters

`None`

#### Returns

`chainId` - hexadecimal value as a string representing the integer of the current chain id.

#### Example

```
// Request
curl -X POST --data '{"jsonrpc":"2.0","method":"eth_chainId","params":[],"id":62}'
// Result
{
  "id":67,
  "jsonrpc": "2.0",
  "result": "0x7e1"
}
```

[source](https://ethereum.org/en/developers/docs/apis/json-rpc/#eth\_chainid)
