# eth\_newBlockFilter

Creates a filter in the node, to notify when a new block arrives. To check if the state has changed, call [eth\_getFilterChanges](eth\_getfilterchanges.md).

#### Parameters

`None`

#### Returns

`QUANTITY` - A filter id.

#### Example

```
// Request
curl -X POST --data '{"jsonrpc":"2.0","method":"eth_newBlockFilter","params":[],"id":73}'
// Result
{
  "jsonrpc": "2.0",
  "result": "0x6f3ccb09d7153d2bba6b59f8f0ede3b1",
  "id": 73
}
```

[source](https://ethereum.org/en/developers/docs/apis/json-rpc/#eth\_newblockfilter)
