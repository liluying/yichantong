// Run with Ghidra analyzeHeadless; exports static pseudocode, not original source.
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import ghidra.program.model.listing.*;
import java.io.*;
public class ExportAlgorithms extends GhidraScript {
 public void run() throws Exception {
  String[] args=getScriptArgs(); File out=new File(args[0]);out.mkdirs();
  String filter=args.length>1?args[1]:"";
  DecompInterface d=new DecompInterface();d.openProgram(currentProgram);
  int ok=0, failed=0, skipped=0;
  try(PrintWriter idx=new PrintWriter(new File(out,"index.tsv"))){
   idx.println("address\tname\tstatus\tfile");
   FunctionIterator it=currentProgram.getFunctionManager().getFunctions(true);
   while(it.hasNext()&&!monitor.isCancelled()){
    Function f=it.next();String name=f.getName(true);
    if(f.isExternal()||f.isThunk()||(!filter.isEmpty()&&!name.matches(filter))){skipped++;continue;}
    String file=f.getEntryPoint()+"_"+f.getName().replaceAll("[^a-zA-Z0-9_.-]","_");
    if(file.length()>160)file=file.substring(0,160);
    file+=".c";
    DecompileResults r=d.decompileFunction(f,45,monitor);
    if(r.decompileCompleted()&&r.getDecompiledFunction()!=null){
     try(PrintWriter w=new PrintWriter(new File(out,file))){
      w.println("/* Artifact: "+currentProgram.getName()+" | Address: "+f.getEntryPoint()+" | Ghidra static pseudocode; types require review. */");
      w.print(r.getDecompiledFunction().getC());
     }
     idx.println(f.getEntryPoint()+"\t"+name+"\tok\t"+file);ok++;
    }else{idx.println(f.getEntryPoint()+"\t"+name+"\tfailed: "+r.getErrorMessage().replace('\n',' ')+"\t");failed++;}
   }
  } finally {d.dispose();}
  println("EXPORT_RESULT ok="+ok+" failed="+failed+" skipped="+skipped);
 }
}
