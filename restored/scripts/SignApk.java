import com.android.apksig.*;
import java.io.*;
import java.security.*;
import java.security.cert.X509Certificate;
import java.util.*;
public class SignApk {
 public static void main(String[] args) throws Exception {
  if(args[0].equals("verify")) {
   ApkVerifier.Result r=new ApkVerifier.Builder(new File(args[1])).build().verify();
   System.out.println("verified="+r.isVerified()+" v1="+r.isVerifiedUsingV1Scheme()+" v2="+r.isVerifiedUsingV2Scheme()+" v3="+r.isVerifiedUsingV3Scheme());
   if(!r.isVerified()) throw new IllegalStateException(r.getErrors().toString());return;
  }
  KeyStore k=KeyStore.getInstance("PKCS12");
  try(InputStream in=new FileInputStream(args[0])){k.load(in,"android".toCharArray());}
  PrivateKey key=(PrivateKey)k.getKey("androiddebugkey","android".toCharArray());
  List<X509Certificate> certs=new ArrayList<>();
  for(java.security.cert.Certificate c:k.getCertificateChain("androiddebugkey"))certs.add((X509Certificate)c);
  ApkSigner.SignerConfig c=new ApkSigner.SignerConfig.Builder("local-debug",key,certs).build();
  new ApkSigner.Builder(List.of(c)).setInputApk(new File(args[1])).setOutputApk(new File(args[2])).setMinSdkVersion(21).setV1SigningEnabled(true).setV2SigningEnabled(true).setV3SigningEnabled(true).build().sign();
  main(new String[]{"verify",args[2]});
 }
}
