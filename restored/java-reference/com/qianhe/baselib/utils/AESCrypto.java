package com.qianhe.baselib.utils;

import android.text.TextUtils;
import java.nio.charset.StandardCharsets;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import net.lingala.zip4j.crypto.PBKDF2.BinTools;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class AESCrypto {
    private static final IvParameterSpec IV_SPEC;
    private static final SecretKeySpec KEY_SPEC;
    private static final byte[] FIXED_IV = new byte[16];
    private static final char[] HEX_CHARS = BinTools.hex.toCharArray();
    private static final byte[] HEX_DECODE = new byte[128];
    private static final ThreadLocal<Cipher> ENCRYPT_CIPHER = new ThreadLocal<Cipher>() { // from class: com.qianhe.baselib.utils.AESCrypto.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public Cipher initialValue() {
            return AESCrypto.newCipher();
        }
    };
    private static final ThreadLocal<Cipher> DECRYPT_CIPHER = new ThreadLocal<Cipher>() { // from class: com.qianhe.baselib.utils.AESCrypto.2
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public Cipher initialValue() {
            return AESCrypto.newCipher();
        }
    };

    static {
        int i = 0;
        while (true) {
            byte[] bArr = HEX_DECODE;
            if (i >= bArr.length) {
                break;
            }
            bArr[i] = -1;
            i++;
        }
        for (int i2 = 0; i2 < 10; i2++) {
            HEX_DECODE[i2 + 48] = (byte) i2;
        }
        for (int i3 = 0; i3 < 6; i3++) {
            byte[] bArr2 = HEX_DECODE;
            byte b = (byte) (i3 + 10);
            bArr2[i3 + 65] = b;
            bArr2[i3 + 97] = b;
        }
        try {
            KEY_SPEC = new SecretKeySpec(getKeyBytes("xiaowenqiang"), "AES");
            IV_SPEC = new IvParameterSpec(FIXED_IV);
        } catch (Exception e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Cipher newCipher() {
        try {
            return Cipher.getInstance("AES/CBC/PKCS5Padding");
        } catch (Exception e) {
            throw new IllegalStateException("AES Cipher init failed", e);
        }
    }

    private static byte[] getKeyBytes(String str) {
        byte[] bArr = new byte[16];
        System.arraycopy(MessageDigest.getInstance("SHA-256").digest(str.getBytes(StandardCharsets.UTF_8)), 0, bArr, 0, 16);
        return bArr;
    }

    public static String encrypt(String str) throws InvalidKeyException, InvalidAlgorithmParameterException {
        if (str == null) {
            return null;
        }
        Cipher cipher = ENCRYPT_CIPHER.get();
        cipher.init(1, KEY_SPEC, IV_SPEC);
        return bytesToHex(cipher.doFinal(str.getBytes(StandardCharsets.UTF_8)));
    }

    public static boolean isEncrypted(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        int length = str.length();
        if ((length & 1) != 0 || length < 32) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt >= 128 || HEX_DECODE[cCharAt] < 0) {
                return false;
            }
        }
        return true;
    }

    public static String decrypt(String str) throws InvalidKeyException, InvalidAlgorithmParameterException {
        byte[] bArrHexToBytes = hexToBytes(str);
        if (bArrHexToBytes == null) {
            return "";
        }
        Cipher cipher = DECRYPT_CIPHER.get();
        cipher.init(2, KEY_SPEC, IV_SPEC);
        return new String(cipher.doFinal(bArrHexToBytes), StandardCharsets.UTF_8);
    }

    private static String bytesToHex(byte[] bArr) {
        char[] cArr = new char[bArr.length << 1];
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i];
            int i2 = i << 1;
            char[] cArr2 = HEX_CHARS;
            cArr[i2] = cArr2[(b & 255) >>> 4];
            cArr[i2 + 1] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    private static byte[] hexToBytes(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int length = str.length();
        if ((length & 1) != 0) {
            throw new IllegalArgumentException("HEX字符串长度必须为偶数");
        }
        byte[] bArr = new byte[length >> 1];
        for (int i = 0; i < length; i += 2) {
            char cCharAt = str.charAt(i);
            char cCharAt2 = str.charAt(i + 1);
            if (cCharAt >= 128 || cCharAt2 >= 128) {
                throw new IllegalArgumentException("非法HEX字符");
            }
            byte[] bArr2 = HEX_DECODE;
            byte b = bArr2[cCharAt];
            byte b2 = bArr2[cCharAt2];
            if (b < 0 || b2 < 0) {
                throw new IllegalArgumentException("非法HEX字符");
            }
            bArr[i >> 1] = (byte) ((b << 4) | b2);
        }
        return bArr;
    }
}
