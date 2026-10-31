.class public Lcom/qianhe/yct/view/ArmAngleScaleBarView;
.super Landroid/view/View;
.source "ArmAngleScaleBarView.java"


# static fields
.field private static final MAX_DEG:F = 90.0f

.field private static final MIN_DEG:F = -90.0f


# instance fields
.field private arm1Deg:F

.field private arm2Deg:F

.field private bottomPadPx:F

.field private currentDeg:F

.field private endLabelTopGapPx:F

.field private greenCenterDeg:F

.field private greenHalfWidthDeg:F

.field private final greenPaint:Landroid/graphics/Paint;

.field private hPadPx:F

.field private hasReference:Z

.field private labelGapPx:F

.field private final markerPaint:Landroid/graphics/Paint;

.field private markerRadiusPx:F

.field private final midPaint:Landroid/graphics/Paint;

.field private pointerGapPx:F

.field private final pointerPaint:Landroid/graphics/Paint;

.field private final pointerPath:Landroid/graphics/Path;

.field private pointerSizePx:F

.field private final textBounds:Landroid/graphics/Rect;

.field private final textPaint:Landroid/graphics/Paint;

.field private titleText:Ljava/lang/String;

.field private trackHeightPx:F

.field private final trackPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/view/ArmAngleScaleBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/qianhe/yct/view/ArmAngleScaleBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->trackPaint:Landroid/graphics/Paint;

    .line 28
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->greenPaint:Landroid/graphics/Paint;

    .line 29
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->textPaint:Landroid/graphics/Paint;

    .line 30
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->markerPaint:Landroid/graphics/Paint;

    .line 31
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->pointerPaint:Landroid/graphics/Paint;

    .line 32
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->midPaint:Landroid/graphics/Paint;

    .line 33
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->pointerPath:Landroid/graphics/Path;

    .line 34
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->textBounds:Landroid/graphics/Rect;

    const/high16 p2, 0x7fc00000    # Float.NaN

    .line 36
    iput p2, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->arm1Deg:F

    .line 37
    iput p2, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->arm2Deg:F

    .line 38
    iput p2, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->greenCenterDeg:F

    const/4 p2, 0x0

    .line 40
    iput p2, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->currentDeg:F

    .line 63
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private angleToX(FFF)F
    .locals 1

    const/high16 v0, 0x42b40000    # 90.0f

    .line 230
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    sub-float/2addr p1, v0

    const/high16 v0, 0x43340000    # 180.0f

    div-float/2addr p1, v0

    sub-float/2addr p3, p2

    mul-float p1, p1, p3

    add-float/2addr p2, p1

    return p2
.end method

