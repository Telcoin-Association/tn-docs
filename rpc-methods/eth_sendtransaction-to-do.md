# eth\_sendTransaction (to do)

NOT SUPPORTED BY INFURA

The `eth_sendTransaction` JSON-RPC method is not supported because Infura doesn't store the user's private key required to sign the transaction. Use [`eth_sendRawTransaction`](https://docs.infura.io/api/networks/ethereum/json-rpc-methods/eth\_sendrawtransaction) instead.

You can use [`web3.eth.sendTransaction`](https://web3js.readthedocs.io/en/v1.2.0/web3-eth.html#sendtransaction), which in turn signs the transaction locally using the private key of the account, and sends the transaction via [`web3.eth.sendSignedTransaction`](https://web3js.readthedocs.io/en/v1.2.0/web3-eth.html#sendsignedtransaction), which is a wrapper for `eth_sendRawTransaction`.
