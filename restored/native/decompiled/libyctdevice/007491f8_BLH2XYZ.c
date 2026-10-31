/* Artifact: libyctdevice.so | Address: 007491f8 | Ghidra static pseudocode; types require review. */

/* gnss_trans::GnssParamTransform::BLH2XYZ(double, double, double, double, double, double&, double&,
   double&) */

void gnss_trans::GnssParamTransform::BLH2XYZ
               (double param_1,double param_2,double param_3,double param_4,double param_5,
               double *param_6,double *param_7,double *param_8)

{
  long lVar1;
  double local_a0 [7];
  double local_68;
  double dStack_60;
  long local_58;
  
  lVar1 = tpidr_el0;
  local_58 = *(long *)(lVar1 + 0x28);
                    /* try { // try from 00749244 to 0074924f has its CatchHandler @ 007492bc */
  local_68 = param_5;
  dStack_60 = param_4;
  GeographicLib::Geocentric::Geocentric
            ((Geocentric *)local_a0,param_4,(param_4 - param_5) / param_4);
  if (0.0 < local_a0[0]) {
                    /* try { // try from 0074926c to 00749287 has its CatchHandler @ 007492b8 */
    GeographicLib::Geocentric::IntForward
              ((Geocentric *)local_a0,param_1 * DAT_003983c0,param_2 * DAT_003983c0,param_3,param_6,
               param_7,param_8,(double *)0x0);
  }
  if (*(long *)(lVar1 + 0x28) == local_58) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}

