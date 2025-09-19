---
description: Returns code at a given address.
---

# eth\_getCode

#### Parameters

`DATA`, 20 Bytes - Address

`QUANTITY|TAG` - Hexadecimal integer block number, or the string `"latest"`, `"earliest"`, `"safe"` or `"finalized"`, see the [default block parameter](https://ethereum.org/en/developers/docs/apis/json-rpc/#default-block)

#### Returns

`DATA` - The code from the given address.

#### Example

#### Request

```
curl https://rpc.adiri.tel \
 -X POST \
 -H "Content-Type: application/json" \
 --data '{"jsonrpc":"2.0","method":"eth_getCode","params":["0x5eb15fedcca9cb9c5424167e329fd56905ffe0e3", "latest"],"id":1}'
```

#### Result

```
{
  "id":1,
  "jsonrpc": "2.0",
  "result": ""0x60806040526004361061014f57600...""
}
```

[source](https://ethereum.org/en/developers/docs/apis/json-rpc/#eth\_getcode)
