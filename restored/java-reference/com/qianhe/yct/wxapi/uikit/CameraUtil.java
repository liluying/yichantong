package com.qianhe.yct.wxapi.uikit;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.format.DateFormat;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class CameraUtil {
    private static final String TAG = "MicroMsg.SDK.CameraUtil";
    private static String filePath;

    private CameraUtil() {
    }

    public static boolean takePhoto(Activity activity, String str, String str2, int i) {
        filePath = str + str2;
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        if (!new File(str).exists()) {
            return false;
        }
        intent.putExtra("output", Uri.fromFile(new File(filePath)));
        try {
            activity.startActivityForResult(intent, i);
            return true;
        } catch (ActivityNotFoundException unused) {
            return false;
        }
    }

    public static String getResultPhotoPath(Context context, Intent intent, String str) {
        if (filePath != null && new File(filePath).exists()) {
            return filePath;
        }
        return resolvePhotoFromIntent(context, intent, str);
    }

    public static String resolvePhotoFromIntent(Context context, Intent intent, String str) throws IOException {
        if (context == null || intent == null || str == null) {
            return null;
        }
        Cursor cursorQuery = context.getContentResolver().query(Uri.parse(intent.toURI()), null, null, null, null);
        if (cursorQuery != null && cursorQuery.getCount() > 0) {
            try {
                cursorQuery.moveToFirst();
                int columnIndex = cursorQuery.getColumnIndex("_data");
                String str2 = "orition: " + cursorQuery.getString(cursorQuery.getColumnIndex("orientation"));
                string = cursorQuery.getString(columnIndex);
                String str3 = "photo from resolver, path:" + string;
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (intent.getData() != null) {
            String path = intent.getData().getPath();
            string = new File(path).exists() ? path : null;
            String str4 = "photo file from data, path:" + string;
        } else {
            if (intent.getAction() == null || !intent.getAction().equals("inline-data")) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return null;
            }
            try {
                string = str + (getMessageDigest(DateFormat.format("yyyy-MM-dd-HH-mm-ss", System.currentTimeMillis()).toString().getBytes()) + ".jpg");
                Bitmap bitmap = (Bitmap) intent.getExtras().get("data");
                File file = new File(string);
                if (!file.exists()) {
                    file.createNewFile();
                }
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, bufferedOutputStream);
                bufferedOutputStream.close();
                String str5 = "photo image from data, path:" + string;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return string;
    }

    private static final String getMessageDigest(byte[] bArr) throws NoSuchAlgorithmException {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', AngleFormat.CH_DEG_ABBREV, 'e', 'f'};
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            byte[] bArrDigest = messageDigest.digest();
            char[] cArr2 = new char[bArrDigest.length * 2];
            int i = 0;
            for (byte b : bArrDigest) {
                int i2 = i + 1;
                cArr2[i] = cArr[(b >>> 4) & 15];
                i += 2;
                cArr2[i2] = cArr[b & 15];
            }
            return new String(cArr2);
        } catch (Exception unused) {
            return null;
        }
    }
}
