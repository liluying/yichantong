/* Artifact: libexcavator.so | Address: 00107104 | Ghidra static pseudocode; types require review. */

bool FUN_00107104(double param_1,double param_2,double param_3,double param_4)

{
  bool bVar1;
  bool bVar2;
  bool bVar3;
  bool bVar4;
  bool bVar5;
  bool bVar6;
  double dVar7;
  
  bVar1 = false;
  bVar3 = true;
  bVar5 = false;
  if (param_4 < 2.0) {
    bVar1 = false;
    bVar3 = false;
    bVar5 = true;
    if (!NAN(param_4)) {
      bVar1 = param_4 < -2.0;
      bVar3 = param_4 == -2.0;
      bVar5 = false;
    }
  }
  bVar2 = false;
  if ((!bVar3 && bVar1 == bVar5) && (bVar2 = false, !NAN(param_3))) {
    bVar2 = param_3 < 2.0;
  }
  bVar1 = false;
  bVar3 = true;
  bVar5 = false;
  if (bVar2) {
    bVar1 = false;
    bVar3 = false;
    bVar5 = true;
    if (!NAN(param_3)) {
      bVar1 = param_3 < -2.0;
      bVar3 = param_3 == -2.0;
      bVar5 = false;
    }
  }
  bVar2 = false;
  if ((!bVar3 && bVar1 == bVar5) && (bVar2 = false, !NAN(param_2))) {
    bVar2 = param_2 < 2.0;
  }
  bVar1 = false;
  bVar3 = true;
  bVar5 = false;
  if (bVar2) {
    bVar1 = false;
    bVar3 = false;
    bVar5 = true;
    if (!NAN(param_2)) {
      bVar1 = param_2 < -2.0;
      bVar3 = param_2 == -2.0;
      bVar5 = false;
    }
  }
  bVar2 = false;
  bVar4 = true;
  bVar6 = false;
  if (!bVar3 && bVar1 == bVar5) {
    bVar2 = false;
    bVar4 = false;
    bVar6 = true;
    if (!NAN(param_1)) {
      bVar2 = param_1 < -2.0;
      bVar4 = param_1 == -2.0;
      bVar6 = false;
    }
  }
  bVar1 = false;
  if ((!bVar4 && bVar2 == bVar6) && (bVar1 = false, !NAN(param_1))) {
    bVar1 = param_1 < 2.0;
  }
  if (bVar1) {
    dVar7 = param_4 * param_4 + param_3 * param_3 + param_1 * param_1 + param_2 * param_2;
    return 0.5 < dVar7 && dVar7 < 2.0;
  }
  return false;
}

