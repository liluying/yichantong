/* Artifact: libyctdevice.so | Address: 00a5cf54 | Ghidra static pseudocode; types require review. */

void SHA512_Transform(SHA512_CTX *c,uchar *data)

{
  sha512_block_data_order(c,data,1);
  return;
}

