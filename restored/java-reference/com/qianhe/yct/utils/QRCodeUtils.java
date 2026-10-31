package com.qianhe.yct.utils;

import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.qianhe.yct.utils.QRCodeUtils;
import com.tencent.smtt.sdk.WebView;
import java.util.HashMap;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class QRCodeUtils {
    public static void showQRCode(ImageView imageView, String str) {
        if (imageView == null || imageView.getContext() == null) {
            return;
        }
        new Thread(new AnonymousClass1(imageView, str)).start();
    }

    /* renamed from: com.qianhe.yct.utils.QRCodeUtils$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ ImageView val$imageView;
        final /* synthetic */ String val$url;

        AnonymousClass1(ImageView imageView, String str) {
            this.val$imageView = imageView;
            this.val$url = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.val$imageView.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
                int measuredWidth = this.val$imageView.getMeasuredWidth();
                int measuredHeight = this.val$imageView.getMeasuredHeight();
                QRCodeWriter qRCodeWriter = new QRCodeWriter();
                HashMap map = new HashMap();
                map.put(EncodeHintType.CHARACTER_SET, "UTF-8");
                map.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.H);
                map.put(EncodeHintType.MARGIN, 1);
                BitMatrix bitMatrixEncode = qRCodeWriter.encode(this.val$url, BarcodeFormat.QR_CODE, measuredWidth, measuredHeight, map);
                final Bitmap bitmapCreateBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_4444);
                int[] iArr = new int[measuredWidth * measuredHeight];
                for (int i = 0; i < measuredHeight; i++) {
                    for (int i2 = 0; i2 < measuredWidth; i2++) {
                        iArr[(i * measuredWidth) + i2] = bitMatrixEncode.get(i2, i) ? WebView.NIGHT_MODE_COLOR : -1;
                    }
                }
                bitmapCreateBitmap.setPixels(iArr, 0, measuredWidth, 0, 0, measuredWidth, measuredHeight);
                final ImageView imageView = this.val$imageView;
                imageView.post(new Runnable() { // from class: com.qianhe.yct.utils.QRCodeUtils$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        QRCodeUtils.AnonymousClass1.m2900$r8$lambda$2BxXB2hO3Y1poIKxisNDYstiwE(imageView, bitmapCreateBitmap);
                    }
                });
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        /* renamed from: $r8$lambda$2BxXB2hO3Y1poIKxisNDYst-iwE, reason: not valid java name */
        public static /* synthetic */ void m2900$r8$lambda$2BxXB2hO3Y1poIKxisNDYstiwE(ImageView imageView, Bitmap bitmap) {
            if (imageView.getDrawable() != null) {
                imageView.setImageBitmap(bitmap);
            }
        }
    }
}
