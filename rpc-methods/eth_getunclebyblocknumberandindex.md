---
description: >-
  Returns information about a uncle of a block given the block number and the
  uncle index position.
---

# eth\_getUncleByBlockNumberAndIndex

#### Parameters

`QUANTITY|TAG` - a block number, or the string `"earliest"`, `"latest"`, `"pending"`, `"safe"`, `"finalized"`, as in the [default block parameter](https://ethereum.org/en/developers/docs/apis/json-rpc/#default-block).

`QUANTITY` - the uncle's index position.

#### Returns

`Object` - A block object, or `null` when no block was found:

* `number`: `QUANTITY` - the block number. `null` when its pending block.
* `hash`: `DATA`, 32 Bytes - hash of the block. `null` when its pending block.
* `parentHash`: `DATA`, 32 Bytes - hash of the parent block.
* `nonce`: `DATA`, 8 Bytes - hash of the generated proof-of-work. `null` when its pending block.
* `sha3Uncles`: `DATA`, 32 Bytes - SHA3 of the uncles data in the block.
* `logsBloom`: `DATA`, 256 Bytes - the bloom filter for the logs of the block. `null` when its pending block.
* `transactionsRoot`: `DATA`, 32 Bytes - the root of the transaction trie of the block.
* `stateRoot`: `DATA`, 32 Bytes - the root of the final state trie of the block.
* `receiptsRoot`: `DATA`, 32 Bytes - the root of the receipts trie of the block.
* `miner`: `DATA`, 20 Bytes - the address of the beneficiary to whom the mining rewards were given.
* `difficulty`: `QUANTITY` - integer of the difficulty for this block.
* `totalDifficulty`: `QUANTITY` - integer of the total difficulty of the chain until this block.
* `extraData`: `DATA` - the "extra data" field of this block.
* `size`: `QUANTITY` - integer the size of this block in bytes.
* `gasLimit`: `QUANTITY` - the maximum gas allowed in this block.
* `gasUsed`: `QUANTITY` - the total used gas by all transactions in this block.
* `timestamp`: `QUANTITY` - the unix timestamp for when the block was collated.
* `transactions`: `Array` - Array of transaction objects, or 32 Bytes transaction hashes depending on the last given parameter.
* `uncles`: `Array` - Array of uncle hashes.

#### Example

```
// Request
curl -X POST --data '{"jsonrpc":"2.0","method":"eth_getUncleByBlockNumberAndIndex","params":["0x29c", "0x0"],"id":1}'
```

[source](https://ethereum.org/en/developers/docs/apis/json-rpc/#eth\_getunclebyblocknumberandindex)