.method private drawMarker(Landroid/graphics/Canvas;FFLjava/lang/String;FFF)V
    .locals 2

    .line 223
    iget v0, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->markerRadiusPx:F

    iget-object v1, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->markerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 224
    iget-object p3, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p3

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    add-float/2addr p6, p3

    sub-float/2addr p7, p3

    .line 225
    invoke-static {p7, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 226
    iget-object p3, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p5, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static formatDeg(F)Ljava/lang/String;
    .locals 3

    .line 236
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%.1f\u00b0"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    const/high16 v0, 0x41200000    # 10.0f

    .line 67
    invoke-static {p1, v0}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->trackHeightPx:F

    .line 68
    invoke-static {p1, v0}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->pointerSizePx:F

    const/high16 v1, 0x40800000    # 4.0f

    .line 69
    invoke-static {p1, v1}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->markerRadiusPx:F

    .line 70
    invoke-static {p1, v0}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->hPadPx:F

    const/high16 v0, 0x40c00000    # 6.0f

    .line 71
    invoke-static {p1, v0}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->labelGapPx:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 72
    invoke-static {p1, v0}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->pointerGapPx:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 73
    invoke-static {p1, v0}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->endLabelTopGapPx:F

    .line 74
    invoke-static {p1, v1}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->bottomPadPx:F

    .line 75
    sget v0, Lcom/qianhe/yct/R$string;->arm_angle_scale_bar_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->titleText:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->trackPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->trackPaint:Landroid/graphics/Paint;

    sget v2, Lcom/qianhe/yct/R$color;->gray_light:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->greenPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->greenPaint:Landroid/graphics/Paint;

    sget v2, Lcom/qianhe/yct/R$color;->green_alpha:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->textPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {p1, v2}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 84
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->textPaint:Landroid/graphics/Paint;

    sget v2, Lcom/qianhe/yct/R$color;->text_black:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->textPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 87
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->markerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->markerPaint:Landroid/graphics/Paint;

    sget v2, Lcom/qianhe/yct/R$color;->text_black:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->pointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->pointerPaint:Landroid/graphics/Paint;

    sget v1, Lcom/qianhe/yct/R$color;->theme:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->midPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->midPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {p1, v1}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->midPaint:Landroid/graphics/Paint;

    sget v1, Lcom/qianhe/yct/R$color;->green_drak:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public clearReference()V
    .locals 1

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->hasReference:Z

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 116
    iput v0, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->arm1Deg:F

    .line 117
    iput v0, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->arm2Deg:F

    .line 118
    iput v0, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->greenCenterDeg:F

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->greenHalfWidthDeg:F

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 148
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 149
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 150
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v9, 0x0

    cmpg-float v4, v2, v9

    if-lez v4, :cond_4

    cmpg-float v3, v3, v9

    if-gtz v3, :cond_0

    goto/16 :goto_1

    .line 153
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->hPadPx:F

    add-float v6, v3, v4

    .line 154
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->hPadPx:F

    sub-float v7, v2, v3

    cmpg-float v2, v7, v6

    if-gtz v2, :cond_1

    goto/16 :goto_1

    .line 157
    :cond_1
    iget-object v2, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    .line 158
    iget v2, v10, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v10, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v3

    .line 161
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    .line 162
    iget v4, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->labelGapPx:F

    add-float v5, v3, v4

    add-float v11, v5, v2

    add-float/2addr v4, v11

    .line 164
    iget v2, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->trackHeightPx:F

    add-float v5, v4, v2

    add-float v8, v4, v5

    const/high16 v12, 0x40000000    # 2.0f

    div-float v13, v8, v12

    div-float/2addr v2, v12

    .line 168
    iget v8, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->endLabelTopGapPx:F

    add-float/2addr v8, v5

    iget v14, v10, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v14, v8, v14

    .line 170
    iget-object v8, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->textPaint:Landroid/graphics/Paint;

    sget-object v15, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v15}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 171
    iget-object v8, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->titleText:Ljava/lang/String;

    add-float v16, v6, v7

    const/16 v17, 0x0

    div-float v9, v16, v12

    const/high16 v16, 0x40000000    # 2.0f

    iget-object v12, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v9, v3, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 173
    iget-object v8, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->trackPaint:Landroid/graphics/Paint;

    move v3, v4

    move v4, v7

    move v7, v2

    move/from16 v18, v6

    move v6, v2

    move/from16 v2, v18

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    move v7, v2

    move v8, v4

    .line 176
    iget-object v2, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->textPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 177
    const-string v2, "-90\u00b0"

    iget-object v4, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v7, v14, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 178
    iget-object v2, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->textPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 179
    const-string v2, "90\u00b0"

    iget-object v4, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v8, v14, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 180
    iget-object v2, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 182
    iget-boolean v2, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->hasReference:Z

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->arm1Deg:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->arm2Deg:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_3

    .line 183
    iget v2, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->arm1Deg:F

    invoke-direct {v0, v2, v7, v8}, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->angleToX(FFF)F

    move-result v9

    .line 184
    iget v2, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->arm2Deg:F

    invoke-direct {v0, v2, v7, v8}, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->angleToX(FFF)F

    move-result v12

    .line 186
    iget v2, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->greenCenterDeg:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->greenHalfWidthDeg:F

    cmpl-float v4, v2, v17

    if-lez v4, :cond_2

    .line 187
    iget v4, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->greenCenterDeg:F

    sub-float v6, v4, v2

    add-float/2addr v4, v2

    .line 189
    invoke-direct {v0, v6, v7, v8}, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->angleToX(FFF)F

    move-result v2

    .line 190
    invoke-direct {v0, v4, v7, v8}, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->angleToX(FFF)F

    move-result v4

    .line 191
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move v2, v6

    iget-object v6, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->greenPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    move v14, v5

    .line 195
    iget v1, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->arm1Deg:F

    iget v2, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->arm2Deg:F

    add-float/2addr v1, v2

    div-float v1, v1, v16

    invoke-direct {v0, v1, v7, v8}, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->angleToX(FFF)F

    move-result v2

    .line 196
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v1, v4}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v3, v1

    add-float v5, v14, v1

    .line 197
    iget-object v6, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->midPaint:Landroid/graphics/Paint;

    move v4, v2

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 199
    iget v1, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->arm1Deg:F

    invoke-static {v1}, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->formatDeg(F)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p1

    move v6, v7

    move v7, v8

    move v2, v9

    move v5, v11

    move v3, v13

    invoke-direct/range {v0 .. v7}, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->drawMarker(Landroid/graphics/Canvas;FFLjava/lang/String;FFF)V

    move v4, v7

    .line 200
    iget v1, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->arm2Deg:F

    invoke-static {v1}, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->formatDeg(F)Ljava/lang/String;

    move-result-object v1

    move v2, v12

    move-object v4, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->drawMarker(Landroid/graphics/Canvas;FFLjava/lang/String;FFF)V

    move v4, v7

    goto :goto_0

    :cond_3
    move v14, v5

    move v6, v7

    move v4, v8

    .line 204
    :goto_0
    iget v2, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->currentDeg:F

    invoke-direct {v0, v2, v6, v4}, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->angleToX(FFF)F

    move-result v2

    .line 205
    iget v3, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->pointerGapPx:F

    add-float v5, v14, v3

    .line 206
    iget-object v3, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->pointerPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 207
    iget-object v3, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->pointerPath:Landroid/graphics/Path;

    invoke-virtual {v3, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 208
    iget-object v3, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->pointerPath:Landroid/graphics/Path;

    iget v7, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->pointerSizePx:F

    div-float v8, v7, v16

    sub-float v8, v2, v8

    add-float/2addr v7, v5

    invoke-virtual {v3, v8, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 209
    iget-object v3, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->pointerPath:Landroid/graphics/Path;

    iget v7, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->pointerSizePx:F

    div-float v8, v7, v16

    add-float/2addr v8, v2

    add-float/2addr v7, v5

    invoke-virtual {v3, v8, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 210
    iget-object v3, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->pointerPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 211
    iget-object v3, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->pointerPath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->pointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 213
    iget v3, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->currentDeg:F

    invoke-static {v3}, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->formatDeg(F)Ljava/lang/String;

    move-result-object v3

    .line 214
    iget-object v7, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->textBounds:Landroid/graphics/Rect;

    const/4 v11, 0x0

    invoke-virtual {v7, v3, v11, v8, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 215
    iget v7, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->pointerSizePx:F

    add-float/2addr v5, v7

    iget v7, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->labelGapPx:F

    add-float/2addr v5, v7

    iget v7, v10, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v5, v7

    .line 216
    iget-object v7, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v16

    add-float/2addr v6, v7

    iget-object v7, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->textBounds:Landroid/graphics/Rect;

    .line 217
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v16

    sub-float v7, v4, v7

    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 216
    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 218
    iget-object v4, v0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v5, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 132
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v0

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    add-float/2addr v0, v1

    iget v2, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->labelGapPx:F

    add-float/2addr v0, v2

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    iget v3, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->trackHeightPx:F

    add-float/2addr v0, v3

    iget v3, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->pointerGapPx:F

    add-float/2addr v0, v3

    iget v3, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->pointerSizePx:F

    add-float/2addr v0, v3

    add-float/2addr v0, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->bottomPadPx:F

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 133
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    .line 142
    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    .line 143
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setCurrentAngle(F)V
    .locals 1

    .line 124
    iget v0, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->currentDeg:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    iput p1, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->currentDeg:F

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setReferenceAngles(FFFF)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->arm1Deg:F

    .line 107
    iput p2, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->arm2Deg:F

    .line 108
    iput p3, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->greenCenterDeg:F

    const/4 p1, 0x0

    .line 109
    invoke-static {p1, p4}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->greenHalfWidthDeg:F

    const/4 p1, 0x1

    .line 110
    iput-boolean p1, p0, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->hasReference:Z

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
