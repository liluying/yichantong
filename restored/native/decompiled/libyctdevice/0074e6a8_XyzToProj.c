/* Artifact: libyctdevice.so | Address: 0074e6a8 | Ghidra static pseudocode; types require review. */

/* gnss::GnssCoordConvert::XyzToProj(Eigen::Matrix<double, 3, 1, 0, 3, 1> const&) const */

void gnss::GnssCoordConvert::XyzToProj(Matrix *param_1)

{
  long lVar1;
  double *in_x1;
  double local_68;
  double local_60;
  double adStack_58 [3];
  double local_40;
  long local_38;
  
  lVar1 = tpidr_el0;
  local_38 = *(long *)(lVar1 + 0x28);
  local_40 = *(double *)*(Geocentric **)(param_1 + 0x10);
  if (0.0 < local_40) {
    GeographicLib::Geocentric::IntReverse
              (*(Geocentric **)(param_1 + 0x10),*in_x1,in_x1[1],in_x1[2],adStack_58,&local_60,
               &local_68,(double *)0x0);
    local_40 = local_68;
  }
  GeoToProj(param_1);
  if (*(long *)(lVar1 + 0x28) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

