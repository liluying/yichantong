package com.qianhe.yct.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.widget.ImageView;
import com.qianhe.yct.R$id;
import com.tencent.mm.opensdk.constants.ConstantsAPI;
import pl.droidsonroids.gif.GifDrawable;
import pl.droidsonroids.gif.GifDrawableBuilder;
import pl.droidsonroids.gif.GifOptions;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class GifLoadHelper {
    private static volatile int sSampleSize = -1;

    public static void setGif(ImageView imageView, int i) {
        GifDrawable gifDrawableBuild;
        if (imageView == null || i == 0) {
            return;
        }
        Object tag = imageView.getTag(R$id.tag_gif_res_id);
        Drawable drawable = imageView.getDrawable();
        if ((tag instanceof Integer) && ((Integer) tag).intValue() == i && (drawable instanceof GifDrawable)) {
            GifDrawable gifDrawable = (GifDrawable) drawable;
            if (gifDrawable.isRecycled() || gifDrawable.isRunning()) {
                return;
            }
            gifDrawable.start();
            return;
        }
        try {
            GifOptions gifOptions = new GifOptions();
            gifOptions.setInSampleSize(resolveSampleSize(imageView.getContext()));
            gifDrawableBuild = ((GifDrawableBuilder) ((GifDrawableBuilder) new GifDrawableBuilder().from(imageView.getResources(), i)).options(gifOptions)).build();
            try {
                if ((drawable instanceof GifDrawable) && drawable != gifDrawableBuild) {
                    ((GifDrawable) drawable).recycle();
                }
                imageView.setImageDrawable(gifDrawableBuild);
                imageView.setTag(R$id.tag_gif_res_id, Integer.valueOf(i));
                imageView.requestLayout();
                imageView.invalidate();
            } catch (Throwable unused) {
                if (gifDrawableBuild != null && !gifDrawableBuild.isRecycled()) {
                    gifDrawableBuild.recycle();
                }
                try {
                    if (drawable instanceof GifDrawable) {
                        ((GifDrawable) drawable).recycle();
                    }
                    imageView.setImageResource(i);
                    imageView.setTag(R$id.tag_gif_res_id, Integer.valueOf(i));
                } catch (Throwable unused2) {
                    if (drawable != null && !(drawable instanceof GifDrawable)) {
                        imageView.setImageDrawable(drawable);
                    }
                    imageView.setTag(R$id.tag_gif_res_id, null);
                }
            }
        } catch (Throwable unused3) {
            gifDrawableBuild = null;
        }
    }

    public static void setPlaying(ImageView imageView, boolean z) {
        if (imageView == null) {
            return;
        }
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof GifDrawable) {
            GifDrawable gifDrawable = (GifDrawable) drawable;
            if (gifDrawable.isRecycled()) {
                return;
            }
            if (z) {
                if (gifDrawable.isRunning()) {
                    return;
                }
                gifDrawable.start();
            } else if (gifDrawable.isRunning()) {
                gifDrawable.pause();
            }
        }
    }

    public static void recycle(ImageView imageView) {
        if (imageView == null) {
            return;
        }
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof GifDrawable) {
            GifDrawable gifDrawable = (GifDrawable) drawable;
            if (!gifDrawable.isRecycled()) {
                gifDrawable.recycle();
            }
        }
        imageView.setImageDrawable(null);
        imageView.setTag(R$id.tag_gif_res_id, null);
    }

    static int resolveSampleSize(Context context) {
        long j;
        if (sSampleSize > 0) {
            return sSampleSize;
        }
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager != null) {
            i = activityManager.isLowRamDevice() ? 3 : 1;
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            j = memoryInfo.totalMem / 1048576;
            if (j <= 3072 && i < 2) {
                i = 2;
            }
            if (j <= ConstantsAPI.AppSupportContentFlag.MMAPP_SUPPORT_XLSX && i < 3) {
                i = 3;
            }
        } else {
            j = Long.MAX_VALUE;
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int i = displayMetrics.densityDpi;
        if (i <= 240 && i < 2) {
            i = 2;
        }
        if (i <= 160 && i < 3) {
            i = 3;
        }
        int i2 = displayMetrics.widthPixels;
        if (i2 > 0 && i2 < 900 && i < 2) {
            i = 2;
        }
        int i3 = (i2 <= 0 || i2 >= 720 || i >= 3) ? i : 3;
        int i4 = (Runtime.getRuntime().availableProcessors() > 4 || j > ConstantsAPI.AppSupportContentFlag.MMAPP_SUPPORT_PDF || i3 >= 2) ? i3 : 2;
        sSampleSize = i4;
        return i4;
    }
}
