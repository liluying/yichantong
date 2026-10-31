/* Artifact: libyctdevice.so | Address: 00734d84 | Ghidra static pseudocode; types require review. */

/* FmwUpdateGnssBoardUnicore::Cleanup() */

void __thiscall FmwUpdateGnssBoardUnicore::Cleanup(FmwUpdateGnssBoardUnicore *this)

{
  long lVar1;
  __shared_weak_count *this_00;
  
  this[0x200] = (FmwUpdateGnssBoardUnicore)0x0;
  *(undefined8 *)(this + 0x1b0) = 0;
  *(undefined4 *)(this + 0x1d0) = 0;
  *(undefined8 *)(this + 0x1d8) = 0xffffffff00000000;
  *(undefined2 *)(this + 0x1d4) = 0x101;
  if (((byte)this[0x1b8] & 1) == 0) {
    *(undefined2 *)(this + 0x1b8) = 0;
  }
  else {
    **(undefined1 **)(this + 0x1c8) = 0;
    *(undefined8 *)(this + 0x1c0) = 0;
  }
  this_00 = *(__shared_weak_count **)(this + 0x68);
  *(undefined8 *)(this + 0x1f8) = 0;
  *(undefined8 *)(this + 0x60) = 0;
  *(undefined8 *)(this + 0x68) = 0;
  *(undefined8 *)(this + 0x1e8) = *(undefined8 *)(this + 0x1e0);
  if ((this_00 != (__shared_weak_count *)0x0) &&
     (lVar1 = FUN_00cc2c10(0xffffffffffffffff,this_00 + 8), lVar1 == 0)) {
    (**(code **)(*(long *)this_00 + 0x10))(this_00);
    std::__ndk1::__shared_weak_count::__release_weak(this_00);
    return;
  }
  return;
}

