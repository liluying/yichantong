/* Artifact: libyctdevice.so | Address: 00a1d3f0 | Ghidra static pseudocode; types require review. */

void MD4_Transform(MD4_CTX *c,uchar *b)

{
  md4_block_data_order(c,b,1);
  return;
}

