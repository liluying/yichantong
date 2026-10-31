"""Execute only selected original math functions under Unicorn; no APK execution.
ELF relocations and small libc/libm hooks are explicit. Unsupported imports fail.
"""
import struct,math
from elftools.elf.elffile import ELFFile
from unicorn import Uc,UC_ARCH_ARM64,UC_MODE_ARM,UC_HOOK_CODE
from unicorn.arm64_const import *
class Oracle:
 def __init__(self,path):
  self.u=Uc(UC_ARCH_ARM64,UC_MODE_ARM);self.base=0x100000;self.heap=0x2000000;self.stop=0x3000000
  self.u.mem_map(self.base,0x1000000)
  self.u.mem_map(self.heap,0x100000)
  self.u.mem_map(self.stop,0x1000)
  self.u.mem_map(0x4000000,0x100000)
  self.u.mem_map(0x5000000,0x10000)
  self.u.mem_map(0x6000000,0x10000)
  self.u.reg_write(UC_ARM64_REG_TPIDR_EL0,0x6000000)
  self.u.mem_write(0x6000028,struct.pack('<Q',0x12345678))
  self.imports={};self.symbols={}
  with open(path,'rb') as f:
   e=ELFFile(f)
   for p in e.iter_segments():
    if p['p_type']=='PT_LOAD':self.u.mem_write(self.base+p['p_vaddr'],p.data())
   sym=e.get_section_by_name('.dynsym')
   for s in sym.iter_symbols():
    if s['st_shndx']!='SHN_UNDEF':self.symbols[s.name]=self.base+s['st_value']
   for sec in e.iter_sections():
    if sec['sh_type']!='SHT_RELA':continue
    for r in sec.iter_relocations():
     typ=r['r_info_type'];add=r['r_addend'];val=None
     if typ==1027:val=self.base+add
     elif typ in (257,1025,1026):
      s=sym.get_symbol(r['r_info_sym']);name=s.name
      if s['st_shndx']!='SHN_UNDEF':val=self.base+s['st_value']+add
      else:
       addr=0x5000000+16*len(self.imports);self.imports[addr]=name;val=addr+add
     if val is not None:self.u.mem_write(self.base+r['r_offset'],struct.pack('<Q',val))
  self.u.hook_add(UC_HOOK_CODE,self.hook,begin=0x5000000,end=0x500ffff)
 def getd(self,i):return struct.unpack('<d',struct.pack('<Q',self.u.reg_read(UC_ARM64_REG_D0+i)))[0]
 def setd(self,i,v):self.u.reg_write(UC_ARM64_REG_D0+i,struct.unpack('<Q',struct.pack('<d',v))[0])
 def hook(self,u,addr,size,unused):
  name=self.imports.get(addr)
  xs=[u.reg_read(UC_ARM64_REG_X0+i) for i in range(3)]
  if name=='memset':u.mem_write(xs[0],bytes([xs[1]&255])*xs[2]);u.reg_write(UC_ARM64_REG_X0,xs[0])
  elif name in ('memcpy','memmove'):u.mem_write(xs[0],bytes(u.mem_read(xs[1],xs[2])));u.reg_write(UC_ARM64_REG_X0,xs[0])
  elif name in ('malloc','_Znwm','_Znam'):
   at=self.nextalloc;self.nextalloc+=(xs[0]+15)&~15
   if self.nextalloc>=self.heap+0x100000:raise RuntimeError('Oracle allocator exhausted')
   u.reg_write(UC_ARM64_REG_X0,at)
  elif name in ('free','_ZdlPv','_ZdaPv'):pass
  elif name=='sincos':
   d=self.getd(0);u.mem_write(xs[0],struct.pack('<d',math.sin(d)));u.mem_write(xs[1],struct.pack('<d',math.cos(d)))
  elif name in ('sin','asin'):self.setd(0,getattr(math,name)(self.getd(0)))
  elif name=='atan2':self.setd(0,math.atan2(self.getd(0),self.getd(1)))
  elif name in ('__cxa_finalize','__cxa_atexit'):u.reg_write(UC_ARM64_REG_X0,0)
  else:raise RuntimeError('Unsupported imported call: '+str(name))
  u.reg_write(UC_ARM64_REG_PC,u.reg_read(UC_ARM64_REG_LR))
 def call(self,name,ints=(),doubles=()):
  self.nextalloc=self.heap+0x20000
  for i in range(8):self.u.reg_write(UC_ARM64_REG_X0+i,0)
  for i,v in enumerate(ints):self.u.reg_write(UC_ARM64_REG_X0+i,v&0xffffffffffffffff)
  for i,v in enumerate(doubles):self.setd(i,v)
  self.u.reg_write(UC_ARM64_REG_SP,0x40ff000);self.u.reg_write(UC_ARM64_REG_LR,self.stop)
  self.u.emu_start(self.symbols[name],self.stop,count=2000000)
  if self.u.reg_read(UC_ARM64_REG_PC)!=self.stop:raise RuntimeError('Instruction budget exhausted: '+name)
  return struct.unpack('<i',struct.pack('<I',self.u.reg_read(UC_ARM64_REG_W0)))[0]
 def write(self,offset,data):self.u.mem_write(self.heap+offset,data)
 def read(self,offset,size):return bytes(self.u.mem_read(self.heap+offset,size))
