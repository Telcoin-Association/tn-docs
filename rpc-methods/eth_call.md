---
description: >-
  Executes a new message call immediately without creating a transaction on the
  block chain. Often used for executing read-only smart contract functions, for
  example the balanceOf for an ERC-20 contract
---

# eth\_call

#### Parameters

`from`: `DATA`, 20 bytes - (optional) The address the transaction is sent from.

`to`: `DATA`, 20 bytes - The address the transaction is directed to.

`gas`: `QUANTITY` - (optional) Hexadecimal value of the gas provided for the transaction execution. `eth_call` consumes zero gas, but this parameter may be needed by some executions.

`gasPrice`: `QUANTITY` - (optional) Hexadecimal value of the `gasPrice` used for each paid gas.

`? maxPriorityFeePerGas`: `QUANTITY` - Maximum fee, in Wei, the sender is willing to pay per gas above the base fee.

`? maxFeePerGas`: `QUANTITY` - Maximum total fee (base fee + priority fee), in Wei, the sender is willing to pay per gas.

`value`: `QUANTITY` - Hexadecimal of the value sent with this transaction.

`data`: `DATA` - (optional) Hash of the method signature and encoded parameters. See [Ethereum contract ABI specification](https://docs.soliditylang.org/en/latest/abi-spec.html).

`block parameter`: `QUANTITY|TAG` \[_Required_] - A hexadecimal block number, or one of the string tags `latest`, `earliest`, `pending`, `safe`, or `finalized`. See the [default block parameter](https://ethereum.org/en/developers/docs/apis/json-rpc/#default-block).

#### Returns

`DATA`, the return value of the executed contract

#### Example

```
// Request
curl -X POST --data '{"jsonrpc":"2.0","method":"eth_call","params":[{
          from: "0xb60e8dd61c5d32be8058bb8eb970870f07233154",
          to: "0xd46e8dd67c5d32be8058bb8eb970870f07244566",
          gas: "0x76c0",
          gasPrice: "0x0",
          value: "0x0",
          data: "0xd46e8dd67c5d32be8d46e8dd67c5d32be8058bb8eb970870f072445675058bb8eb970870f072445695",
        },
        "latest"],"id":1}'
// Result
{
  "id":1,
  "jsonrpc": "2.0",
  "result": "0x"
}
```

[source](https://ethereum.org/en/developers/docs/apis/json-rpc/#eth\_call)
