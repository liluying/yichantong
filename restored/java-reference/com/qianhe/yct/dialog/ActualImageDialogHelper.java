package com.qianhe.yct.dialog;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import androidx.viewpager2.widget.ViewPager2;
import com.qianhe.yct.R$color;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.R$string;
import com.qianhe.yct.adapter.ActualImageGifAdapter;
import com.qianhe.yct.dialog.ActualImageDialogHelper;
import com.tencent.smtt.sdk.TbsListener;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class ActualImageDialogHelper {
    public static void showCarousel(Context context, Configuration configuration, final LinkedHashMap<String, List<Integer>> linkedHashMap, String str, boolean z) {
        final CarouselController carouselController;
        final Dialog dialog = new Dialog(context);
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.dialog_actual_image, (ViewGroup) null);
        viewInflate.setBackgroundResource(R$drawable.bg_dialog);
        dialog.setContentView(viewInflate);
        dialog.setCancelable(true);
        dialog.setCanceledOnTouchOutside(true);
        int i = context.getResources().getDisplayMetrics().widthPixels;
        int i2 = context.getResources().getDisplayMetrics().heightPixels;
        int i3 = 0;
        boolean z2 = configuration.orientation == 2;
        int i4 = (int) (i * (z2 ? 0.6f : 0.9f));
        int iCalculateMaxPagerHeight = calculateMaxPagerHeight(context, z2, i2, z);
        Window window = dialog.getWindow();
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = i4;
            attributes.height = -2;
            window.setAttributes(attributes);
            window.setBackgroundDrawableResource(R.color.transparent);
        }
        ViewPager2 viewPager2 = (ViewPager2) viewInflate.findViewById(R$id.viewPager);
        final HorizontalScrollView horizontalScrollView = (HorizontalScrollView) viewInflate.findViewById(R$id.hsvImageGroups);
        final LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R$id.lltImageGroups);
        LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R$id.lltPageIndicator);
        viewInflate.findViewById(R$id.gifIv).setVisibility(8);
        viewPager2.setVisibility(0);
        viewInflate.findViewById(R$id.tvCancel).setVisibility(8);
        TextView textView = (TextView) viewInflate.findViewById(R$id.tvSure);
        textView.setText(R$string.close);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ActualImageDialogHelper$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialog.dismiss();
            }
        });
        String next = linkedHashMap.containsKey(str) ? str : linkedHashMap.keySet().iterator().next();
        List<Integer> list = linkedHashMap.get(next);
        ActualImageGifAdapter actualImageGifAdapter = new ActualImageGifAdapter();
        if (list != null && !list.isEmpty()) {
            int iCalculateImageHeight = calculateImageHeight(context, list.get(0).intValue(), i4 - dp(context, 30), iCalculateMaxPagerHeight);
            if (iCalculateImageHeight > 0) {
                viewPager2.getLayoutParams().height = iCalculateImageHeight;
            }
        }
        viewPager2.setAdapter(actualImageGifAdapter);
        CarouselController carouselController2 = new CarouselController(context, viewPager2, actualImageGifAdapter, linearLayout2, iCalculateMaxPagerHeight);
        final ArrayList arrayList = new ArrayList();
        if (z && linkedHashMap.size() > 1) {
            horizontalScrollView.setVisibility(0);
            horizontalScrollView.setClipToPadding(false);
            int iDp = dp(context, 8);
            int iDp2 = dp(context, 12);
            int iDp3 = dp(context, 6);
            int size = linkedHashMap.size();
            for (Map.Entry<String, List<Integer>> entry : linkedHashMap.entrySet()) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                final CarouselController carouselController3 = carouselController2;
                int i5 = size;
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                if (i3 < i5 - 1) {
                    layoutParams.setMarginEnd(iDp);
                }
                appCompatTextView.setLayoutParams(layoutParams);
                i3++;
                appCompatTextView.setText(entry.getKey());
                appCompatTextView.setPadding(iDp2, iDp3, iDp2, iDp3);
                appCompatTextView.setBackgroundResource(R$drawable.sel_theme_border_and_white);
                appCompatTextView.setTextColor(ContextCompat.getColorStateList(context, R$color.sel_theme_color));
                appCompatTextView.setTextSize(1, 16.0f);
                appCompatTextView.setTag(entry.getKey());
                appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.ActualImageDialogHelper$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ActualImageDialogHelper.m2044$r8$lambda$G1AyrKzoyWuprY0QQ5ko4jm0hI(horizontalScrollView, linearLayout, arrayList, carouselController3, linkedHashMap, view);
                    }
                });
                linearLayout.addView(appCompatTextView);
                arrayList.add(appCompatTextView);
                size = i5;
                next = next;
                carouselController2 = carouselController3;
            }
            carouselController = carouselController2;
            final String str2 = next;
            centerGroupButtons(horizontalScrollView, linearLayout, new Runnable() { // from class: com.qianhe.yct.dialog.ActualImageDialogHelper$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    ActualImageDialogHelper.selectGroupButton(horizontalScrollView, linearLayout, arrayList, str2);
                }
            });
        } else {
            carouselController = carouselController2;
            horizontalScrollView.setVisibility(8);
            selectGroupButton(null, null, arrayList, next);
        }
        carouselController.switchGroup(list);
        carouselController.startAutoScroll();
        dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.ActualImageDialogHelper$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                carouselController.stopAutoScroll();
            }
        });
        dialog.show();
    }

    /* renamed from: $r8$lambda$G1AyrKzoyWuprY0QQ5ko4jm0-hI, reason: not valid java name */
    public static /* synthetic */ void m2044$r8$lambda$G1AyrKzoyWuprY0QQ5ko4jm0hI(HorizontalScrollView horizontalScrollView, LinearLayout linearLayout, List list, CarouselController carouselController, LinkedHashMap linkedHashMap, View view) {
        String str = (String) view.getTag();
        selectGroupButton(horizontalScrollView, linearLayout, list, str);
        carouselController.switchGroup((List) linkedHashMap.get(str));
        carouselController.resumeAutoScroll();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void selectGroupButton(HorizontalScrollView horizontalScrollView, LinearLayout linearLayout, List<TextView> list, String str) {
        TextView textView = null;
        for (TextView textView2 : list) {
            boolean zEquals = str.equals(textView2.getTag());
            textView2.setSelected(zEquals);
            if (zEquals) {
                textView = textView2;
            }
        }
        if (textView == null || horizontalScrollView == null || linearLayout == null) {
            return;
        }
        scrollGroupButtonIntoView(horizontalScrollView, linearLayout, textView);
    }

    private static void scrollGroupButtonIntoView(final HorizontalScrollView horizontalScrollView, final LinearLayout linearLayout, final View view) {
        horizontalScrollView.post(new Runnable() { // from class: com.qianhe.yct.dialog.ActualImageDialogHelper$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                ActualImageDialogHelper.$r8$lambda$wqSWSq8uX8Ja9rps0Q97WITwaf0(view, horizontalScrollView, linearLayout);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$wqSWSq8uX8Ja9rps0Q97WITwaf0(View view, HorizontalScrollView horizontalScrollView, LinearLayout linearLayout) {
        Rect rect = new Rect();
        view.getHitRect(rect);
        horizontalScrollView.requestChildRectangleOnScreen(linearLayout, rect, false);
    }

    private static void centerGroupButtons(final HorizontalScrollView horizontalScrollView, final LinearLayout linearLayout, final Runnable runnable) {
        horizontalScrollView.post(new Runnable() { // from class: com.qianhe.yct.dialog.ActualImageDialogHelper$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                ActualImageDialogHelper.m2045$r8$lambda$TD49IdTq6HftzPYokhYlcXckc(horizontalScrollView, linearLayout, runnable);
            }
        });
    }

    /* renamed from: $r8$lambda$TD49IdTq6Hf-tzPYokhYlcX-ckc, reason: not valid java name */
    public static /* synthetic */ void m2045$r8$lambda$TD49IdTq6HftzPYokhYlcXckc(HorizontalScrollView horizontalScrollView, LinearLayout linearLayout, Runnable runnable) {
        int width = horizontalScrollView.getWidth();
        int width2 = linearLayout.getWidth();
        if (width <= 0 || width2 <= 0) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
        layoutParams.width = -2;
        linearLayout.setLayoutParams(layoutParams);
        if (width2 < width) {
            int i = (width - width2) / 2;
            linearLayout.setPadding(i, 0, i, 0);
        } else {
            linearLayout.setPadding(0, 0, 0, 0);
        }
        horizontalScrollView.scrollTo(0, 0);
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int dp(Context context, int i) {
        return (int) TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class CarouselController {
        private final ActualImageGifAdapter adapter;
        private boolean autoScrollPaused;
        private final Context context;
        private final int maxPagerHeight;
        private final LinearLayout pageIndicator;
        private boolean userDragging;
        private final ViewPager2 viewPager;
        private final Handler handler = new Handler(Looper.getMainLooper());
        private final List<View> indicatorDots = new ArrayList();
        private final Runnable autoScrollRunnable = new Runnable() { // from class: com.qianhe.yct.dialog.ActualImageDialogHelper$CarouselController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.autoScrollNext();
            }
        };

        CarouselController(Context context, ViewPager2 viewPager2, ActualImageGifAdapter actualImageGifAdapter, LinearLayout linearLayout, int i) {
            this.context = context;
            this.viewPager = viewPager2;
            this.adapter = actualImageGifAdapter;
            this.pageIndicator = linearLayout;
            this.maxPagerHeight = i;
            viewPager2.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.qianhe.yct.dialog.ActualImageDialogHelper.CarouselController.1
                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public void onPageSelected(int i2) {
                    CarouselController.this.updatePagerHeight(i2);
                    CarouselController.this.updateIndicatorSelection(i2);
                }

                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public void onPageScrollStateChanged(int i2) {
                    if (i2 == 1) {
                        CarouselController.this.userDragging = true;
                        CarouselController.this.pauseAutoScroll();
                    } else if (i2 == 0 && CarouselController.this.userDragging) {
                        CarouselController.this.userDragging = false;
                    }
                }
            });
        }

        void switchGroup(List<Integer> list) {
            ArrayList arrayList = list == null ? new ArrayList() : new ArrayList(list);
            if (!arrayList.isEmpty()) {
                applyPagerHeight(((Integer) arrayList.get(0)).intValue());
            }
            this.adapter.setImages(arrayList);
            this.viewPager.setCurrentItem(0, false);
            this.viewPager.setUserInputEnabled(arrayList.size() > 1);
            setupIndicators(arrayList.size(), 0);
        }

        void startAutoScroll() {
            stopAutoScroll();
            if (this.adapter.getItemCount() <= 1 || this.autoScrollPaused) {
                return;
            }
            this.handler.postDelayed(this.autoScrollRunnable, 3000L);
        }

        void resumeAutoScroll() {
            this.autoScrollPaused = false;
            startAutoScroll();
        }

        void pauseAutoScroll() {
            this.autoScrollPaused = true;
            stopAutoScroll();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void stopAutoScroll() {
            this.handler.removeCallbacks(this.autoScrollRunnable);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void autoScrollNext() {
            if (this.autoScrollPaused || this.adapter.getItemCount() <= 1) {
                return;
            }
            this.viewPager.setCurrentItem((this.viewPager.getCurrentItem() + 1) % this.adapter.getItemCount(), true);
            startAutoScroll();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updatePagerHeight(int i) {
            if (i < 0 || i >= this.adapter.getItemCount()) {
                return;
            }
            applyPagerHeight(this.adapter.getImageResId(i));
        }

        private void applyPagerHeight(final int i) {
            this.viewPager.post(new Runnable() { // from class: com.qianhe.yct.dialog.ActualImageDialogHelper$CarouselController$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ActualImageDialogHelper.CarouselController.$r8$lambda$xYO88qaim_cvmObMzxcoRKACTLg(this.f$0, i);
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$xYO88qaim_cvmObMzxcoRKACTLg(CarouselController carouselController, int i) {
            int iCalculateImageHeight;
            int width = carouselController.viewPager.getWidth();
            if (width <= 0) {
                width = carouselController.viewPager.getMeasuredWidth();
            }
            if (width > 0 && (iCalculateImageHeight = ActualImageDialogHelper.calculateImageHeight(carouselController.context, i, width, carouselController.maxPagerHeight)) > 0 && carouselController.viewPager.getLayoutParams().height != iCalculateImageHeight) {
                carouselController.viewPager.getLayoutParams().height = iCalculateImageHeight;
                carouselController.viewPager.requestLayout();
            }
        }

        private void setupIndicators(int i, int i2) {
            this.pageIndicator.removeAllViews();
            this.indicatorDots.clear();
            if (i <= 1) {
                this.pageIndicator.setVisibility(8);
                return;
            }
            this.pageIndicator.setVisibility(0);
            int iDp = ActualImageDialogHelper.dp(this.context, 8);
            int iDp2 = ActualImageDialogHelper.dp(this.context, 4);
            int i3 = 0;
            while (i3 < i) {
                View view = new View(this.context);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iDp, iDp);
                if (i3 > 0) {
                    layoutParams.setMarginStart(iDp2);
                }
                view.setLayoutParams(layoutParams);
                view.setBackgroundResource(R$drawable.sel_indicator_dot);
                view.setSelected(i3 == i2);
                this.pageIndicator.addView(view);
                this.indicatorDots.add(view);
                i3++;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateIndicatorSelection(int i) {
            int i2 = 0;
            while (i2 < this.indicatorDots.size()) {
                this.indicatorDots.get(i2).setSelected(i2 == i);
                i2++;
            }
        }
    }

    private static int calculateMaxPagerHeight(Context context, boolean z, int i, boolean z2) {
        int iDp = dp(context, 30) + dp(context, 55);
        if (z2) {
            iDp += dp(context, 55);
        }
        return Math.max(dp(context, TbsListener.ErrorCode.DOWNLOAD_HAS_LOCAL_TBS_ERROR), Math.min(i - (iDp + dp(context, 20)), (int) (i * (z ? 0.45f : 0.65f))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int calculateImageHeight(Context context, int i, int i2, int i3) {
        Drawable drawable = ContextCompat.getDrawable(context, i);
        if (drawable == null) {
            return 0;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            return 0;
        }
        int i4 = (int) (i2 * (intrinsicHeight / intrinsicWidth));
        return i3 > 0 ? Math.min(i4, i3) : i4;
    }
}
