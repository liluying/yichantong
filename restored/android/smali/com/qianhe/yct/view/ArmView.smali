.class public Lcom/qianhe/yct/view/ArmView;
.super Landroid/widget/FrameLayout;
.source "ArmView.java"


# instance fields
.field private animationDuration:J

.field private currentAngle:D

.field private currentDistance:D

.field private customPivotX:F

.field private customPivotY:F

.field private imageView:Landroid/widget/ImageView;

.field private maxAngle:F

.field private minAngle:F

.field private pivotAtTopCenter:Z

.field private rotationAnimator:Landroid/animation/ObjectAnimator;

.field private verticalTranslationAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method static bridge synthetic -$$Nest$fgetcurrentAngle(Lcom/qianhe/yct/view/ArmView;)D
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/qianhe/yct/view/ArmView;->currentAngle:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputcurrentAngle(Lcom/qianhe/yct/view/ArmView;D)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/qianhe/yct/view/ArmView;->currentAngle:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentDistance(Lcom/qianhe/yct/view/ArmView;D)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/qianhe/yct/view/ArmView;->currentDistance:D

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyRotation(Lcom/qianhe/yct/view/ArmView;DZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qianhe/yct/view/ArmView;->applyRotation(DZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetupPivotPoint(Lcom/qianhe/yct/view/ArmView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/view/ArmView;->setupPivotPoint()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 25
    iput v0, p0, Lcom/qianhe/yct/view/ArmView;->minAngle:F

    const/high16 v0, 0x42b40000    # 90.0f

    .line 26
    iput v0, p0, Lcom/qianhe/yct/view/ArmView;->maxAngle:F

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/qianhe/yct/view/ArmView;->currentAngle:D

    iput-wide v0, p0, Lcom/qianhe/yct/view/ArmView;->currentDistance:D

    const-wide/16 v0, 0x258

    .line 28
    iput-wide v0, p0, Lcom/qianhe/yct/view/ArmView;->animationDuration:J

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/qianhe/yct/view/ArmView;->pivotAtTopCenter:Z

    const/high16 v0, 0x3f000000    # 0.5f

    .line 30
    iput v0, p0, Lcom/qianhe/yct/view/ArmView;->customPivotX:F

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/qianhe/yct/view/ArmView;->customPivotY:F

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/view/ArmView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 25
    iput v0, p0, Lcom/qianhe/yct/view/ArmView;->minAngle:F

    const/high16 v0, 0x42b40000    # 90.0f

    .line 26
    iput v0, p0, Lcom/qianhe/yct/view/ArmView;->maxAngle:F

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/qianhe/yct/view/ArmView;->currentAngle:D

    iput-wide v0, p0, Lcom/qianhe/yct/view/ArmView;->currentDistance:D

    const-wide/16 v0, 0x258

    .line 28
    iput-wide v0, p0, Lcom/qianhe/yct/view/ArmView;->animationDuration:J

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/qianhe/yct/view/ArmView;->pivotAtTopCenter:Z

    const/high16 v0, 0x3f000000    # 0.5f

    .line 30
    iput v0, p0, Lcom/qianhe/yct/view/ArmView;->customPivotX:F

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/qianhe/yct/view/ArmView;->customPivotY:F

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/view/ArmView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, -0x3d4c0000    # -90.0f

    .line 25
    iput p3, p0, Lcom/qianhe/yct/view/ArmView;->minAngle:F

    const/high16 p3, 0x42b40000    # 90.0f

    .line 26
    iput p3, p0, Lcom/qianhe/yct/view/ArmView;->maxAngle:F

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/qianhe/yct/view/ArmView;->currentAngle:D

    iput-wide v0, p0, Lcom/qianhe/yct/view/ArmView;->currentDistance:D

    const-wide/16 v0, 0x258

    .line 28
    iput-wide v0, p0, Lcom/qianhe/yct/view/ArmView;->animationDuration:J

    const/4 p3, 0x1

    .line 29
    iput-boolean p3, p0, Lcom/qianhe/yct/view/ArmView;->pivotAtTopCenter:Z

    const/high16 p3, 0x3f000000    # 0.5f

    .line 30
    iput p3, p0, Lcom/qianhe/yct/view/ArmView;->customPivotX:F

    const/4 p3, 0x0

    .line 31
    iput p3, p0, Lcom/qianhe/yct/view/ArmView;->customPivotY:F

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/view/ArmView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private applyRotation(DZ)V
    .locals 0

    .line 312
    invoke-direct {p0, p1, p2, p3}, Lcom/qianhe/yct/view/ArmView;->rotateToAngle(DZ)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 50
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qianhe/yct/view/ArmView;->imageView:Landroid/widget/ImageView;

    .line 51
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 52
    iget-object v1, p0, Lcom/qianhe/yct/view/ArmView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmView;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 54
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz p2, :cond_0

    .line 58
    sget-object v0, Lcom/qianhe/yct/R$styleable;->armView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 60
    :try_start_0
    sget p2, Lcom/qianhe/yct/R$styleable;->armView_minAngle:I

    const/high16 v0, -0x3c4c0000    # -360.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/qianhe/yct/view/ArmView;->minAngle:F

    .line 61
    sget p2, Lcom/qianhe/yct/R$styleable;->armView_maxAngle:I

    const/high16 v0, 0x43b40000    # 360.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/qianhe/yct/view/ArmView;->maxAngle:F

    .line 62
    sget p2, Lcom/qianhe/yct/R$styleable;->armView_initialAngle:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    float-to-double v1, p2

    iput-wide v1, p0, Lcom/qianhe/yct/view/ArmView;->currentAngle:D

    .line 63
    sget p2, Lcom/qianhe/yct/R$styleable;->armView_animationDuration:I

    const/16 v1, 0xc8

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long v1, p2

    iput-wide v1, p0, Lcom/qianhe/yct/view/ArmView;->animationDuration:J

    .line 64
    sget p2, Lcom/qianhe/yct/R$styleable;->armView_pivotAtTopCenter:I

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qianhe/yct/view/ArmView;->pivotAtTopCenter:Z

    .line 65
    sget p2, Lcom/qianhe/yct/R$styleable;->armView_customPivotX:I

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/qianhe/yct/view/ArmView;->customPivotX:F

    .line 66
    sget p2, Lcom/qianhe/yct/R$styleable;->armView_customPivotY:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/qianhe/yct/view/ArmView;->customPivotY:F

    .line 67
    sget p2, Lcom/qianhe/yct/R$styleable;->armView_imageResId:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 68
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    iget p2, p0, Lcom/qianhe/yct/view/ArmView;->minAngle:F

    float-to-double v0, p2

    iget p2, p0, Lcom/qianhe/yct/view/ArmView;->maxAngle:F

    float-to-double v2, p2

    iget-wide v4, p0, Lcom/qianhe/yct/view/ArmView;->currentAngle:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/yct/view/ArmView;->currentAngle:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    throw p2

    .line 77
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/view/ArmView;->setupAnimator()V

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/qianhe/yct/view/ArmView$1;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/view/ArmView$1;-><init>(Lcom/qianhe/yct/view/ArmView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private rotateToAngle(DZ)V
    .locals 4

    .line 171
    iget v0, p0, Lcom/qianhe/yct/view/ArmView;->minAngle:F

    float-to-double v0, v0

    iget v2, p0, Lcom/qianhe/yct/view/ArmView;->maxAngle:F

    float-to-double v2, v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    if-eqz p3, :cond_1

    .line 175
    iget-object p3, p0, Lcom/qianhe/yct/view/ArmView;->rotationAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p3}, Landroid/animation/Animator;->isRunning()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 176
    iget-object p3, p0, Lcom/qianhe/yct/view/ArmView;->rotationAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p3}, Landroid/animation/Animator;->cancel()V

    .line 180
    :cond_0
    iget-object p3, p0, Lcom/qianhe/yct/view/ArmView;->rotationAnimator:Landroid/animation/ObjectAnimator;

    iget-wide v0, p0, Lcom/qianhe/yct/view/ArmView;->currentAngle:D

    double-to-float v0, v0

    double-to-float p1, p1

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v1, 0x0

    aput v0, p2, v1

    const/4 v0, 0x1

    aput p1, p2, v0

    invoke-virtual {p3, p2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 181
    iget-object p1, p0, Lcom/qianhe/yct/view/ArmView;->rotationAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .line 184
    :cond_1
    iput-wide p1, p0, Lcom/qianhe/yct/view/ArmView;->currentAngle:D

    double-to-float p1, p1

    .line 185
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method private setupAnimator()V
    .locals 4

    const/4 v0, 0x2

    .line 92
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string/jumbo v2, "translationY"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/view/ArmView;->verticalTranslationAnimator:Landroid/animation/ObjectAnimator;

    .line 93
    iget-wide v2, p0, Lcom/qianhe/yct/view/ArmView;->animationDuration:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 94
    iget-object v1, p0, Lcom/qianhe/yct/view/ArmView;->verticalTranslationAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 95
    iget-object v1, p0, Lcom/qianhe/yct/view/ArmView;->verticalTranslationAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/qianhe/yct/view/ArmView$2;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/view/ArmView$2;-><init>(Lcom/qianhe/yct/view/ArmView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 103
    const-string v1, "rotation"

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/view/ArmView;->rotationAnimator:Landroid/animation/ObjectAnimator;

    .line 104
    iget-wide v1, p0, Lcom/qianhe/yct/view/ArmView;->animationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 105
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmView;->rotationAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 106
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmView;->rotationAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/qianhe/yct/view/ArmView$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/view/ArmView$3;-><init>(Lcom/qianhe/yct/view/ArmView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private setupPivotPoint()V
    .locals 3

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 118
    iget-boolean v0, p0, Lcom/qianhe/yct/view/ArmView;->pivotAtTopCenter:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/qianhe/yct/view/ArmView;->customPivotX:F

    mul-float v0, v0, v1

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/qianhe/yct/view/ArmView;->customPivotY:F

    mul-float v1, v1, v2

    .line 127
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    .line 128
    invoke-virtual {p0, v1}, Landroid/view/View;->setPivotY(F)V

    :cond_1
    return-void
.end method

.method private verticalToDistance(DZ)V
    .locals 2

    if-eqz p3, :cond_1

    .line 150
    iget-object p3, p0, Lcom/qianhe/yct/view/ArmView;->verticalTranslationAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p3}, Landroid/animation/Animator;->isRunning()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 151
    iget-object p3, p0, Lcom/qianhe/yct/view/ArmView;->verticalTranslationAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p3}, Landroid/animation/Animator;->cancel()V

    .line 155
    :cond_0
    iget-object p3, p0, Lcom/qianhe/yct/view/ArmView;->verticalTranslationAnimator:Landroid/animation/ObjectAnimator;

    iget-wide v0, p0, Lcom/qianhe/yct/view/ArmView;->currentDistance:D

    double-to-float v0, v0

    double-to-float p1, p1

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v1, 0x0

    aput v0, p2, v1

    const/4 v0, 0x1

    aput p1, p2, v0

    invoke-virtual {p3, p2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 156
    iget-object p1, p0, Lcom/qianhe/yct/view/ArmView;->verticalTranslationAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .line 159
    :cond_1
    iput-wide p1, p0, Lcom/qianhe/yct/view/ArmView;->currentDistance:D

    double-to-float p1, p1

    .line 160
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public getCurrentAngle()D
    .locals 2

    .line 284
    iget-wide v0, p0, Lcom/qianhe/yct/view/ArmView;->currentAngle:D

    return-wide v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmView;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMaxAngle()F
    .locals 1

    .line 298
    iget v0, p0, Lcom/qianhe/yct/view/ArmView;->maxAngle:F

    return v0
.end method

.method public getMinAngle()F
    .locals 1

    .line 291
    iget v0, p0, Lcom/qianhe/yct/view/ArmView;->minAngle:F

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 317
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 318
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmView;->verticalTranslationAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmView;->rotationAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    return-void
.end method

.method public rotateToAngle(F)V
    .locals 2

    float-to-double v0, p1

    const/4 p1, 0x1

    .line 193
    invoke-direct {p0, v0, v1, p1}, Lcom/qianhe/yct/view/ArmView;->rotateToAngle(DZ)V

    return-void
.end method

.method public setAngleRange(FF)V
    .locals 5

    .line 223
    iput p1, p0, Lcom/qianhe/yct/view/ArmView;->minAngle:F

    .line 224
    iput p2, p0, Lcom/qianhe/yct/view/ArmView;->maxAngle:F

    .line 226
    iget-wide v0, p0, Lcom/qianhe/yct/view/ArmView;->currentAngle:D

    float-to-double v2, p1

    const/4 p1, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 227
    invoke-direct {p0, v2, v3, p1}, Lcom/qianhe/yct/view/ArmView;->rotateToAngle(DZ)V

    return-void

    :cond_0
    float-to-double v2, p2

    cmpl-double p2, v0, v2

    if-lez p2, :cond_1

    .line 229
    invoke-direct {p0, v2, v3, p1}, Lcom/qianhe/yct/view/ArmView;->rotateToAngle(DZ)V

    :cond_1
    return-void
.end method

.method public setAnimationDuration(J)V
    .locals 1

    .line 237
    iput-wide p1, p0, Lcom/qianhe/yct/view/ArmView;->animationDuration:J

    .line 238
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmView;->rotationAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setMaxAngle(F)V
    .locals 4

    .line 212
    iput p1, p0, Lcom/qianhe/yct/view/ArmView;->maxAngle:F

    .line 214
    iget-wide v0, p0, Lcom/qianhe/yct/view/ArmView;->currentAngle:D

    float-to-double v2, p1

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 215
    invoke-direct {p0, v2, v3, p1}, Lcom/qianhe/yct/view/ArmView;->rotateToAngle(DZ)V

    :cond_0
    return-void
.end method

.method public setMinAngle(F)V
    .locals 4

    .line 201
    iput p1, p0, Lcom/qianhe/yct/view/ArmView;->minAngle:F

    .line 203
    iget-wide v0, p0, Lcom/qianhe/yct/view/ArmView;->currentAngle:D

    float-to-double v2, p1

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 204
    invoke-direct {p0, v2, v3, p1}, Lcom/qianhe/yct/view/ArmView;->rotateToAngle(DZ)V

    :cond_0
    return-void
.end method

.method public setPivotAtTopCenter()V
    .locals 1

    const/4 v0, 0x1

    .line 260
    iput-boolean v0, p0, Lcom/qianhe/yct/view/ArmView;->pivotAtTopCenter:Z

    .line 261
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/qianhe/yct/view/ArmView;->setupPivotPoint()V

    :cond_0
    return-void
.end method

.method public setPivotPoint(FF)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 247
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/view/ArmView;->customPivotX:F

    .line 248
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/view/ArmView;->customPivotY:F

    const/4 p1, 0x0

    .line 249
    iput-boolean p1, p0, Lcom/qianhe/yct/view/ArmView;->pivotAtTopCenter:Z

    .line 251
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/qianhe/yct/view/ArmView;->setupPivotPoint()V

    :cond_0
    return-void
.end method

.method public updateAnimationValue(DD)V
    .locals 1

    neg-double p1, p1

    const/4 v0, 0x1

    .line 138
    invoke-direct {p0, p1, p2, v0}, Lcom/qianhe/yct/view/ArmView;->verticalToDistance(DZ)V

    .line 139
    invoke-direct {p0, p3, p4, v0}, Lcom/qianhe/yct/view/ArmView;->rotateToAngle(DZ)V

    return-void
.end method
