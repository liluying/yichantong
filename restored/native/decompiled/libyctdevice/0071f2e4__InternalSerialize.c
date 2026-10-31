/* Artifact: libyctdevice.so | Address: 0071f2e4 | Ghidra static pseudocode; types require review. */

/* protocol::yct_device::GnssInfoRep::_InternalSerialize(unsigned char*,
   google::protobuf::io::EpsCopyOutputStream*) const */

uchar * __thiscall
protocol::yct_device::GnssInfoRep::_InternalSerialize
          (GnssInfoRep *this,uchar *param_1,EpsCopyOutputStream *param_2)

{
  size_t __n;
  byte bVar1;
  uchar *puVar2;
  ulong uVar3;
  byte *pbVar4;
  byte *pbVar5;
  
  if (*(long *)(this + 0x18) != 0) {
    param_1 = google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<1>
                        (param_2,*(long *)(this + 0x18),param_1);
  }
  if (*(int *)(this + 0x20) != 0) {
    param_1 = (uchar *)FUN_00719848(param_2,*(int *)(this + 0x20),param_1);
  }
  pbVar5 = (byte *)(*(ulong *)(this + 0x10) & 0xfffffffffffffffc);
  bVar1 = *pbVar5;
  uVar3 = (ulong)(bVar1 >> 1);
  if ((bVar1 & 1) != 0) {
    uVar3 = *(ulong *)(pbVar5 + 8);
  }
  if (uVar3 != 0) {
    pbVar4 = *(byte **)(pbVar5 + 0x10);
    if ((bVar1 & 1) == 0) {
      pbVar4 = pbVar5 + 1;
    }
    FUN_0086b354(pbVar4,uVar3,1,"protocol.yct_device.GnssInfoRep.err_msg",0x27);
    __n = (ulong)(*pbVar5 >> 1);
    if ((*pbVar5 & 1) != 0) {
      __n = *(size_t *)(pbVar5 + 8);
    }
    if ((0x7f < (long)__n) || ((*(long *)param_2 - (long)param_1) + 0xe < (long)__n)) {
      param_1 = (uchar *)FUN_0083605c(param_2,3,pbVar5,param_1);
      uVar3 = *(ulong *)(this + 8);
      goto joined_r0x0071f418;
    }
    param_1[1] = (uchar)__n;
    *param_1 = '\x1a';
    pbVar4 = pbVar5 + 1;
    if ((*pbVar5 & 1) != 0) {
      pbVar4 = *(byte **)(pbVar5 + 0x10);
    }
    memcpy(param_1 + 2,pbVar4,__n);
    param_1 = param_1 + 2 + __n;
  }
  uVar3 = *(ulong *)(this + 8);
joined_r0x0071f418:
  if ((uVar3 & 1) == 0) {
    return param_1;
  }
  puVar2 = (uchar *)FUN_008608f0((uVar3 & 0xfffffffffffffffe) + 8,param_1,param_2);
  return puVar2;
}

