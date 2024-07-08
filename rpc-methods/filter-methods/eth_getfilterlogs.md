---
description: Returns an array of all logs matching filter with given id.
---

# eth\_getFilterLogs

#### Parameters

`QUANTITY` - The filter id.

#### Returns

`Array` - Array of log objects, or an empty array if nothing has changed since last poll.

For filters created with `eth_newBlockFilter` the return are block hashes (`DATA`, 32 Bytes), e.g. `["0x3454645634534..."]`.

For filters created with `eth_newPendingTransactionFilter` the return are transaction hashes (`DATA`, 32 Bytes), e.g. `["0x6345343454645..."]`.

For filters created with `eth_newFilter` logs are objects with following params:

* `removed`: `TAG` - `true` when the log was removed, due to a chain reorganization. `false` if its a valid log.
* `logIndex`: `QUANTITY` - integer of the log index position in the block. `null` when its pending log.
* `transactionIndex`: `QUANTITY` - integer of the transactions index position log was created from. `null` when its pending log.
* `transactionHash`: `DATA`, 32 Bytes - hash of the transactions this log was created from. `null` when its pending log.
* `blockHash`: `DATA`, 32 Bytes - hash of the block where this log was in. `null` when its pending. `null` when its pending log.
* `blockNumber`: `QUANTITY` - the block number where this log was in. `null` when its pending. `null` when its pending log.
* `address`: `DATA`, 20 Bytes - address from which this log originated.
* `data`: `DATA` - contains zero or more 32 Bytes non-indexed arguments of the log.
* `topics`: `Array of DATA` - Array of 0 to 4 32 Bytes `DATA` of indexed log arguments. (In _solidity_: The first topic is the _hash_ of the signature of the event (e.g. `Deposit(address,bytes32,uint256)`), except you declared the event with the `anonymous` specifier.)

```
// Request
curl -X POST --data '{"jsonrpc":"2.0","method":"eth_getFilterLogs","params":["0xf87557e87762e8731d7dcb22649010f2"],"id":1}'
//Result
{
  "jsonrpc": "2.0",
  "error": {
    "code": -32602,
    "message": "filter not found"
  },
  "id": 1
}
```

[source](https://ethereum.org/en/developers/docs/apis/json-rpc/#eth\_getfilterlogs)
