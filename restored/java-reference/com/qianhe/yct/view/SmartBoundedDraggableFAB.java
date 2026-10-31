package com.qianhe.yct.view;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Rect;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.OvershootInterpolator;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.qianhe.yct.view.SmartBoundedDraggableFAB;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class SmartBoundedDraggableFAB extends FloatingActionButton {
    private static final int CLICK_THRESHOLD = 10;
    private static final String KEY_X = "fab_x";
    private static final String KEY_Y = "fab_y";
    private static final long LONG_CLICK_DURATION = 500;
    private static final String PREFS_NAME = "fab_position";
    private Handler clickHandler;
    private View.OnClickListener clickListener;
    private boolean enableBoundsAnimation;
    private boolean enableEdgeSnap;
    private boolean isClicking;
    private boolean isLongClicking;
    private View.OnLongClickListener longClickListener;
    private int margin;
    private SharedPreferences prefs;
    private Rect screenBounds;

    public SmartBoundedDraggableFAB(Context context) {
        super(context);
        this.screenBounds = new Rect();
        this.margin = 16;
        this.enableEdgeSnap = true;
        this.enableBoundsAnimation = true;
        this.isClicking = false;
        this.isLongClicking = false;
        this.clickHandler = new Handler();
        init(context);
    }

    public SmartBoundedDraggableFAB(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.screenBounds = new Rect();
        this.margin = 16;
        this.enableEdgeSnap = true;
        this.enableBoundsAnimation = true;
        this.isClicking = false;
        this.isLongClicking = false;
        this.clickHandler = new Handler();
        init(context);
    }

    private void init(Context context) {
        this.prefs = context.getSharedPreferences(PREFS_NAME, 0);
        setUseCompatPadding(true);
        setOnTouchListener(new SmartDragListener());
        post(new Runnable() { // from class: com.qianhe.yct.view.SmartBoundedDraggableFAB$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.updateScreenBounds();
            }
        });
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.clickListener = onClickListener;
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.longClickListener = onLongClickListener;
        super.setOnLongClickListener(onLongClickListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    class SmartDragListener implements View.OnTouchListener {
        private float initialTouchX;
        private float initialTouchY;
        private float initialX;
        private float initialY;
        private boolean isDragging;
        private Runnable longClickRunnable;
        private long touchDownTime;

        private SmartDragListener() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(final View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.initialX = view.getX();
                this.initialY = view.getY();
                this.initialTouchX = motionEvent.getRawX();
                this.initialTouchY = motionEvent.getRawY();
                this.isDragging = false;
                SmartBoundedDraggableFAB.this.isClicking = true;
                this.touchDownTime = System.currentTimeMillis();
                if (SmartBoundedDraggableFAB.this.longClickListener != null) {
                    this.longClickRunnable = new Runnable() { // from class: com.qianhe.yct.view.SmartBoundedDraggableFAB$SmartDragListener$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            SmartBoundedDraggableFAB.SmartDragListener.m2980$r8$lambda$EDAZndJD3ZxRDeENvUMzKWLA5s(this.f$0, view);
                        }
                    };
                    SmartBoundedDraggableFAB.this.clickHandler.postDelayed(this.longClickRunnable, SmartBoundedDraggableFAB.LONG_CLICK_DURATION);
                }
                return true;
            }
            if (action == 1) {
                System.currentTimeMillis();
                if (this.longClickRunnable != null) {
                    SmartBoundedDraggableFAB.this.clickHandler.removeCallbacks(this.longClickRunnable);
                }
                if (this.isDragging) {
                    SmartBoundedDraggableFAB.this.savePosition(view.getX(), view.getY());
                    boolean unused = SmartBoundedDraggableFAB.this.enableEdgeSnap;
                    return true;
                }
                if (SmartBoundedDraggableFAB.this.isClicking && !SmartBoundedDraggableFAB.this.isLongClicking) {
                    if (SmartBoundedDraggableFAB.this.clickListener != null) {
                        SmartBoundedDraggableFAB.this.clickListener.onClick(view);
                    }
                    view.playSoundEffect(0);
                    return true;
                }
                SmartBoundedDraggableFAB.this.isLongClicking = false;
                return false;
            }
            if (action != 2) {
                if (action != 3) {
                    return false;
                }
                SmartBoundedDraggableFAB.this.isClicking = false;
                SmartBoundedDraggableFAB.this.isLongClicking = false;
                if (this.longClickRunnable != null) {
                    SmartBoundedDraggableFAB.this.clickHandler.removeCallbacks(this.longClickRunnable);
                }
                return false;
            }
            float rawX = motionEvent.getRawX() - this.initialTouchX;
            float rawY = motionEvent.getRawY() - this.initialTouchY;
            if (Math.abs(rawX) > 10.0f || Math.abs(rawY) > 10.0f) {
                this.isDragging = true;
                SmartBoundedDraggableFAB.this.isClicking = false;
                if (this.longClickRunnable != null) {
                    SmartBoundedDraggableFAB.this.clickHandler.removeCallbacks(this.longClickRunnable);
                }
            }
            if (this.isDragging) {
                float fClampX = SmartBoundedDraggableFAB.this.clampX(this.initialX + rawX);
                float fClampY = SmartBoundedDraggableFAB.this.clampY(this.initialY + rawY);
                if (SmartBoundedDraggableFAB.this.enableBoundsAnimation) {
                    view.setX(fClampX);
                    view.setY(fClampY);
                } else {
                    view.animate().x(fClampX).y(fClampY).setDuration(0L).start();
                }
            }
            return true;
        }

        /* renamed from: $r8$lambda$EDAZndJD3ZxRDeENvUM-zKWLA5s, reason: not valid java name */
        public static /* synthetic */ void m2980$r8$lambda$EDAZndJD3ZxRDeENvUMzKWLA5s(SmartDragListener smartDragListener, View view) {
            if (!SmartBoundedDraggableFAB.this.isClicking || smartDragListener.isDragging) {
                return;
            }
            SmartBoundedDraggableFAB.this.isLongClicking = true;
            SmartBoundedDraggableFAB.this.longClickListener.onLongClick(view);
            view.performHapticFeedback(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float clampX(float f) {
        return Math.max(this.margin, Math.min(f, (this.screenBounds.width() - getWidth()) - this.margin));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float clampY(float f) {
        return Math.max(this.margin, Math.min(f, (this.screenBounds.height() - getHeight()) - this.margin));
    }

    private void snapToEdge() {
        animate().x(getX() < ((float) this.screenBounds.width()) / 2.0f ? this.margin : (this.screenBounds.width() - getWidth()) - this.margin).y(getY()).setDuration(250L).setInterpolator(new OvershootInterpolator(1.5f)).withEndAction(new Runnable() { // from class: com.qianhe.yct.view.SmartBoundedDraggableFAB$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                SmartBoundedDraggableFAB smartBoundedDraggableFAB = this.f$0;
                smartBoundedDraggableFAB.savePosition(smartBoundedDraggableFAB.getX(), smartBoundedDraggableFAB.getY());
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void savePosition(float f, float f2) {
        this.prefs.edit().putFloat(KEY_X, f).putFloat(KEY_Y, f2).apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateScreenBounds() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null) {
            viewGroup.getGlobalVisibleRect(this.screenBounds);
            int[] iArr = new int[2];
            viewGroup.getLocationOnScreen(iArr);
            this.screenBounds.offset(-iArr[0], -iArr[1]);
        }
    }
}
