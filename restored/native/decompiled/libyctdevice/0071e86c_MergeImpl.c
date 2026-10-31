/* Artifact: libyctdevice.so | Address: 0071e86c | Ghidra static pseudocode; types require review. */

/* protocol::yct_device::GnssInfoReq::MergeImpl(google::protobuf::MessageLite&,
   google::protobuf::MessageLite const&) */

void protocol::yct_device::GnssInfoReq::MergeImpl(MessageLite *param_1,MessageLite *param_2)

{
  byte *pbVar1;
  ulong uVar2;
  
  pbVar1 = (byte *)(*(ulong *)(param_2 + 0x10) & 0xfffffffffffffffc);
  uVar2 = (ulong)(*pbVar1 >> 1);
  if ((*pbVar1 & 1) != 0) {
    uVar2 = *(ulong *)(pbVar1 + 8);
  }
  if (uVar2 != 0) {
    uVar2 = *(ulong *)(param_1 + 8);
    if ((uVar2 & 1) != 0) {
      uVar2 = *(ulong *)(uVar2 & 0xfffffffffffffffe);
    }
    FUN_0078d4b4(param_1 + 0x10,pbVar1,uVar2);
  }
  pbVar1 = (byte *)(*(ulong *)(param_2 + 0x18) & 0xfffffffffffffffc);
  uVar2 = (ulong)(*pbVar1 >> 1);
  if ((*pbVar1 & 1) != 0) {
    uVar2 = *(ulong *)(pbVar1 + 8);
  }
  if (uVar2 != 0) {
    uVar2 = *(ulong *)(param_1 + 8);
    if ((uVar2 & 1) != 0) {
      uVar2 = *(ulong *)(uVar2 & 0xfffffffffffffffe);
    }
    FUN_0078d4b4(param_1 + 0x18,pbVar1,uVar2);
  }
  pbVar1 = (byte *)(*(ulong *)(param_2 + 0x20) & 0xfffffffffffffffc);
  uVar2 = (ulong)(*pbVar1 >> 1);
  if ((*pbVar1 & 1) != 0) {
    uVar2 = *(ulong *)(pbVar1 + 8);
  }
  if (uVar2 != 0) {
    uVar2 = *(ulong *)(param_1 + 8);
    if ((uVar2 & 1) != 0) {
      uVar2 = *(ulong *)(uVar2 & 0xfffffffffffffffe);
    }
    FUN_0078d4b4(param_1 + 0x20,pbVar1,uVar2);
  }
  pbVar1 = (byte *)(*(ulong *)(param_2 + 0x28) & 0xfffffffffffffffc);
  uVar2 = (ulong)(*pbVar1 >> 1);
  if ((*pbVar1 & 1) != 0) {
    uVar2 = *(ulong *)(pbVar1 + 8);
  }
  if (uVar2 != 0) {
    uVar2 = *(ulong *)(param_1 + 8);
    if ((uVar2 & 1) != 0) {
      uVar2 = *(ulong *)(uVar2 & 0xfffffffffffffffe);
    }
    FUN_0078d4b4(param_1 + 0x28,pbVar1,uVar2);
  }
  pbVar1 = (byte *)(*(ulong *)(param_2 + 0x30) & 0xfffffffffffffffc);
  uVar2 = (ulong)(*pbVar1 >> 1);
  if ((*pbVar1 & 1) != 0) {
    uVar2 = *(ulong *)(pbVar1 + 8);
  }
  if (uVar2 != 0) {
    uVar2 = *(ulong *)(param_1 + 8);
    if ((uVar2 & 1) != 0) {
      uVar2 = *(ulong *)(uVar2 & 0xfffffffffffffffe);
    }
    FUN_0078d4b4(param_1 + 0x30,pbVar1,uVar2);
  }
  if (*(long *)(param_2 + 0x38) != 0) {
    *(long *)(param_1 + 0x38) = *(long *)(param_2 + 0x38);
  }
  if ((*(ulong *)(param_2 + 8) & 1) == 0) {
    return;
  }
  FUN_00842ae0(param_1 + 8,(*(ulong *)(param_2 + 8) & 0xfffffffffffffffe) + 8);
  return;
}

