/* Artifact: libyctdevice.so | Address: 00a59d78 | Ghidra static pseudocode; types require review. */

void SHA256_Transform(SHA256_CTX *c,uchar *data)

{
  sha256_block_data_order(c,data,1);
  return;
}

