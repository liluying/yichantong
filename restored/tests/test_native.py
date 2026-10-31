import ctypes as c, pathlib, struct, random, math, json
from arm64_oracle import Oracle
root=pathlib.Path(__file__).resolve().parents[1]
original=root/'android/lib/arm64-v8a/libexcavator.so'
o=Oracle(original)
lib=c.CDLL(str(root/'native/build/libexcavator_recovered.so'))
class Point(c.Structure):_fields_=[('x',c.c_double),('y',c.c_double),('z',c.c_double)]
class Tool(c.Structure):_fields_=[('AB',c.c_double),('TT',Point*4)]
lib.libexcavator_tool_from_distance.argtypes=[c.POINTER(Tool)]+[c.c_double]*5
lib.libexcavator_tool_check.argtypes=[c.POINTER(Tool)]
lib.libexcavator_get_tool.argtypes=[c.c_void_p,c.POINTER(Tool)]
lib.libexcavator_get_mode.argtypes=[c.c_void_p]
lib.libexcavator_init.argtypes=[c.c_void_p]
rng=random.Random(20261031);cases=0

def same_doubles(a,b):
 for x,y in zip(struct.unpack('<13d',a),struct.unpack('<13d',b)):
  assert (math.isnan(x) and math.isnan(y)) or x==y or math.isclose(x,y,rel_tol=2e-14,abs_tol=2e-14),(x,y)

samples=[(1.,3.,4.,5.,2.),(1.,1.,1.,2.,1.),(1.,1.,1.,3.,1.),(0.,0.,0.,0.,0.)]
for _ in range(1000):samples.append(tuple(rng.uniform(0.01,8.) for _ in range(5)))
for values in samples:
 t=Tool();o.write(0,b'\xa5'*104)
 a=o.call('libexcavator_tool_from_distance',[o.heap],values)
 b=lib.libexcavator_tool_from_distance(c.byref(t),*values)
 assert a==b,(values,a,b)
 same_doubles(o.read(0,104),bytes(t));cases+=1

for _ in range(1000):
 t=Tool();t.AB=rng.uniform(-2.,110.)
 for p in t.TT:p.x=rng.uniform(-9.,9.);p.y=rng.uniform(-9.,9.);p.z=rng.uniform(-9.,9.)
 o.write(0,bytes(t));a=o.call('libexcavator_tool_check',[o.heap]);b=lib.libexcavator_tool_check(c.byref(t));assert a==b,(a,b);cases+=1
for value in [0.,0.009999,0.01,100.,100.0001,float('nan'),float('inf'),-float('inf')]:
 t=Tool();t.AB=value;o.write(0,bytes(t));assert o.call('libexcavator_tool_check',[o.heap])==lib.libexcavator_tool_check(c.byref(t));cases+=1
for mode in [0,1,2,3,4,-1]:
 raw=bytearray(rng.randbytes(1024));struct.pack_into('<i',raw,0,mode);h=c.create_string_buffer(bytes(raw),1024)
 o.write(0,bytes(raw));assert o.call('libexcavator_get_mode',[o.heap])==lib.libexcavator_get_mode(h);cases+=1
 t=Tool();o.write(4096,bytes(t));a=o.call('libexcavator_get_tool',[o.heap,o.heap+4096]);b=lib.libexcavator_get_tool(h,c.byref(t));assert a==b;assert o.read(4096,104)==bytes(t);cases+=1
for _ in range(10):
 raw=rng.randbytes(1024);h=c.create_string_buffer(raw,1024);o.write(0,raw);o.call('libexcavator_init',[o.heap]);lib.libexcavator_init(h);assert o.read(0,1024)==h.raw==b'\0'*1024;cases+=1
