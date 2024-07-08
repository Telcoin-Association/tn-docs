---
description: >-
  Returns the account and storage values, including the Merkle proof, of the
  specified account.
---

# eth\_getProof

#### Parameters

`address`: A string representing the address (20 bytes) to check for balance.

`storageKeys`: An array of 32-byte storage keys to be proofed and included.

`blockParameter`: A hexadecimal block number, or one of the string tags `latest`, `earliest`, `pending`, `safe`, or `finalized`. See the [default block parameter](https://ethereum.org/en/developers/docs/apis/json-rpc/#default-block).

#### Example

```
// Request
curl -X POST --data '{"jsonrpc":"2.0","method":"eth_getProof","params":[
        "0x4392743B97C46c6Aa186A7f3D0468fbF177ee70F",
        ["0x86386409a65c1a7f963bc51852fa7ecbdb9cad2cec464de22ee4591e1622b46b"],
        "latest"]
        ,"id":1}'
// Result
{
  "jsonrpc": "2.0",
  "error": {
    "code": -32603,
    "message": "internal blocking task error"
  },
  "id": 1
}
```

[source](https://docs.infura.io/api/networks/ethereum/json-rpc-methods/eth\_getproof)
