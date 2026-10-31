import pathlib,zipfile,json,hashlib
r=pathlib.Path(__file__).resolve().parents[1]
with zipfile.ZipFile(r/'build/yct-restored-debug.apk') as baseline,zipfile.ZipFile(r/'build/yct-restored-hybrid-debug.apk') as hybrid:
 assert hybrid.testzip() is None
 allowed={f'lib/{a}/libexcavator.so' for a in ['arm64-v8a','armeabi-v7a']}
 for name in baseline.namelist():
  if name.startswith('META-INF/'):continue
  if name in allowed:
   abi=name.split('/')[1]
   assert hybrid.read(name)==(r/f'native/build/android/{abi}/hybrid/libexcavator.so').read_bytes()
   assert hybrid.read(f'lib/{abi}/libexcavator_original.so')==baseline.read(name)
  else:assert baseline.read(name)==hybrid.read(name),name
result=dict(apk='build/yct-restored-hybrid-debug.apk',sha256=hashlib.sha256((r/'build/yct-restored-hybrid-debug.apk').read_bytes()).hexdigest(),zip_crc='passed',original_library_forwarding='two original libraries retained byte-for-byte',wrapper='ARM64 and ARMv7 wrapper matches compiled output',runtime='not tested on Android hardware')
(r/'evidence/hybrid-check.json').write_text(json.dumps(result,indent=2));print(json.dumps(result,indent=2))
