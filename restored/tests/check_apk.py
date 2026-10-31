import json,pathlib,zipfile,hashlib
from loguru import logger
logger.remove()
from androguard.core.apk import APK
from androguard.core.dex import DEX
root=pathlib.Path(__file__).resolve().parents[1]
apk=root/'build/yct-restored-debug.apk';a=APK(str(apk))
ns='{http://schemas.android.com/apk/res/android}'
assert a.get_package()=='com.qianhe.yct'
assert a.get_android_manifest_xml().find('application').get(ns+'name')=='com.qianhe.yct.application.YCTApplication'
expected=set()
for folder in ['smali','smali_classes2']:
 for p in (root/'android'/folder).rglob('*.smali'):
  for line in p.open():
   if line.startswith('.class '):expected.add(line.strip().split()[-1]);break
actual=set();native=0
with zipfile.ZipFile(apk) as z:
 assert z.testzip() is None
 for n in z.namelist():
  if n.startswith('classes') and n.endswith('.dex'):
   actual.update(c.get_name() for c in DEX(z.read(n)).get_classes())
  if n.startswith('lib/') and n.endswith('.so'):
   assert z.read(n)==(root/'android'/n).read_bytes(),n
   native+=1
assert actual==expected,dict(missing=sorted(expected-actual),extra=sorted(actual-expected))
components=a.get_activities()+a.get_services()+a.get_receivers()+a.get_providers()
missing=[x for x in components if 'L'+x.replace('.','/')+';' not in actual]
assert not missing,missing
assert 'Lcom/qianhe/yct/application/YCTApplication;' in actual
result=dict(apk=str(apk),sha256=hashlib.sha256(apk.read_bytes()).hexdigest(),classes=len(actual),manifest_components_present=len(components),native_libraries_unchanged=native,zip_crc='passed',limitations='Static rebuild checks only; no Android installation or hardware validation')
(root/'evidence/apk-check.json').write_text(json.dumps(result,indent=2));print(json.dumps(result,indent=2))
