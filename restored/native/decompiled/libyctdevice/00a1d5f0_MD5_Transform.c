/* Artifact: libyctdevice.so | Address: 00a1d5f0 | Ghidra static pseudocode; types require review. */

void MD5_Transform(MD5_CTX *c,uchar *b)

{
  ossl_md5_block_asm_data_order(c,b,1);
  return;
}

