import ctypes as c,struct,pathlib,random,math,json
from arm64_oracle import Oracle
root=pathlib.Path(__file__).resolve().parents[1];o=Oracle(root/'android/lib/arm64-v8a/libexcavator.so');lib=c.CDLL(str(root/'native/build/libexcavator_recovered.so'))
class Point(c.Structure):_fields_=[('x',c.c_double),('y',c.c_double),('z',c.c_double)]
class Tool(c.Structure):_fields_=[('AB',c.c_double),('TT',Point*4)]
class Mode3(c.Structure):_fields_=[('q',Point),('sensor',Point)]+[(x,c.c_double) for x in ['HA','Hy','Ay','Ax','Dx','AD','BD','CD','BC']]+[('tool',Tool)]
lib.libexcavator_cali_mode_2_0.argtypes=[c.c_void_p,c.POINTER(Mode3)]
rng=random.Random(125);cases=0;success=0
for i in range(500):
 p=Mode3(Point(*[rng.uniform(-.5,.5) for _ in range(3)]),Point(*[rng.uniform(-.5,.5) for _ in range(3)]),2,1,1.2,.5,1,3,2,2,1.5,Tool(1.5))
 if i>0:
  p.HA=rng.uniform(.1,5);p.Hy=rng.uniform(0,2);p.Ay=rng.uniform(0,2);p.Ax=rng.uniform(-2,2);p.Dx=rng.uniform(-2,2);p.AD=rng.uniform(.1,4);p.BD=rng.uniform(.1,4);p.CD=rng.uniform(.1,4);p.BC=rng.uniform(.1,4);p.tool.AB=rng.uniform(.1,4)
 raw=rng.randbytes(1024);h=c.create_string_buffer(raw,1024);o.write(0,raw);o.write(4096,bytes(p));a=o.call('libexcavator_cali_mode_2_0',[o.heap,o.heap+4096]);b=lib.libexcavator_cali_mode_2_0(h,c.byref(p));assert a==b,(i,a,b)
 ob=o.read(0,1024);assert ob[:8]==h.raw[:8];assert ob[312:]==h.raw[312:]
 for j,(x,y) in enumerate(zip(struct.unpack('<38d',ob[8:312]),struct.unpack('<38d',h.raw[8:312]))):
  assert (math.isnan(x) and math.isnan(y)) or math.isclose(x,y,rel_tol=1e-11,abs_tol=1e-11),(i,a,hex(j*8+8),x,y)
 cases+=1;success+=a==0
result=dict(passed_cases=cases,failed_cases=0,successful_calibrations=success,function='libexcavator_cali_mode_2_0',method='Full 312-byte native state compared against original ARM64, using numeric tolerance')
(root/'evidence/mode2-tests.json').write_text(json.dumps(result,indent=2));print(result)
