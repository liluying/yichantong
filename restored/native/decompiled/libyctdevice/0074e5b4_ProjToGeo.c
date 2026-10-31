/* Artifact: libyctdevice.so | Address: 0074e5b4 | Ghidra static pseudocode; types require review. */

/* gnss::GnssCoordConvert::ProjToGeo(Eigen::Matrix<double, 3, 1, 0, 3, 1> const&) const */

void gnss::GnssCoordConvert::ProjToGeo(Matrix *param_1)

{
  long lVar1;
  runtime_error *this;
  double *in_x1;
  double *in_x8;
  double dVar2;
  double local_58;
  double dStack_50;
  double dStack_48;
  double dStack_40;
  long local_38;
  
  lVar1 = tpidr_el0;
  local_38 = *(long *)(lVar1 + 0x28);
  if (*(TransverseMercator **)(param_1 + 0x58) == (TransverseMercator *)0x0) {
    this = (runtime_error *)__cxa_allocate_exception(0x10);
                    /* try { // try from 0074e64c to 0074e657 has its CatchHandler @ 0074e680 */
    std::runtime_error::runtime_error(this,"GnssCoordConvert: projection not set");
    if (*(long *)(lVar1 + 0x28) == local_38) {
                    /* WARNING: Subroutine does not return */
      __cxa_throw(this,PTR_typeinfo_00d71970,PTR__range_error_00d71728);
    }
  }
  else {
    dVar2 = in_x1[2];
    GeographicLib::TransverseMercator::Reverse
              (*(TransverseMercator **)(param_1 + 0x58),*(double *)(param_1 + 0x60),
               *in_x1 - *(double *)(param_1 + 0x68),in_x1[1] - *(double *)(param_1 + 0x70),
               &dStack_50,&local_58,&dStack_40,&dStack_48);
    in_x8[2] = dVar2;
    *in_x8 = local_58;
    in_x8[1] = dStack_50;
    if (*(long *)(lVar1 + 0x28) == local_38) {
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

