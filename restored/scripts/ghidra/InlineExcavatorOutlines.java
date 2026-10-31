import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.*;
public class InlineExcavatorOutlines extends GhidraScript {
 public void run() throws Exception {
  FunctionIterator it=currentProgram.getFunctionManager().getFunctions(true);int n=0;
  while(it.hasNext()){
   Function f=it.next();long a=f.getEntryPoint().getOffset();
   if(a>=0x105a00&&a<0x1062d0&&!f.isExternal()){f.setInline(true);n++;}
  }
  println("Marked machine outlined helper functions inline: "+n);
 }
}
