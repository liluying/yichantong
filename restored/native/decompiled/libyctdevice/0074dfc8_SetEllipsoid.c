/* Artifact: libyctdevice.so | Address: 0074dfc8 | Ghidra static pseudocode; types require review. */

/* gnss::GnssCoordConvert::SetEllipsoid(double, double) */

void __thiscall
gnss::GnssCoordConvert::SetEllipsoid(GnssCoordConvert *this,double param_1,double param_2)

{
  long lVar1;
  Geocentric *this_00;
  void *pvVar2;
  long lVar3;
  
  lVar1 = tpidr_el0;
  lVar3 = *(long *)(lVar1 + 0x28);
                    /* try { // try from 0074dffc to 0074e003 has its CatchHandler @ 0074e07c */
  this_00 = (Geocentric *)operator_new(0x38);
                    /* try { // try from 0074e004 to 0074e013 has its CatchHandler @ 0074e068 */
  GeographicLib::Geocentric::Geocentric(this_00,param_1,param_2);
  pvVar2 = *(void **)(this + 0x10);
  *(double *)this = param_1;
  *(double *)(this + 8) = param_2;
  *(Geocentric **)(this + 0x10) = this_00;
  if (pvVar2 != (void *)0x0) {
    operator_delete(pvVar2);
  }
  if (this[0x50] != (GnssCoordConvert)0x0) {
                    /* try { // try from 0074e030 to 0074e03b has its CatchHandler @ 0074e064 */
    SetProjection(this,(variant *)(this + 0x18));
  }
  if (*(long *)(lVar1 + 0x28) == lVar3) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

