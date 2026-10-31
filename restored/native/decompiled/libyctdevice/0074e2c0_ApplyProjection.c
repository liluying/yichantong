/* Artifact: libyctdevice.so | Address: 0074e2c0 | Ghidra static pseudocode; types require review. */

/* gnss::GnssCoordConvert::ApplyProjection(double, double, double, double, double,
   gnss::DeformationMethod) */

void __thiscall
gnss::GnssCoordConvert::ApplyProjection
          (undefined8 param_1,undefined8 param_2,undefined8 param_3,double param_4,double param_5,
          GnssCoordConvert *this,int param_7)

{
  TransverseMercator *this_00;
  void *pvVar1;
  double dVar2;
  double dVar3;
  
  dVar3 = *(double *)this;
  dVar2 = *(double *)(this + 8);
  if (param_7 == 2) {
    dVar3 = dVar3 + param_5;
  }
  else if (param_7 == 1) {
    param_4 = (param_5 / dVar3 + 1.0) * param_4;
  }
  this_00 = (TransverseMercator *)operator_new(0x1c8);
                    /* try { // try from 0074e324 to 0074e33b has its CatchHandler @ 0074e36c */
  GeographicLib::TransverseMercator::TransverseMercator(this_00,dVar3,dVar2,param_4,false,false);
  pvVar1 = *(void **)(this + 0x58);
  *(TransverseMercator **)(this + 0x58) = this_00;
  if (pvVar1 != (void *)0x0) {
    operator_delete(pvVar1);
  }
  *(undefined8 *)(this + 0x60) = param_1;
  *(undefined8 *)(this + 0x68) = param_2;
  *(undefined8 *)(this + 0x70) = param_3;
  return;
}

