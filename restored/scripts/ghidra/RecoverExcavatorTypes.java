import ghidra.app.script.GhidraScript;
import ghidra.app.cmd.function.ApplyFunctionSignatureCmd;
import ghidra.app.util.cparser.C.CParser;
import ghidra.program.model.data.*;
import ghidra.program.model.symbol.SourceType;
import ghidra.program.model.listing.*;
public class RecoverExcavatorTypes extends GhidraScript {
 void sig(CParser parser,long offset,String declaration)throws Exception{
  DataType t=parser.parse(declaration);
  if(!(t instanceof FunctionDefinition))throw new Exception("not signature "+declaration);
  new ApplyFunctionSignatureCmd(toAddr(offset), (FunctionDefinition)t, SourceType.USER_DEFINED).applyTo(currentProgram);
 }
 public void run()throws Exception{
  CParser p=new CParser(currentProgram.getDataTypeManager());
  p.parse("typedef struct {double w,x,y,z;} Quat;");
  p.parse("typedef struct {double x,y,z;} Point;");
  long[] qaddr={0x1070a4,0x107170,0x1071e4,0x107370,0x107590,0x1076b8};
  String[] qsig={"Quat quat_from_xyz(double x,double y,double z);","Quat quat_conjugate(Quat q);","Quat quat_from_euler(double roll,double pitch,double yaw);","Quat quat_multiply(Quat a,Quat b);","Quat quat_from_vectors(Point a,Point b);","Quat quat_6b8(Quat q);"};
  for(int i=0;i<qaddr.length;i++)sig(p,qaddr[i],qsig[i]);
  sig(p,0x1072b8,"Point quat_to_euler(Quat q);");
  sig(p,0x107104,"int quat_is_valid(Quat q);");
  sig(p,0x106e3c,"Point point_make(double x,double y,double z);");
  sig(p,0x106e40,"Point point_scale(Point a,double k);");
  sig(p,0x106e60,"Point point_add(Point a,Point b);");
  sig(p,0x106e70,"Point point_subtract(Point a,Point b);");
  sig(p,0x107478,"Point quat_rotate(Quat q,Point p);");
  sig(p,0x1077b0,"unsigned short crc16_update(unsigned short crc,unsigned char *data,int size);");
  FunctionIterator it=currentProgram.getFunctionManager().getFunctions(true);
  while(it.hasNext()){
   Function f=it.next();long a=f.getEntryPoint().getOffset();
   if(a>=0x105938&&a<0x107800&&!f.isExternal())f.setInline(true);
  }
 }
}
