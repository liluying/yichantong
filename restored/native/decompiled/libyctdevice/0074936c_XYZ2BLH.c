/* Artifact: libyctdevice.so | Address: 0074936c | Ghidra static pseudocode; types require review. */

/* gnss_trans::GnssParamTransform::XYZ2BLH(double, double, double, double, double, double&, double&,
   double&) */

void gnss_trans::GnssParamTransform::XYZ2BLH
               (double param_1,double param_2,double param_3,double param_4,double param_5,
               double *param_6,double *param_7,double *param_8)

{
  long lVar1;
  double dVar2;
  double dVar3;
  double local_b0;
  double dStack_a8;
  double local_a0 [7];
  double local_68;
  double dStack_60;
  long local_58;
  
  lVar1 = tpidr_el0;
  local_58 = *(long *)(lVar1 + 0x28);
                    /* try { // try from 007493b8 to 007493c3 has its CatchHandler @ 00749450 */
  local_68 = param_5;
  dStack_60 = param_4;
  GeographicLib::Geocentric::Geocentric
            ((Geocentric *)local_a0,param_4,(param_4 - param_5) / param_4);
  dVar2 = 0.0;
  local_b0 = 0.0;
  dStack_a8 = 0.0;
  dVar3 = 0.0;
  if (0.0 < local_a0[0]) {
                    /* try { // try from 007493dc to 007493ff has its CatchHandler @ 0074944c */
    GeographicLib::Geocentric::IntReverse
              ((Geocentric *)local_a0,param_1,param_2,param_3,&dStack_a8,&local_b0,param_8,
               (double *)0x0);
    dVar3 = dStack_a8 * DAT_003983c8;
    dVar2 = local_b0 * DAT_003983c8;
  }
  *param_6 = dVar3;
  *param_7 = dVar2;
  if (*(long *)(lVar1 + 0x28) == local_58) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}

