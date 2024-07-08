# eth\_getFilterChanges

Polling method for a filter, which returns an array of logs which occurred since last poll. Filter must be created by calling either [eth\_newFilter](eth\_newfilter.md) or [eth\_newBlockFilter](eth\_newblockfilter.md).

#### Parameters

`QUANTITY` - the filter id.

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

#### Example

```
// Request
curl -X POST --data '{"jsonrpc":"2.0","method":"eth_getFilterChanges","params":["0x6f3ccb09d7153d2bba6b59f8f0ede3b1"],"id":73}'
// Result
{
  "jsonrpc": "2.0",
  "result": [
    "0x0843c39fdf05d7336b7060b23abe0d25da21d24fc81beb0f9e516358c43db63a",
    "0xd6a8df3ab96be922153e333dd727d6bceb4c2bdbc2f0b917a51d5790327e8b32",
    "0xa289788ed208cef8b3d6dfa396c3638791e407047c577d6e8a66e8fb19bf7ea8",
    "0x293fa88278246ee66a85eb5bbaf22e36fff7ece8a2062c25f497c0c227ad8a7c",
    "0x5448df63981895b324132b412792650159bfa5007a2e939f434c115523a57ce1",
    "0xd4ce7ded37e84d5b8e59ba70260375ea2a33cce50995c6b2d8f443330e7a1402",
    "0x3f3db655ea4de101df340244eb928fad83a761fc190dfc2c88e0cb792a18b36c",
    "0x460b47afbfdf5bd19146017aec42e0c4d15632e4fb6fce3833d1392e1de2c765",
    "0x25e1f16eedfe59dd20089016c6814cedd821bd3824499dca7044aa94197a12fd",
    "0xceef5f6a2cb5f195bc14ea96b28f5b75142a93498d90a9be7e3e82dd33749490",
    "0xd01dca25b8d2acb0f324ac9cbcffa1fe4cf74a24a9a4d1dd69e34491006ac711",
    "0xc7a2eb1f1bcfd547049e8c8d9635832514c83a8f6f4011397cb6590da75d96c2",
    "0x7a8b47217e64091601c83a9e82179345e2981931013e57502770f71681948c18",
    "0xc339593b913a05ec76fa071d4211c3262f0ed1d10609be4c1996e3e9c821de9f",
    "0xec75eeadbfd0975226e810a7738c8c4517db03c7d9069892b1bf20df59157e6c",
    "0x593819c247acf71024f22ca3873be6bce8306ab825b92b27b0b72d1f7933a622",
    "0xd8f20bdb7894352ea74b725387ef91455961faef654ea306d05f1dee169b2995",
    "0xb176006b57313cfb3f2e6a1e0d32878a19812c9380a587eea611a7fbc57bbe38",
    "0xbdd7a9145ca4563361a20aad00dd01f00c1eddf602d2e894ae54567e7a9e9b69",
    "0x329e93e2a75c1f5ea5ccbfd9b3cdc5933b3163f6b9a40c1dff378fbe568de20d",
    "0xd1291d315583aa57178e6565249fca59c6b5e2c01fd583363372125bd4bad117",
    "0xb5a29c2ba025586b468cbe67ebf7960036de2067501079787498bc917222cbd6",
    "0xbd1ce887c1056b0fd2b3f5c65688fc73a8e05774613d123fa95fecba8312347a",
    "0x3ad5dc27ee921e6bf52931030f2b993da00795bebca749181250122a9bfd1f40",
    "0x8b9b05d785dbe1ac7141a29e17416377be4e076d8b87e07063beda15feb66c43",
    "0x5c939d34dceae7735bf5653bd4fe70e9f483a4cb2736a47226755417df9a74cc",
    "0x85c3b8394f8bc1475dc2f7e88fb5860d9eb4fabf11163810bd5054de4f57b5f0",
    "0x026608808483b0173e874c9dc29631d065bed17d0887656021b37a89b6d02b7a",
    "0x1f40207b063179df364001fcbd824dc68373f1ccca89adfc13bc7fabe148cbec",
    "0xd49d1be92d6a89e2788d482b9770d6b320dea4e8418ec986b5394e430710d333",
    "0x58364dc97c439db05681277cd524224eb4c58285be404dd027d4d232d159a375",
    "0xcb5e5ea049f3535eac762c1b6568db060057280b007e48a3d5f7453806f9f852",
    "0x19a5250cd9b97035ad7b4a5a8f145327a6a118dfa5c35cab116adc94a3ab69bf",
    "0x5c9abe4cced1e1f9b9040946ba1875770d7ee204ad43c00e0eaa4d95462e20cd",
    "0xebe398e25a4910cef69583eb8d2ab2c63b3815fbf9399defe47ecf03663b49a4",
    "0xe5ba62575248125ff479f9aba71e9b6e6923040781f074779c4308ea7ec5e5dc",
    "0xc76214449e4f5daa00595aca9ec9857a87ea9ce766cbced75ace7e25ec60a126",
    "0x740187e9342d4bcb82bc43d9ef037298f36a73c9fccd661f0ba9ce55d3dd0023",
    "0xec9b74054975e0e8b370e0cd894b8bf761b009f75553ebe2037c25b48821e549",
    "0x06d4a71588f80bcea4c1c48d5b69e3461d6ae2f982350b23e664ddd17ad7223b",
    "0xc53793ea843d79c38ff553a9afecbe2e2555ac9272e0c3f507ee1ce7b4eea8a0",
    "0xafa190430896c1dbed8ab6a16817d717142a44bbae652204fab24b6948f48b28",
    "0x01e232bebd59f6cb0799078ebdf41aadaae951c2c7daab80d9c89653e3ca9a7a",
    "0x12356ecfca4501047d9b5d3869c100cd8ad9cb85eaf050eccfba25837a4b4828",
    "0x530028651048cbe4a93607e74d413402108c39a2e351fbf3c3b698ddeaff36f3",
    "0x264cd8792f9537cef2b584b4d5eeeecbb7b5fd81676219ff4242453ae2572c38",
    "0xf2830a6fc72574bbfb9f74b1583d936485ac90e819beedd7db5f969d10be8981",
    "0xcf097ed9b8ece903dfacee5db61d1d740ae70236bebd5806bc8041b863429ef7",
    "0x83bfd02e1cef1da003d09f070b217789a45cec2211981e596467ad97cbfba2d2",
    "0x2501d6487bfe273bf7c9c8f8e295fc90fb75a4f0b8a91125877b11abc7ef1d2a",
    "0xe0168dd7040c01abb07ca1db808fa2812abd3f32f52f62022ea7b40bf40fea26",
    "0x789d8646a453a0bc7f13c0b52ae89031262d233ac943694cae1eb26be5d49869",
    "0xa8f95f58944632d719b3c123cab8661c5fbaca281ed31afcbc2baf5da76071e4",
    "0x9fbddb20c36cf74ad82f9078228d452882c776b990c816a49ad7b11fe45df775",
    "0x2f1dd4db0e85cd4a7f8eb4d6d175530954c1838c269bdf3c264e1e989192df77",
    "0x0f3a5c9dce43ad424e39dc615ba50d2f25cb27ff248fc57eef9b276c6fa4610b",
    "0xd6a4f05e693a07aaab6552120046f26b41f7da106cd9b1e5a9251514fd73ae3f",
    "0xb420ec747d8beaae0f3196d38801052d3280e03b020a618d8c8a76fcd7e5e8b5",
    "0xddba3b42b2170913f7cf45f7fb9ac339be23327abd52b61b52afb1813e988252",
    "0xd67c4e0244dfa18174f917198642340ed88f25168debd4f6cb447e178dbc29a2",
    "0x4bf47a59b285ef05bf49f5b3f697df9eca2006f3ffdab96d517e7481e226013d",
    "0x925afe3a9b16e9e44ce40518c9e17bc380970c9f5fde6d501c3c1d5e998f39aa",
    "0x757714123ab4df468549466d703de2d63abc08d65220eaf334ab0c0eab76c3b5",
    "0x282db61bc679adbf5106a76ed7a3f524214ee0a0cd485963768876bbaee63328",
    "0x126f802ca338c56aaf19240e793cbc49df0c57e71f759b88329f74f6352baf0f",
    "0x391feb4709115f11616af725909baa9ec6f0d09e60540fced959177cd6682c21",
    "0xc6777eb75a8a79409a4c6dcb9d4e630ca4d29578365a418646e85f7e0c6969c8",
    "0x6ceeddd8cdaf9c6cca1d12d12ebb7c266870be08c6944ee1c7f8fe2675a1dccb",
    "0xdaa8aaeae8b1d2c571b50ae683885027d1a5981fc8ab18cf5824357e5eda3682",
    "0xbbb125bce1f308a6dcc79a7ca6a418a8b9f89e513a8b0decd5040a72addc3d1c",
    "0xd2fcc0fe73f54eb65c915d49f0e71da3dc3d15c6dd5a1ca73dac9c62332df916",
    "0x932047d2b3227f7985ad2ccb9631bcf24350a656b71c27ea3d85a026163b659f",
    "0x56436d2d161883a0a8a3a77d1c8f9c64f731a6fc2c4dd63d1dc898a08b47bbc4",
    "0xe91b2a31cc049ca2be3a01409a255b4dfa9fb7670a62850d057c9da850f9a7fc",
    "0x1b1ecef7fa76179a20d7a3ec3a99e09f7bf7dcbd1b4f770e2e1ccb99e395c5b9",
    "0x0391442a78ed36cc2b97a48ea668460712d8debb908bbb7bbc8815dbeee905a9",
    "0x756850e9727b97e50a2c1b7ff0ea1dfce6114f82dc05093dbad45636dbc77406",
    "0x1dd1f48c8aec4e00ab319bb859ac1405837fc66e0eefb5523918c004bbbdc58d",
    "0x63bfda3919093db55b5c001749d492a6a18665c59f64d62f5fc74c8a0665f521",
    "0x84b43fef59bc4c2add6dcc6d73e0c85b130b66dd6b9fd1e1fd1e421a1943ee71",
    "0x0b9ca6281e27abeb5f83fd6d2fec4e0fdae89faa874f1d979ecab66833f33f05",
    "0x96c9fc01f3276944b1a52d532354edd87a0bbb6025001a232b1869e06b5f4690",
    "0xa8dcda986343140e72bbb910de5fe7f4e811e61d7420089dcf00cb1d12f75e44",
    "0xc71f6efbbcda9c2c3bcf1ea4f4b88415aa74a9af2cf0428e9a61115fbc0b8473",
    "0x2dc164242fc9d6b2a5f681432427d33094fd1f7d875358e9bd4a7ec4e3a2957f",
    "0x277e313bd9f1f5d0632270a3b3d4fad8f9d924acc7ab9741977b3bedc679df81",
    "0xc525ba6b05a65ae71fc9730a291558e34e31b7a0dea9ad634341f61b81d274cc",
    "0xc76232bd84b865ba8bb086022d293fb5822aa9de92ea69f3f05941894e3d6ba5",
    "0x2e453e31602a34ab853708912f19ec12876927cd0af88c94eda11d83a500ba77",
    "0xfd605f69e5a280eff57074364cc5a02d97e51ae13ef3810a66d5067de429ed43",
    "0xe776ad54f4bebd55ebab834fc2f7cdf3eaff0201c2e69cdc9e671bd28255ac4c",
    "0xa53f8c645b14bf3e76a433b632e94bfae77d746068851049217ec1d7f7b8f410",
    "0x0410fc5c03082dd2b025a52cb7ce9567e4168ef7b5c314ea16ecdfff6c0428d7",
    "0x9076f2210de4269eb2da4e9acb27f893f4810902a324ef7876ea13169e083708",
    "0xb3b25cc879ac58efe57dbf240048d6337aba990b15e71fa6633ec48b271a728a",
    "0x553ff9041ac39f3ffe06ecefe18f5c8d8f8d4c64bce148372fb0a53bb8351dac",
    "0x9195a9b3ecc5a8a31b8b84243830f0b8fb460ce657ea7f1694ee90bd722c5d28",
    "0x00d89b98761f2db1629d720e7338d62d4a02e882e2d082cf416f191c2e85c7f1",
    "0x9b73021b6dbf325894998c62e3f8d64aa879fed2e61cc9f0ce540cbc1c45e6f3",
    "0x5dbc9f0607216214e0d56125e103ce5f3019ba58e78b44e7ce86b0f60e4e2155",
    "0x49fc2ec79a7494f049e27b4c495531c6addcc291c44f38962141155847c97d22"
  ],
  "id": 1
}
```

[source](https://ethereum.org/en/developers/docs/apis/json-rpc/#eth\_getfilterchanges)
