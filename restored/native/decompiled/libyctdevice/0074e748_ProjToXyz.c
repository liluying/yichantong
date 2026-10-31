/* Artifact: libyctdevice.so | Address: 0074e748 | Ghidra static pseudocode; types require review. */

/* gnss::GnssCoordConvert::ProjToXyz(Eigen::Matrix<double, 3, 1, 0, 3, 1> const&) const */

void gnss::GnssCoordConvert::ProjToXyz(Matrix *param_1)

{
  long lVar1;
  double *in_x8;
  double dVar2;
  double in_d1;
  double in_d2;
  double local_68;
  double local_60;
  double dStack_58;
  double local_50;
  double dStack_48;
  double local_40;
  long local_38;
  
  lVar1 = tpidr_el0;
  local_38 = *(long *)(lVar1 + 0x28);
  ProjToGeo(param_1);
  dVar2 = *(double *)*(Geocentric **)(param_1 + 0x10);
  if (0.0 < dVar2) {
    GeographicLib::Geocentric::IntForward
              (*(Geocentric **)(param_1 + 0x10),dStack_48,local_50,local_40,&dStack_58,&local_60,
               &local_68,(double *)0x0);
    dVar2 = local_68;
    in_d1 = local_60;
    in_d2 = dStack_58;
  }
  *in_x8 = in_d2;
  in_x8[1] = in_d1;
  in_x8[2] = dVar2;
  if (*(long *)(lVar1 + 0x28) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

