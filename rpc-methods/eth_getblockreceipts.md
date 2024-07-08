---
description: >-
  Returns all transaction receipts for a given block, the amount of gas used,
  and any event logs that might have been produced by a smart contract during
  the transaction.
---

# eth\_getBlockReceipts

#### Parameters

`blockNumber`: `QUANTITY|TAG` \[_Required_] - Hexadecimal representing a block number, or one of the string tags: `"latest"` ,  `"earliest"`, `"finalized"`, `"safe".`

#### Returns

`result`: `OBJECT` - Block object or `null` when there is no corresponding block.

#### Example

```
// Request
curl -X POST --data '{"jsonrpc":"2.0","method":"eth_getBlockReceipts","params":["0x3FE51"],"id":1}'
// Result
{
      "transactionHash": "0x82756da4e315a0135c3a10bf056af829e9c0270c3fd2127791dd2498cf577111",
      "transactionIndex": "0x0",
      "blockHash": "0x8e69cf10fe1b0dbb7213406f58ea99904b685532d7c3604d3e1be9684bda6d4f",
      "blockNumber": "0x3fe51",
      "cumulativeGasUsed": "0xe9994",
      "gasUsed": "0xe9994",
      "effectiveGasPrice": "0x17bfac7c00",
      "from": "0xdec366b889a53b93cfa561076c03c18b0b4d6c93",
      "to": null,
      "contractAddress": "0xf9d26a8da3fccf2c65ab6ee19bf35aa08a0326d6",
      "logs": [
        {
          "address": "0xf9d26a8da3fccf2c65ab6ee19bf35aa08a0326d6",
          "topics": [
            "0xc7f505b2f371ae2175ee4913f4499e1f2633a7b5936321eed1cdaeb6115181d2"
          ],
          "data": "0x000000000000000000000000000000000000000000000000ffffffffffffffff",
          "blockHash": "0x8e69cf10fe1b0dbb7213406f58ea99904b685532d7c3604d3e1be9684bda6d4f",
          "blockNumber": "0x3fe51",
          "transactionHash": "0x82756da4e315a0135c3a10bf056af829e9c0270c3fd2127791dd2498cf577111",
          "transactionIndex": "0x0",
          "logIndex": "0x0",
          "removed": false
        }
      ],
      "logsBloom": "0x00000000000000000000000000000000000000000000006000000000000000000000000000000000000002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000000000000000000000080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      "status": "0x1",
      "type": "0x0"
    }
  ],
  "id": 1
}
```

[source](https://docs.infura.io/api/networks/ethereum/json-rpc-methods/eth\_getblockreceipts)
