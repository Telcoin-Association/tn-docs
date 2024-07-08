---
description: >-
  Returns the hash of the current block, the seedHash, and the boundary
  condition to be met ("target").
---

# eth\_getWork (unimplemented)

#### Parameters

`None`

#### Returns

An array with the following properties:

* &#x20;`pow_hash`: `DATA` , 32 bytes - Current block header pow-hash.
* `seed_hash` : `DATA` , 32 bytes - The seed hash used for the DAG.
* `boundary_condition` : `DATA` , 32 bytes - The boundary condition ("target") , 2^256 / difficulty.
