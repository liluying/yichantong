#!/usr/bin/env bash
set -euo pipefail
ROOT=$(cd -- "$(dirname -- "$0")" && pwd)
"$ROOT/build.sh"
"$ROOT/native/build-android.sh"
python3 - "$ROOT" <<'PY'
import sys,pathlib,zipfile
r=pathlib.Path(sys.argv[1]);input=r/'build/yct-restored-unsigned.apk'
with zipfile.ZipFile(input) as src,zipfile.ZipFile(r/'build/yct-restored-hybrid-unsigned.apk','w',zipfile.ZIP_DEFLATED) as out:
 for info in src.infolist():
  n=info.filename
  if n in ['lib/arm64-v8a/libexcavator.so','lib/armeabi-v7a/libexcavator.so']:
   abi=n.split('/')[1]
   out.writestr(f'lib/{abi}/libexcavator_original.so',src.read(n))
   out.write(r/f'native/build/android/{abi}/hybrid/libexcavator.so',n)
  else:out.writestr(info,src.read(n))
PY
JAVA_BIN=${JAVA_HOME:+$JAVA_HOME/bin/}java
"$JAVA_BIN" -cp "$ROOT/build/classes:$ROOT/tools/apksig-8.9.2.jar" SignApk "$ROOT/build/debug.keystore" "$ROOT/build/yct-restored-hybrid-unsigned.apk" "$ROOT/build/yct-restored-hybrid-debug.apk"
