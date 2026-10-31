from elftools.elf.elffile import ELFFile
from pathlib import Path
import json
root=Path(__file__).resolve().parents[1]
def exports(p):
 with p.open('rb') as f:return {s.name for s in ELFFile(f).get_section_by_name('.dynsym').iter_symbols() if s['st_shndx']!='SHN_UNDEF' and s.name.startswith('libexcavator_')}
result=[]
for abi in ['arm64-v8a','armeabi-v7a']:
 original=exports(root/f'android/lib/{abi}/libexcavator.so')
 hybrid=exports(root/f'native/build/android/{abi}/hybrid/libexcavator.so')
 recovered=exports(root/f'native/build/android/{abi}/libexcavator_recovered.so')
 assert original==hybrid,(abi,original-hybrid,hybrid-original)
 assert recovered<original
 result.append(dict(abi=abi,original_api_count=len(original),recovered=sorted(recovered),forwarded=sorted(original-recovered)))
(root/'evidence/native-coverage.json').write_text(json.dumps(result,indent=2));print(json.dumps(result,indent=2))
