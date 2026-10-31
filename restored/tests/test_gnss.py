import ctypes as c,pathlib,random,struct,math,json
from arm64_oracle import Oracle
root=pathlib.Path(__file__).resolve().parents[1]
o=Oracle(root/'android/lib/arm64-v8a/libyctdevice.so')
four=next(n for n in o.symbols if '18FourParamTransform' in n)
seven=next(n for n in o.symbols if '19SevenParamTransform' in n)
lib=c.CDLL(str(root/'native/build/libgnss_transform_recovered.so'))
for fun in ['gnss_four_transform','gnss_seven_transform']:
 getattr(lib,fun).argtypes=[c.c_void_p,c.c_void_p,c.c_void_p,c.c_size_t,c.c_int]
rng=random.Random(2309);passed=0
for kind,name in [('four',four),('seven',seven)]:
 for n in [0,1,2,6,7,8,15,32]:
  for inverse in [0,1]:
   for _ in range(20):
    if kind=='four':p=[rng.uniform(-100,100),rng.uniform(-100,100),rng.uniform(-3,3),rng.uniform(.5,2)]
    else:p=[rng.uniform(-100,100) for _ in range(3)]+[rng.uniform(-.1,.1) for _ in range(3)]+[rng.uniform(.5,2)]
    points=[rng.uniform(-10000,10000) for _ in range(n*3)];out=[rng.uniform(-10,10) for _ in range(n*3)]
    params=(c.c_double*len(p))(*p);inp=(c.c_double*max(1,n*3))(*points);dest=(c.c_double*max(1,n*3))(*out)
    o.write(0,bytes(params));o.write(0x1000,bytes(inp));o.write(0x8000,bytes(dest))
    o.write(0x200,struct.pack('<QQQ',o.heap+0x1000,o.heap+0x1000+n*24,o.heap+0x1000+n*24))
    o.write(0x240,struct.pack('<QQQ',o.heap+0x8000,o.heap+0x8000+n*24,o.heap+0x8000+n*24))
    a=o.call(name,[o.heap,o.heap+0x200,o.heap+0x240,inverse])
    b=getattr(lib,'gnss_'+kind+'_transform')(params,inp,dest,n,inverse)
    assert a==b,(kind,n,inverse,a,b)
    actual=struct.unpack('<'+'d'*(n*3),o.read(0x8000,n*24)) if n else []
    for i,(x,y) in enumerate(zip(actual,dest)):
     assert math.isclose(x,y,rel_tol=1e-12,abs_tol=1e-10),(kind,n,inverse,i,x,y)
    passed+=1
estimate=next(n for n in o.symbols if 'ComputeFourParameters' in n and n.startswith('_ZN10gnss_trans'))
lib.gnss_compute_four_parameters.argtypes=[c.c_void_p,c.c_void_p,c.c_size_t,c.c_void_p,c.c_void_p]
for n in [2,3,8,32]:
 for _ in range(25):
  p=[rng.uniform(-100,100),rng.uniform(-100,100),rng.uniform(-3,3),rng.uniform(.5,2)]
  x=[rng.uniform(-10000,10000) for _ in range(n*3)];sn=math.sin(p[2]);cs=math.cos(p[2]);y=[]
  for j in range(n):y.extend([p[0]+(cs*x[3*j]-sn*x[3*j+1])*p[3],p[1]+(sn*x[3*j]+cs*x[3*j+1])*p[3],rng.random()])
  src=(c.c_double*(n*3))(*x);tgt=(c.c_double*(n*3))(*y)
  for residual in [False,True]:
   dest=(c.c_double*4)();res=(c.c_double*(n*3))()
   o.write(0x1000,bytes(src));o.write(0x8000,bytes(tgt));o.write(0,b'\0'*32);o.write(0x10000,b'\0'*(n*24))
   o.write(0x200,struct.pack('<QQQ',o.heap+0x1000,o.heap+0x1000+n*24,o.heap+0x1000+n*24));o.write(0x240,struct.pack('<QQQ',o.heap+0x8000,o.heap+0x8000+n*24,o.heap+0x8000+n*24))
   a=o.call(estimate,[o.heap+0x200,o.heap+0x240,o.heap,o.heap+0x10000 if residual else 0]);b=lib.gnss_compute_four_parameters(src,tgt,n,dest,res if residual else None)
   assert a==b,(a,b)
   for va,vb in zip(struct.unpack('<4d',o.read(0,32)),dest):assert math.isclose(va,vb,rel_tol=1e-10,abs_tol=1e-9),(va,vb)
   if residual:
    for va,vb in zip(struct.unpack('<'+'d'*(n*3),o.read(0x10000,n*24)),res):assert math.isclose(va,vb,rel_tol=1e-9,abs_tol=1e-8),(va,vb)
   passed+=1
result=dict(passed_cases=passed,failed_cases=0,functions=['FourParamTransform','SevenParamTransform','ComputeFourParameters'],method='Original ARM64 libyctdevice.so numeric paths versus compiled C',limits='Scale-zero/degenerate logging paths and seven-parameter estimation are not covered')
(root/'evidence/gnss-tests.json').write_text(json.dumps(result,indent=2));print(json.dumps(result,indent=2))
