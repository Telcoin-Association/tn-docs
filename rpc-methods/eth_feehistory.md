---
description: Returns historical gas information, allowing you to track trends over time.
---

# eth\_feeHistory

#### Parameters

* `blockCount`: (integer) Number of blocks in the requested range. Between 1 and 1024 blocks can be requested in a single query. If blocks in the specified block range are not available, then only the fee history for available blocks is returned.
* `newestBlock`: (string) Integer representing the highest number block of the requested range, or one of the string tags `latest`, `earliest`, or `pending`.
* `array` of `integers`: (optional) A monotonically increasing list of percentile values to sample from each block's effective priority fees per gas in ascending order, weighted by gas used.

#### Returns

`oldestBlock`: `QUANTITY` - Lowest number block of the returned range expressed as a hexadecimal number.

`baseFeePerGas`: `Array of QUANTITY` - An array of block base fees per gas, including an extra block value. The extra value is the next block after the newest block in the returned range. Returns zeroes for blocks created before [EIP-1559](https://eips.ethereum.org/EIPS/eip-1559).

`gasUsedRatio`: `Array of QUANTITY` - An array of block gas used ratios. These are calculated as the ratio of `gasUsed` and `gasLimit`.

`reward`: `Array of QUANTITY` - An array of effective priority fee per gas data points from a single block. All zeroes are returned if the block is empty.

#### Example

```
// Request
curl -X POST --data '{"jsonrpc":"2.0","method":"eth_feeHistory","params":[
"0x5", "latest", [20, 30]
],"id":1}'
// Result
{
  "id":1,
  "jsonrpc": "2.0",
  "result": {
    baseFeePerGas: [ '0x7', '0x7', '0x7', '0x7', '0x7', '0x7' ],
    gasUsedRatio: [ 0, 0, 0, 0, 0 ],
    oldestBlock: '0x667017',
    reward: [ ["0x0","0x0"], ["0x0","0x0"],
      ["0x0","0x0"],["0x0","0x0"],
      ["0x0","0x0"] ]
  }
}
```

[source](https://docs.infura.io/api/networks/ethereum/json-rpc-methods/eth\_feehistory)
