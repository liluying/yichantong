/* Artifact: libyctdevice.so | Address: 0071ea88 | Ghidra static pseudocode; types require review. */

/* protocol::yct_device::GnssInfoReq::_InternalSerialize(unsigned char*,
   google::protobuf::io::EpsCopyOutputStream*) const */

uchar * __thiscall
protocol::yct_device::GnssInfoReq::_InternalSerialize
          (GnssInfoReq *this,uchar *param_1,EpsCopyOutputStream *param_2)

{
  size_t sVar1;
  byte bVar2;
  uchar *puVar3;
  ulong uVar4;
  byte *pbVar5;
  byte *pbVar6;
  
  if (*(long *)(this + 0x38) != 0) {
    param_1 = google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<1>
                        (param_2,*(long *)(this + 0x38),param_1);
  }
  pbVar6 = (byte *)(*(ulong *)(this + 0x10) & 0xfffffffffffffffc);
  bVar2 = *pbVar6;
  uVar4 = (ulong)(bVar2 >> 1);
  if ((bVar2 & 1) != 0) {
    uVar4 = *(ulong *)(pbVar6 + 8);
  }
  if (uVar4 != 0) {
    pbVar5 = *(byte **)(pbVar6 + 0x10);
    if ((bVar2 & 1) == 0) {
      pbVar5 = pbVar6 + 1;
    }
    FUN_0086b354(pbVar5,uVar4,1,"protocol.yct_device.GnssInfoReq.model",0x25);
    sVar1 = (ulong)(*pbVar6 >> 1);
    if ((*pbVar6 & 1) != 0) {
      sVar1 = *(size_t *)(pbVar6 + 8);
    }
    if (((long)sVar1 < 0x80) && ((long)sVar1 <= (*(long *)param_2 - (long)param_1) + 0xe)) {
      param_1[1] = (uchar)sVar1;
      *param_1 = '\x12';
      pbVar5 = pbVar6 + 1;
      if ((*pbVar6 & 1) != 0) {
        pbVar5 = *(byte **)(pbVar6 + 0x10);
      }
      memcpy(param_1 + 2,pbVar5,sVar1);
      param_1 = param_1 + 2 + sVar1;
    }
    else {
      param_1 = (uchar *)FUN_0083605c(param_2,2,pbVar6,param_1);
    }
  }
  pbVar6 = (byte *)(*(ulong *)(this + 0x18) & 0xfffffffffffffffc);
  bVar2 = *pbVar6;
  uVar4 = (ulong)(bVar2 >> 1);
  if ((bVar2 & 1) != 0) {
    uVar4 = *(ulong *)(pbVar6 + 8);
  }
  if (uVar4 != 0) {
    pbVar5 = *(byte **)(pbVar6 + 0x10);
    if ((bVar2 & 1) == 0) {
      pbVar5 = pbVar6 + 1;
    }
    FUN_0086b354(pbVar5,uVar4,1,"protocol.yct_device.GnssInfoReq.serial_number",0x2d);
    sVar1 = (ulong)(*pbVar6 >> 1);
    if ((*pbVar6 & 1) != 0) {
      sVar1 = *(size_t *)(pbVar6 + 8);
    }
    if (((long)sVar1 < 0x80) && ((long)sVar1 <= (*(long *)param_2 - (long)param_1) + 0xe)) {
      param_1[1] = (uchar)sVar1;
      *param_1 = '\x1a';
      pbVar5 = pbVar6 + 1;
      if ((*pbVar6 & 1) != 0) {
        pbVar5 = *(byte **)(pbVar6 + 0x10);
      }
      memcpy(param_1 + 2,pbVar5,sVar1);
      param_1 = param_1 + 2 + sVar1;
    }
    else {
      param_1 = (uchar *)FUN_0083605c(param_2,3,pbVar6,param_1);
    }
  }
  pbVar6 = (byte *)(*(ulong *)(this + 0x20) & 0xfffffffffffffffc);
  bVar2 = *pbVar6;
  uVar4 = (ulong)(bVar2 >> 1);
  if ((bVar2 & 1) != 0) {
    uVar4 = *(ulong *)(pbVar6 + 8);
  }
  if (uVar4 != 0) {
    pbVar5 = *(byte **)(pbVar6 + 0x10);
    if ((bVar2 & 1) == 0) {
      pbVar5 = pbVar6 + 1;
    }
    FUN_0086b354(pbVar5,uVar4,1,"protocol.yct_device.GnssInfoReq.hardware_version",0x30);
    sVar1 = (ulong)(*pbVar6 >> 1);
    if ((*pbVar6 & 1) != 0) {
      sVar1 = *(size_t *)(pbVar6 + 8);
    }
    if (((long)sVar1 < 0x80) && ((long)sVar1 <= (*(long *)param_2 - (long)param_1) + 0xe)) {
      param_1[1] = (uchar)sVar1;
      *param_1 = '\"';
      pbVar5 = pbVar6 + 1;
      if ((*pbVar6 & 1) != 0) {
        pbVar5 = *(byte **)(pbVar6 + 0x10);
      }
      memcpy(param_1 + 2,pbVar5,sVar1);
      param_1 = param_1 + 2 + sVar1;
    }
    else {
      param_1 = (uchar *)FUN_0083605c(param_2,4,pbVar6,param_1);
    }
  }
  pbVar6 = (byte *)(*(ulong *)(this + 0x28) & 0xfffffffffffffffc);
  bVar2 = *pbVar6;
  uVar4 = (ulong)(bVar2 >> 1);
  if ((bVar2 & 1) != 0) {
    uVar4 = *(ulong *)(pbVar6 + 8);
  }
  if (uVar4 != 0) {
    pbVar5 = *(byte **)(pbVar6 + 0x10);
    if ((bVar2 & 1) == 0) {
      pbVar5 = pbVar6 + 1;
    }
    FUN_0086b354(pbVar5,uVar4,1,"protocol.yct_device.GnssInfoReq.firmware_version",0x30);
    sVar1 = (ulong)(*pbVar6 >> 1);
    if ((*pbVar6 & 1) != 0) {
      sVar1 = *(size_t *)(pbVar6 + 8);
    }
    if (((long)sVar1 < 0x80) && ((long)sVar1 <= (*(long *)param_2 - (long)param_1) + 0xe)) {
      param_1[1] = (uchar)sVar1;
      *param_1 = '*';
      pbVar5 = pbVar6 + 1;
      if ((*pbVar6 & 1) != 0) {
        pbVar5 = *(byte **)(pbVar6 + 0x10);
      }
      memcpy(param_1 + 2,pbVar5,sVar1);
      param_1 = param_1 + 2 + sVar1;
    }
    else {
      param_1 = (uchar *)FUN_0083605c(param_2,5,pbVar6,param_1);
    }
  }
  pbVar6 = (byte *)(*(ulong *)(this + 0x30) & 0xfffffffffffffffc);
  bVar2 = *pbVar6;
  uVar4 = (ulong)(bVar2 >> 1);
  if ((bVar2 & 1) != 0) {
    uVar4 = *(ulong *)(pbVar6 + 8);
  }
  if (uVar4 != 0) {
    pbVar5 = *(byte **)(pbVar6 + 0x10);
    if ((bVar2 & 1) == 0) {
      pbVar5 = pbVar6 + 1;
    }
    FUN_0086b354(pbVar5,uVar4,1,"protocol.yct_device.GnssInfoReq.auth_info_hex",0x2d);
    sVar1 = (ulong)(*pbVar6 >> 1);
    if ((*pbVar6 & 1) != 0) {
      sVar1 = *(size_t *)(pbVar6 + 8);
    }
    if ((0x7f < (long)sVar1) || ((*(long *)param_2 - (long)param_1) + 0xe < (long)sVar1)) {
      param_1 = (uchar *)FUN_0083605c(param_2,6,pbVar6,param_1);
      uVar4 = *(ulong *)(this + 8);
      goto joined_r0x0071eea4;
    }
    param_1[1] = (uchar)sVar1;
    *param_1 = '2';
    pbVar5 = pbVar6 + 1;
    if ((*pbVar6 & 1) != 0) {
      pbVar5 = *(byte **)(pbVar6 + 0x10);
    }
    memcpy(param_1 + 2,pbVar5,sVar1);
    param_1 = param_1 + 2 + sVar1;
  }
  uVar4 = *(ulong *)(this + 8);
joined_r0x0071eea4:
  if ((uVar4 & 1) == 0) {
    return param_1;
  }
  puVar3 = (uchar *)FUN_008608f0((uVar4 & 0xfffffffffffffffe) + 8,param_1,param_2);
  return puVar3;
}

