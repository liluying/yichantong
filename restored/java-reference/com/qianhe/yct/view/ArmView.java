package com.qianhe.yct.view;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.qianhe.yct.R$styleable;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ArmView extends FrameLayout {
    private long animationDuration;
    private double currentAngle;
    private double currentDistance;
    private float customPivotX;
    private float customPivotY;
    private ImageView imageView;
    private float maxAngle;
    private float minAngle;
    private boolean pivotAtTopCenter;
    private ObjectAnimator rotationAnimator;
    private ObjectAnimator verticalTranslationAnimator;

    public ArmView(Context context) {
        super(context);
        this.minAngle = -90.0f;
        this.maxAngle = 90.0f;
        this.currentAngle = 0.0d;
        this.currentDistance = 0.0d;
        this.animationDuration = 600L;
        this.pivotAtTopCenter = true;
        this.customPivotX = 0.5f;
        this.customPivotY = 0.0f;
        init(context, null);
    }

    public ArmView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.minAngle = -90.0f;
        this.maxAngle = 90.0f;
        this.currentAngle = 0.0d;
        this.currentDistance = 0.0d;
        this.animationDuration = 600L;
        this.pivotAtTopCenter = true;
        this.customPivotX = 0.5f;
        this.customPivotY = 0.0f;
        init(context, attributeSet);
    }

    public ArmView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.minAngle = -90.0f;
        this.maxAngle = 90.0f;
        this.currentAngle = 0.0d;
        this.currentDistance = 0.0d;
        this.animationDuration = 600L;
        this.pivotAtTopCenter = true;
        this.customPivotX = 0.5f;
        this.customPivotY = 0.0f;
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        this.imageView = new ImageView(context);
        this.imageView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        this.imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        addView(this.imageView);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.armView);
            try {
                this.minAngle = typedArrayObtainStyledAttributes.getFloat(R$styleable.armView_minAngle, -360.0f);
                this.maxAngle = typedArrayObtainStyledAttributes.getFloat(R$styleable.armView_maxAngle, 360.0f);
                this.currentAngle = typedArrayObtainStyledAttributes.getFloat(R$styleable.armView_initialAngle, 0.0f);
                this.animationDuration = typedArrayObtainStyledAttributes.getInt(R$styleable.armView_animationDuration, 200);
                this.pivotAtTopCenter = typedArrayObtainStyledAttributes.getBoolean(R$styleable.armView_pivotAtTopCenter, true);
                this.customPivotX = typedArrayObtainStyledAttributes.getFloat(R$styleable.armView_customPivotX, 0.5f);
                this.customPivotY = typedArrayObtainStyledAttributes.getFloat(R$styleable.armView_customPivotY, 0.0f);
                this.imageView.setImageResource(typedArrayObtainStyledAttributes.getResourceId(R$styleable.armView_imageResId, 0));
                this.currentAngle = Math.max(this.minAngle, Math.min(this.maxAngle, this.currentAngle));
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        }
        setupAnimator();
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.qianhe.yct.view.ArmView.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                ArmView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                ArmView.this.setupPivotPoint();
                ArmView armView = ArmView.this;
                armView.applyRotation(armView.currentAngle, false);
            }
        });
    }

    private void setupAnimator() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "translationY", 0.0f, 0.0f);
        this.verticalTranslationAnimator = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(this.animationDuration);
        this.verticalTranslationAnimator.setInterpolator(new LinearInterpolator());
        this.verticalTranslationAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.qianhe.yct.view.ArmView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ArmView.this.currentDistance = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            }
        });
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, "rotation", 0.0f, 0.0f);
        this.rotationAnimator = objectAnimatorOfFloat2;
        objectAnimatorOfFloat2.setDuration(this.animationDuration);
        this.rotationAnimator.setInterpolator(new DecelerateInterpolator());
        this.rotationAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.qianhe.yct.view.ArmView.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ArmView.this.currentAngle = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupPivotPoint() {
        float width;
        float height;
        if (getWidth() <= 0 || getHeight() <= 0) {
            return;
        }
        if (this.pivotAtTopCenter) {
            width = getWidth() / 2.0f;
            height = 0.0f;
        } else {
            width = getWidth() * this.customPivotX;
            height = getHeight() * this.customPivotY;
        }
        setPivotX(width);
        setPivotY(height);
    }

    public void updateAnimationValue(double d, double d2) {
        verticalToDistance(-d, true);
        rotateToAngle(d2, true);
    }

    private void verticalToDistance(double d, boolean z) {
        if (z) {
            if (this.verticalTranslationAnimator.isRunning()) {
                this.verticalTranslationAnimator.cancel();
            }
            this.verticalTranslationAnimator.setFloatValues((float) this.currentDistance, (float) d);
            this.verticalTranslationAnimator.start();
            return;
        }
        this.currentDistance = d;
        setTranslationY((float) d);
    }

    private void rotateToAngle(double d, boolean z) {
        double dMax = Math.max(this.minAngle, Math.min(this.maxAngle, d));
        if (z) {
            if (this.rotationAnimator.isRunning()) {
                this.rotationAnimator.cancel();
            }
            this.rotationAnimator.setFloatValues((float) this.currentAngle, (float) dMax);
            this.rotationAnimator.start();
            return;
        }
        this.currentAngle = dMax;
        setRotation((float) dMax);
    }

    public void rotateToAngle(float f) {
        rotateToAngle(f, true);
    }

    public void setMinAngle(float f) {
        this.minAngle = f;
        double d = f;
        if (this.currentAngle < d) {
            rotateToAngle(d, false);
        }
    }

    public void setMaxAngle(float f) {
        this.maxAngle = f;
        double d = f;
        if (this.currentAngle > d) {
            rotateToAngle(d, false);
        }
    }

    public void setAngleRange(float f, float f2) {
        this.minAngle = f;
        this.maxAngle = f2;
        double d = this.currentAngle;
        double d2 = f;
        if (d < d2) {
            rotateToAngle(d2, false);
            return;
        }
        double d3 = f2;
        if (d > d3) {
            rotateToAngle(d3, false);
        }
    }

    public void setAnimationDuration(long j) {
        this.animationDuration = j;
        this.rotationAnimator.setDuration(j);
    }

    public void setPivotPoint(float f, float f2) {
        this.customPivotX = Math.max(0.0f, Math.min(1.0f, f));
        this.customPivotY = Math.max(0.0f, Math.min(1.0f, f2));
        this.pivotAtTopCenter = false;
        if (getWidth() <= 0 || getHeight() <= 0) {
            return;
        }
        setupPivotPoint();
    }

    public void setPivotAtTopCenter() {
        this.pivotAtTopCenter = true;
        if (getWidth() <= 0 || getHeight() <= 0) {
            return;
        }
        setupPivotPoint();
    }

    public void setImageResource(int i) {
        this.imageView.setImageResource(i);
    }

    public void setImageDrawable(Drawable drawable) {
        this.imageView.setImageDrawable(drawable);
    }

    public double getCurrentAngle() {
        return this.currentAngle;
    }

    public float getMinAngle() {
        return this.minAngle;
    }

    public float getMaxAngle() {
        return this.maxAngle;
    }

    public ImageView getImageView() {
        return this.imageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyRotation(double d, boolean z) {
        rotateToAngle(d, z);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ObjectAnimator objectAnimator = this.verticalTranslationAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        ObjectAnimator objectAnimator2 = this.rotationAnimator;
        if (objectAnimator2 != null) {
            objectAnimator2.cancel();
        }
    }
}
