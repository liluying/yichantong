package com.qh.xcad;

import android.os.MemoryFile;
import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import net.lingala.zip4j.util.InternalZipConstants;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
final class Shm {
    private Shm() {
    }

    static ParcelFileDescriptor toAshmem(String str, byte[] bArr) throws NoSuchMethodException, IOException, SecurityException {
        MemoryFile memoryFile = new MemoryFile(str, Math.max(1, bArr.length));
        memoryFile.writeBytes(bArr, 0, 0, bArr.length);
        Method declaredMethod = MemoryFile.class.getDeclaredMethod("getFileDescriptor", new Class[0]);
        declaredMethod.setAccessible(true);
        return ParcelFileDescriptor.dup((FileDescriptor) declaredMethod.invoke(memoryFile, new Object[0]));
    }

    static ParcelFileDescriptor toTempFile(File file, byte[] bArr) throws IOException {
        File fileCreateTempFile = File.createTempFile("xcadparse", ".bin", file);
        FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
        try {
            fileOutputStream.write(bArr);
            fileOutputStream.close();
            ParcelFileDescriptor parcelFileDescriptorOpen = ParcelFileDescriptor.open(fileCreateTempFile, 268435456);
            fileCreateTempFile.delete();
            return parcelFileDescriptorOpen;
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static byte[] readAll(ParcelFileDescriptor parcelFileDescriptor, int i) throws IOException {
        byte[] bArr = new byte[i];
        FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptor.getFileDescriptor());
        int i2 = 0;
        while (i2 < i) {
            try {
                int i3 = fileInputStream.read(bArr, i2, i - i2);
                if (i3 < 0) {
                    break;
                }
                i2 += i3;
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (i2 != i) {
            throw new IOException("共享内存读取不完整: " + i2 + InternalZipConstants.ZIP_FILE_SEPARATOR + i);
        }
        fileInputStream.close();
        return bArr;
    }
}
