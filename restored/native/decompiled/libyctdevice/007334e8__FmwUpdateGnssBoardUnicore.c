/* Artifact: libyctdevice.so | Address: 007334e8 | Ghidra static pseudocode; types require review. */

/* FmwUpdateGnssBoardUnicore::~FmwUpdateGnssBoardUnicore() */

void __thiscall
FmwUpdateGnssBoardUnicore::~FmwUpdateGnssBoardUnicore(FmwUpdateGnssBoardUnicore *this)

{
  void *pvVar1;
  
  *(undefined **)this = PTR_vtable_00d71d18 + 0x10;
                    /* try { // try from 00733508 to 0073350f has its CatchHandler @ 00733558 */
  Stop(this,false);
  if (((byte)this[0x208] & 1) != 0) {
    operator_delete(*(void **)(this + 0x218));
  }
  pvVar1 = *(void **)(this + 0x1e0);
  if (pvVar1 != (void *)0x0) {
    *(void **)(this + 0x1e8) = pvVar1;
    operator_delete(pvVar1);
  }
  if (((byte)this[0x1b8] & 1) != 0) {
    operator_delete(*(void **)(this + 0x1c8));
  }
  Timer::~Timer((Timer *)(this + 0x70));
  IFmwUpdate::~IFmwUpdate((IFmwUpdate *)this);
  return;
}

