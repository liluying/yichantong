/* Artifact: libyctdevice.so | Address: 0073000c | Ghidra static pseudocode; types require review. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* FmwUpdateGnssBoardBeiyun::Cleanup() */

void __thiscall FmwUpdateGnssBoardBeiyun::Cleanup(FmwUpdateGnssBoardBeiyun *this)

{
  undefined8 uVar1;
  undefined8 uVar2;
  long lVar3;
  __shared_weak_count *this_00;
  
  this[0x358] = (FmwUpdateGnssBoardBeiyun)0x0;
  uVar2 = _UNK_003973f8;
  uVar1 = _DAT_003973f0;
  *(undefined4 *)(this + 0x310) = 0xffffffff;
  *(undefined8 *)(this + 0x318) = 0;
  *(undefined8 *)(this + 0x308) = uVar2;
  *(undefined8 *)(this + 0x300) = uVar1;
  *(undefined8 *)(this + 0x340) = *(undefined8 *)(this + 0x338);
  *(undefined8 *)(this + 0x350) = 0;
  if (((byte)this[800] & 1) == 0) {
    *(undefined2 *)(this + 800) = 0;
  }
  else {
    **(undefined1 **)(this + 0x330) = 0;
    *(undefined8 *)(this + 0x328) = 0;
  }
  this_00 = *(__shared_weak_count **)(this + 0x68);
  *(undefined8 *)(this + 0x60) = 0;
  *(undefined8 *)(this + 0x68) = 0;
  if ((this_00 != (__shared_weak_count *)0x0) &&
     (lVar3 = FUN_00cc2c10(0xffffffffffffffff,this_00 + 8), lVar3 == 0)) {
    (**(code **)(*(long *)this_00 + 0x10))(this_00);
    std::__ndk1::__shared_weak_count::__release_weak(this_00);
    return;
  }
  return;
}

