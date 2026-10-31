/* Artifact: libexcavator.so | Address: 001071e4 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

Quat quat_from_euler(double roll,double pitch,double yaw)

{
  double dVar1;
  double dVar2;
  double dVar3;
  double dVar4;
  Quat QVar5;
  double local_70;
  double dStack_68;
  double local_60;
  double dStack_58;
  double local_50;
  double dStack_48;
  
  dVar1 = DAT_00108020;
  sincos(yaw * DAT_00108020,&dStack_68,&local_70);
  sincos(pitch * dVar1,&dStack_58,&local_60);
  sincos(roll * dVar1,&dStack_48,&local_50);
  dVar1 = local_70 * local_50 * local_60 + dStack_68 * dStack_48 * dStack_58;
  dVar2 = local_70 * dStack_48 * local_60 - dStack_68 * local_50 * dStack_58;
  dVar3 = local_70 * local_50 * dStack_58 + dStack_68 * dStack_48 * local_60;
  dVar4 = dStack_68 * local_50 * local_60 - local_70 * dStack_48 * dStack_58;
  if (dVar1 < 0.0) {
    dVar1 = -dVar1;
    dVar2 = -dVar2;
    dVar3 = -dVar3;
    dVar4 = -dVar4;
  }
  QVar5.x = dVar2;
  QVar5.w = dVar1;
  QVar5.z = dVar4;
  QVar5.y = dVar3;
  return QVar5;
}

