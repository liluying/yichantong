/* Artifact: libyctdevice.so | Address: 00a443c8 | Ghidra static pseudocode; types require review. */

void RIPEMD160_Transform(RIPEMD160_CTX *c,uchar *b)

{
  ripemd160_block_data_order(c,b,1);
  return;
}