# Verify mutations and packed tool format against original machine code.
lib.libexcavator_set_tool.argtypes=[c.c_void_p,c.POINTER(Tool)]
lib.libexcavator_tool_to_binary.argtypes=[c.POINTER(Tool),c.c_void_p,c.c_int]
lib.libexcavator_tool_from_binary.argtypes=[c.POINTER(Tool),c.c_void_p,c.c_int]
lib.libexcavator_version.restype=c.c_char_p
vaddr=o.call('libexcavator_version');assert bytes(o.u.mem_read(vaddr,64)).split(b'\0')[0]==lib.libexcavator_version();cases+=1
for _ in range(500):
 t=Tool();t.AB=rng.uniform(.01,5.)
 for p in t.TT:p.x=rng.uniform(-3.,3.);p.y=rng.uniform(-3.,3.);p.z=rng.uniform(-3.,3.)
 raw=bytearray(rng.randbytes(1024));struct.pack_into('<i',raw,0,rng.choice([0,1,2,3,4]));h=c.create_string_buffer(bytes(raw),1024)
 o.write(0,bytes(raw));o.write(4096,bytes(t));a=o.call('libexcavator_set_tool',[o.heap,o.heap+4096]);b=lib.libexcavator_set_tool(h,c.byref(t));assert a==b;assert o.read(0,1024)==h.raw;cases+=1
 for capacity in [0,55,56,128]:
  buf=c.create_string_buffer(b'\xa5'*128,128);o.write(4096,b'\xa5'*128);o.write(0,bytes(t))
  a=o.call('libexcavator_tool_to_binary',[o.heap,o.heap+4096,capacity]);b=lib.libexcavator_tool_to_binary(c.byref(t),buf,capacity)
  assert a==b,(a,b);assert o.read(4096,128)==buf.raw;cases+=1
 packed=bytes(buf.raw[:56])
 for data in [packed, packed[:55],bytes([packed[0]^1])+packed[1:],packed[:20]+bytes([packed[20]^1])+packed[21:]]:
  dest=Tool();o.write(4096,data);o.write(0,b'\xa5'*104)
  a=o.call('libexcavator_tool_from_binary',[o.heap,o.heap+4096,len(data)]);b=lib.libexcavator_tool_from_binary(c.byref(dest),c.create_string_buffer(data),len(data));assert a==b,(a,b);same_doubles(o.read(0,104),bytes(dest));cases+=1
class Mode1(c.Structure):_fields_=[('q',Point),('GL',c.c_double),('GR',c.c_double),('LR',c.c_double),('HG',c.c_double)]
lib.libexcavator_cali_mode_1_0.argtypes=[c.c_void_p,c.POINTER(Mode1)]
for _ in range(1000):
 p=Mode1(Point(*[rng.uniform(-.7,.7) for _ in range(3)]),*[rng.uniform(-.1,5.) for _ in range(4)])
 raw=rng.randbytes(1024);h=c.create_string_buffer(raw,1024);o.write(0,raw);o.write(4096,bytes(p))
 a=o.call('libexcavator_cali_mode_1_0',[o.heap,o.heap+4096]);b=lib.libexcavator_cali_mode_1_0(h,c.byref(p));assert a==b,(a,b)
 ob=o.read(0,1024);assert ob[:8]==h.raw[:8];assert ob[112:]==h.raw[112:]
 for x,y in zip(struct.unpack('<13d',ob[8:112]),struct.unpack('<13d',h.raw[8:112])):
  assert (math.isnan(x) and math.isnan(y)) or math.isclose(x,y,rel_tol=1e-12,abs_tol=1e-12),(x,y)
 cases+=1
result={'passed_cases':cases,'failed_cases':0,'original':str(original),'method':'Original ARM64 instruction emulation vs compiled recovered C; explicit libc/libm hooks','functions':['libexcavator_init','libexcavator_get_mode','libexcavator_tool_check','libexcavator_tool_from_distance','libexcavator_get_tool','libexcavator_version','libexcavator_set_tool','libexcavator_tool_to_binary','libexcavator_tool_from_binary','libexcavator_cali_mode_1_0'],'limits':'Does not validate real equipment or other native functions'}
(root/'evidence/native-tests.json').write_text(json.dumps(result,indent=2));print(json.dumps(result,indent=2))
