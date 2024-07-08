---
description: Returns information about a block by hash.
---

# eth\_getBlockByHash



#### Parameters

* `DATA`, 32 Bytes - Hash of a block.
* `Boolean` - If `true` it returns the full transaction objects, if `false` only the hashes of the transactions.

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
curl -X POST --data '{"jsonrpc":"2.0","method":"eth_getBlockByHash","params":["0x5fb9fff1f0f914360abfefb0eac9c7d4fc733007c62c7caf1860d4052776b7d7", false],"id":1}'
// Result
{
  "jsonrpc": "2.0",
  "result": {
    "hash": "0x5fb9fff1f0f914360abfefb0eac9c7d4fc733007c62c7caf1860d4052776b7d7",
    "parentHash": "0xdaf2bac916ac308e3f5eb077570a24aba29e951ce7306eae52b3e11ba1a7394f",
    "sha3Uncles": "0x1dcc4de8dec75d7aab85b567b6ccd41ad312451b948a7413f0a142fd40d49347",
    "miner": "0x3333333333333333333333333333333333333333",
    "stateRoot": "0x9bfa443af733083d3c0eb602112b393683f405cb29b670741b65cb70ea858255",
    "transactionsRoot": "0x47bfe0736bb49e246b2aacec935e632885ec2a6067b11d657637646f391251a7",
    "receiptsRoot": "0x5b6c99267f9131834e759cff4f9d3c16568c844ee89fe6f192c149537648b075",
    "logsBloom": "0x00200000040000000000000280000028000000000000000000000000000000000000000002000000000000000000000000000000000000000000000000000000000000000000000000000008000000200000000000000000000000000000000400000000020000000010000002000800000000000000000000000010000000400000000000000000000000000000000000000000000000080000004000000000000100000000000000000000000040200100000000000000000020000000000000000002000000000000200000000000000000000000001000000000000020000080000000020000000000000000000000000000000000000001000000000000",
    "difficulty": "0x0",
    "number": "0x608eed",
    "gasLimit": "0x1c9c380",
    "gasUsed": "0x1d30a",
    "timestamp": "0x667b285d",
    "extraData": "0x",
    "mixHash": "0x0000000000000000000000000000000000000000000000000000000000000000",
    "nonce": "0x0000000000000000",
    "baseFeePerGas": "0x7",
    "totalDifficulty": "0x0",
    "uncles": [],
    "transactions": [
      "0x7e7e6d8a61ff36ab337b42b6ed2edf34761f928a110aba857aae97121d35371b"
    ],
    "size": "0x378"
  },
  "id": 1
}
```

[source](https://ethereum.org/en/developers/docs/apis/json-rpc/#eth\_getblockbyhash)
