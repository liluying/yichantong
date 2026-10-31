/* Artifact: libyctdevice.so | Address: 0074e4b4 | Ghidra static pseudocode; types require review. */

/* gnss::GnssCoordConvert::GeoToProj(Eigen::Matrix<double, 3, 1, 0, 3, 1> const&) const */

void gnss::GnssCoordConvert::GeoToProj(Matrix *param_1)

{
  long lVar1;
  runtime_error *this;
  double *in_x1;
  double *in_x8;
  double dVar2;
  double dVar3;
  double dVar4;
  double local_68;
  double local_60;
  double dStack_58;
  double dStack_50;
  long local_48;
  
  lVar1 = tpidr_el0;
  local_48 = *(long *)(lVar1 + 0x28);
  if (*(TransverseMercator **)(param_1 + 0x58) == (TransverseMercator *)0x0) {
    this = (runtime_error *)__cxa_allocate_exception(0x10);
                    /* try { // try from 0074e558 to 0074e563 has its CatchHandler @ 0074e58c */
    std::runtime_error::runtime_error(this,"GnssCoordConvert: projection not set");
    if (*(long *)(lVar1 + 0x28) == local_48) {
                    /* WARNING: Subroutine does not return */
      __cxa_throw(this,PTR_typeinfo_00d71970,PTR__range_error_00d71728);
    }
  }
  else {
    dVar4 = in_x1[2];
    GeographicLib::TransverseMercator::Forward
              (*(TransverseMercator **)(param_1 + 0x58),*(double *)(param_1 + 0x60),in_x1[1],*in_x1,
               &local_60,&local_68,&dStack_50,&dStack_58);
    dVar3 = *(double *)(param_1 + 0x70);
    dVar2 = *(double *)(param_1 + 0x68);
    in_x8[2] = dVar4;
    in_x8[1] = local_68 + dVar3;
    *in_x8 = local_60 + dVar2;
    if (*(long *)(lVar1 + 0x28) == local_48) {
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

