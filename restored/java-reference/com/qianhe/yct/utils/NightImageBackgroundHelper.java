package com.qianhe.yct.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import androidx.core.content.ContextCompat;
import com.qianhe.yct.R$color;
import com.tencent.smtt.sdk.TbsListener;
import net.lingala.zip4j.util.InternalZipConstants;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class NightImageBackgroundHelper {
    public static boolean isNight(Context context) {
        return context != null && (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    public static boolean isWhiteBackground(Bitmap bitmap) {
        if (bitmap != null && !bitmap.isRecycled()) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            if (width > 0 && height > 0) {
                int[] iArr = new int[width * height];
                bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
                return isMostlyWhiteBackground(iArr);
            }
        }
        return false;
    }

    public static void remap(Context context, Bitmap bitmap) {
        if (context == null || bitmap == null || bitmap.isRecycled() || !isNight(context)) {
            return;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        int[] iArr = new int[width * height];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        remapPixels(iArr, ContextCompat.getColor(context, R$color.card_background), ContextCompat.getColor(context, R$color.white));
        bitmap.setPixels(iArr, 0, width, 0, 0, width, height);
    }

    private static boolean isMostlyWhiteBackground(int[] iArr) {
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < iArr.length; i4 += 16) {
            int i5 = iArr[i4];
            if (Color.alpha(i5) >= 16) {
                i++;
                int iRed = Color.red(i5);
                int iGreen = Color.green(i5);
                int iBlue = Color.blue(i5);
                if (Math.max(iRed, Math.max(iGreen, iBlue)) - Math.min(iRed, Math.min(iGreen, iBlue)) <= 40) {
                    int i6 = (((iRed * 299) + (iGreen * 587)) + (iBlue * TbsListener.ErrorCode.DOWNLOAD_NOT_WIFI_ERROR)) / InternalZipConstants.AES_HASH_ITERATIONS;
                    if (i6 >= 220) {
                        i2++;
                    } else if (i6 <= 40) {
                        i3++;
                    }
                }
            }
        }
        return i > 0 && i2 > i / 4 && i2 > i3;
    }

    private static void remapPixels(int[] iArr, int i, int i2) {
        int iRed = Color.red(i);
        int iGreen = Color.green(i);
        int iBlue = Color.blue(i);
        int iRed2 = Color.red(i2);
        int iGreen2 = Color.green(i2);
        int iBlue2 = Color.blue(i2);
        for (int i3 = 0; i3 < iArr.length; i3++) {
            int i4 = iArr[i3];
            int iAlpha = Color.alpha(i4);
            if (iAlpha != 0) {
                int iRed3 = Color.red(i4);
                int iGreen3 = Color.green(i4);
                int iBlue3 = Color.blue(i4);
                if (Math.max(iRed3, Math.max(iGreen3, iBlue3)) - Math.min(iRed3, Math.min(iGreen3, iBlue3)) <= 40) {
                    float f = (((iRed3 * 299) + (iGreen3 * 587)) + (iBlue3 * TbsListener.ErrorCode.DOWNLOAD_NOT_WIFI_ERROR)) / 255000.0f;
                    float f2 = 1.0f - f;
                    iArr[i3] = Color.argb(iAlpha, Math.round((iRed2 * f2) + (iRed * f)), Math.round((iGreen2 * f2) + (iGreen * f)), Math.round((iBlue2 * f2) + (iBlue * f)));
                }
            }
        }
    }
}
