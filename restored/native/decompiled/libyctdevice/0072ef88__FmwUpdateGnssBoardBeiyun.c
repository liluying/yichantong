/* Artifact: libyctdevice.so | Address: 0072ef88 | Ghidra static pseudocode; types require review. */

/* FmwUpdateGnssBoardBeiyun::~FmwUpdateGnssBoardBeiyun() */

void __thiscall FmwUpdateGnssBoardBeiyun::~FmwUpdateGnssBoardBeiyun(FmwUpdateGnssBoardBeiyun *this)

{
  void *pvVar1;
  
  *(undefined **)this = PTR_vtable_00d71cb8 + 0x10;
                    /* try { // try from 0072efa8 to 0072efaf has its CatchHandler @ 0072f008 */
  Stop(this,false);
  if (((byte)this[0x360] & 1) != 0) {
    operator_delete(*(void **)(this + 0x370));
  }
  pvVar1 = *(void **)(this + 0x338);
  if (pvVar1 != (void *)0x0) {
    *(void **)(this + 0x340) = pvVar1;
    operator_delete(pvVar1);
  }
  if (((byte)this[800] & 1) != 0) {
    operator_delete(*(void **)(this + 0x330));
  }
  Timer::~Timer((Timer *)(this + 0x1c0));
  if (((byte)this[0x1a0] & 1) != 0) {
    operator_delete(*(void **)(this + 0x1b0));
  }
  IFmwUpdate::~IFmwUpdate((IFmwUpdate *)this);
  return;
}

