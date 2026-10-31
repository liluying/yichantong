/* Artifact: libyctdevice.so | Address: 0074e434 | Ghidra static pseudocode; types require review. */

/* gnss::GnssCoordConvert::XyzToBlh(Eigen::Matrix<double, 3, 1, 0, 3, 1> const&) const */

void gnss::GnssCoordConvert::XyzToBlh(Matrix *param_1)

{
  long lVar1;
  double *in_x1;
  double *in_x8;
  double dVar2;
  double in_d1;
  double in_d2;
  double local_40;
  double local_38;
  double dStack_30;
  long local_28;
  
  lVar1 = tpidr_el0;
  local_28 = *(long *)(lVar1 + 0x28);
  dVar2 = *(double *)*(Geocentric **)(param_1 + 0x10);
  if (0.0 < dVar2) {
    GeographicLib::Geocentric::IntReverse
              (*(Geocentric **)(param_1 + 0x10),*in_x1,in_x1[1],in_x1[2],&dStack_30,&local_38,
               &local_40,(double *)0x0);
    dVar2 = local_40;
    in_d1 = dStack_30;
    in_d2 = local_38;
  }
  *in_x8 = in_d2;
  in_x8[1] = in_d1;
  in_x8[2] = dVar2;
  if (*(long *)(lVar1 + 0x28) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

