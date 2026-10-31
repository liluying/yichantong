.class public Lcom/qianhe/yct/view/BubbleCompassView;
.super Landroid/view/View;
.source "BubbleCompassView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;
    }
.end annotation


# static fields
.field private static final IDLE_STOP_NS:J = 0x11e1a300L

.field private static final MAX_CIRCLE_DP:I = 0x118

.field private static final MAX_DEGREES:F = 30.0f

.field private static final MIN_CIRCLE_DP:I = 0xa8

.field private static final REDRAW_EPSILON_DEG:F = 0.01f

.field private static final SMOOTHING_SPEED:F = 14.0f


# instance fields
.field private baseTextSizePx:F

.field private final bubbleAnimateRunnable:Ljava/lang/Runnable;

.field private bubbleAnimating:Z

.field private final bubblePaint:Landroid/graphics/Paint;

.field private bubbleRadiusPx:F

.field private centerRingRadiusPx:F

.field private final circlePaint:Landroid/graphics/Paint;

.field private final crossPaint:Landroid/graphics/Paint;

.field private displayPitchDegrees:F

.field private displayRollDegrees:F

.field private labelInsetPx:F

.field private lastFrameTimeNs:J

.field private lastTargetUpdateNs:J

.field private minTextSizePx:F

.field private pitchLabel:Ljava/lang/String;

.field private rollBelowAxisPx:F

.field private rollLabel:Ljava/lang/String;

.field private strokeWidthPx:F

.field private targetPitchDegrees:F

.field private targetRollDegrees:F

.field private final textBounds:Landroid/graphics/Rect;

.field private final textPaint:Landroid/graphics/Paint;

.field private valueGapPx:F


# direct methods
.method static bridge synthetic -$$Nest$fgetbubbleAnimating(Lcom/qianhe/yct/view/BubbleCompassView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/view/BubbleCompassView;->bubbleAnimating:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdisplayPitchDegrees(Lcom/qianhe/yct/view/BubbleCompassView;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/view/BubbleCompassView;->displayPitchDegrees:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdisplayRollDegrees(Lcom/qianhe/yct/view/BubbleCompassView;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/view/BubbleCompassView;->displayRollDegrees:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastFrameTimeNs(Lcom/qianhe/yct/view/BubbleCompassView;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/qianhe/yct/view/BubbleCompassView;->lastFrameTimeNs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlastTargetUpdateNs(Lcom/qianhe/yct/view/BubbleCompassView;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/qianhe/yct/view/BubbleCompassView;->lastTargetUpdateNs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgettargetPitchDegrees(Lcom/qianhe/yct/view/BubbleCompassView;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/view/BubbleCompassView;->targetPitchDegrees:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettargetRollDegrees(Lcom/qianhe/yct/view/BubbleCompassView;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/view/BubbleCompassView;->targetRollDegrees:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputbubbleAnimating(Lcom/qianhe/yct/view/BubbleCompassView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/view/BubbleCompassView;->bubbleAnimating:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdisplayPitchDegrees(Lcom/qianhe/yct/view/BubbleCompassView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/view/BubbleCompassView;->displayPitchDegrees:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdisplayRollDegrees(Lcom/qianhe/yct/view/BubbleCompassView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/view/BubbleCompassView;->displayRollDegrees:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastFrameTimeNs(Lcom/qianhe/yct/view/BubbleCompassView;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/qianhe/yct/view/BubbleCompassView;->lastFrameTimeNs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mstepBubbleSmooth(Lcom/qianhe/yct/view/BubbleCompassView;F)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/BubbleCompassView;->stepBubbleSmooth(F)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/view/BubbleCompassView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, p2, v0}, Lcom/qianhe/yct/view/BubbleCompassView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/qianhe/yct/view/BubbleCompassView;->circlePaint:Landroid/graphics/Paint;

    .line 37
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/qianhe/yct/view/BubbleCompassView;->crossPaint:Landroid/graphics/Paint;

    .line 38
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/qianhe/yct/view/BubbleCompassView;->bubblePaint:Landroid/graphics/Paint;

    .line 39
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/qianhe/yct/view/BubbleCompassView;->textPaint:Landroid/graphics/Paint;

    .line 40
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/qianhe/yct/view/BubbleCompassView;->textBounds:Landroid/graphics/Rect;

    .line 52
    const-string p2, ""

    iput-object p2, p0, Lcom/qianhe/yct/view/BubbleCompassView;->pitchLabel:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/qianhe/yct/view/BubbleCompassView;->rollLabel:Ljava/lang/String;

    .line 65
    new-instance p2, Lcom/qianhe/yct/view/BubbleCompassView$1;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/view/BubbleCompassView$1;-><init>(Lcom/qianhe/yct/view/BubbleCompassView;)V

    iput-object p2, p0, Lcom/qianhe/yct/view/BubbleCompassView;->bubbleAnimateRunnable:Ljava/lang/Runnable;

    .line 120
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/BubbleCompassView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private static formatDegrees(F)Ljava/lang/String;
    .locals 3

    .line 335
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%.2f\u00b0"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 6

    .line 124
    sget v0, Lcom/qianhe/yct/R$color;->text_black:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 125
    sget v1, Lcom/qianhe/yct/R$color;->gray_bar:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    .line 127
    invoke-static {p1, v2}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/qianhe/yct/view/BubbleCompassView;->strokeWidthPx:F

    const/high16 v2, 0x41600000    # 14.0f

    .line 128
    invoke-static {p1, v2}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/qianhe/yct/view/BubbleCompassView;->bubbleRadiusPx:F

    const/high16 v4, 0x40a00000    # 5.0f

    .line 129
    invoke-static {p1, v4}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    iput v3, p0, Lcom/qianhe/yct/view/BubbleCompassView;->centerRingRadiusPx:F

    const/high16 v3, 0x40800000    # 4.0f

    .line 130
    invoke-static {p1, v3}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/qianhe/yct/view/BubbleCompassView;->labelInsetPx:F

    .line 131
    invoke-static {p1, v3}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/qianhe/yct/view/BubbleCompassView;->valueGapPx:F

    .line 132
    invoke-static {p1, v4}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/qianhe/yct/view/BubbleCompassView;->rollBelowAxisPx:F

    .line 134
    iget-object v3, p0, Lcom/qianhe/yct/view/BubbleCompassView;->circlePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 135
    iget-object v3, p0, Lcom/qianhe/yct/view/BubbleCompassView;->circlePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/qianhe/yct/view/BubbleCompassView;->strokeWidthPx:F

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 136
    iget-object v3, p0, Lcom/qianhe/yct/view/BubbleCompassView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    iget-object v3, p0, Lcom/qianhe/yct/view/BubbleCompassView;->crossPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    iget-object v3, p0, Lcom/qianhe/yct/view/BubbleCompassView;->crossPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/qianhe/yct/view/BubbleCompassView;->strokeWidthPx:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 140
    iget-object v3, p0, Lcom/qianhe/yct/view/BubbleCompassView;->crossPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    iget-object v3, p0, Lcom/qianhe/yct/view/BubbleCompassView;->bubblePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 143
    iget-object v3, p0, Lcom/qianhe/yct/view/BubbleCompassView;->bubblePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    iget-object v1, p0, Lcom/qianhe/yct/view/BubbleCompassView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    invoke-static {p1, v2}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/qianhe/yct/view/BubbleCompassView;->baseTextSizePx:F

    const/high16 v0, 0x41200000    # 10.0f

    .line 147
    invoke-static {p1, v0}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/qianhe/yct/view/BubbleCompassView;->minTextSizePx:F

    .line 148
    iget-object v0, p0, Lcom/qianhe/yct/view/BubbleCompassView;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/qianhe/yct/view/BubbleCompassView;->baseTextSizePx:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 149
    iget-object v0, p0, Lcom/qianhe/yct/view/BubbleCompassView;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 151
    sget v0, Lcom/qianhe/yct/R$string;->pitch_angle:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/view/BubbleCompassView;->pitchLabel:Ljava/lang/String;

    .line 152
    sget v0, Lcom/qianhe/yct/R$string;->roll_angle:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/view/BubbleCompassView;->rollLabel:Ljava/lang/String;

    return-void
.end method

.method private isRollTextOverflowInside(FLcom/qianhe/yct/view/BubbleCompassView$LabelLayout;)Z
    .locals 1

    .line 320
    iget v0, p2, Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;->rollLabelWidth:F

    iget p2, p2, Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;->rollValueWidth:F

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 321
    iget v0, p0, Lcom/qianhe/yct/view/BubbleCompassView;->labelInsetPx:F

    sub-float/2addr p1, v0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private measureLabelLayout(FF)Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;
    .locals 4

    .line 224
    new-instance v0, Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;-><init>(Lcom/qianhe/yct/view/BubbleCompassView-IA;)V

    .line 225
    iput p1, v0, Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;->textSize:F

    .line 226
    iget-object v1, p0, Lcom/qianhe/yct/view/BubbleCompassView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 228
    iget p1, p0, Lcom/qianhe/yct/view/BubbleCompassView;->targetPitchDegrees:F

    invoke-static {p1}, Lcom/qianhe/yct/view/BubbleCompassView;->formatDegrees(F)Ljava/lang/String;

    move-result-object p1

    .line 229
    iget v1, p0, Lcom/qianhe/yct/view/BubbleCompassView;->targetRollDegrees:F

    invoke-static {v1}, Lcom/qianhe/yct/view/BubbleCompassView;->formatDegrees(F)Ljava/lang/String;

    move-result-object v1

    .line 230
    iget-object v2, p0, Lcom/qianhe/yct/view/BubbleCompassView;->pitchLabel:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/qianhe/yct/view/BubbleCompassView;->measureTextWidth(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;->pitchLabelWidth:F

    .line 231
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/BubbleCompassView;->measureTextWidth(Ljava/lang/String;)F

    move-result p1

    iput p1, v0, Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;->pitchValueWidth:F

    .line 232
    iget-object p1, p0, Lcom/qianhe/yct/view/BubbleCompassView;->rollLabel:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/BubbleCompassView;->measureTextWidth(Ljava/lang/String;)F

    move-result p1

    iput p1, v0, Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;->rollLabelWidth:F

    .line 233
    invoke-direct {p0, v1}, Lcom/qianhe/yct/view/BubbleCompassView;->measureTextWidth(Ljava/lang/String;)F

    move-result p1

    iput p1, v0, Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;->rollValueWidth:F

    .line 234
    invoke-direct {p0, v1}, Lcom/qianhe/yct/view/BubbleCompassView;->measureTextHeight(Ljava/lang/String;)F

    move-result p1

    iput p1, v0, Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;->rollValueHeight:F

    .line 236
    iget-object p1, p0, Lcom/qianhe/yct/view/BubbleCompassView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 237
    iget v1, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, p1

    iput v1, v0, Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;->pitchTextHeight:F

    .line 239
    iget p1, v0, Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;->pitchLabelWidth:F

    iget v1, p0, Lcom/qianhe/yct/view/BubbleCompassView;->valueGapPx:F

    add-float/2addr p1, v1

    iget v1, v0, Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;->pitchValueWidth:F

    add-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 240
    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget v1, p0, Lcom/qianhe/yct/view/BubbleCompassView;->labelInsetPx:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v1, v2

    sub-float/2addr p2, v3

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;->pitchValueBelow:Z

    if-eqz p1, :cond_1

    .line 242
    iget p1, v0, Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;->pitchTextHeight:F

    mul-float p1, p1, v2

    add-float/2addr p1, v1

    iget p2, p0, Lcom/qianhe/yct/view/BubbleCompassView;->valueGapPx:F

    add-float/2addr p1, p2

    add-float/2addr p1, v1

    iput p1, v0, Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;->pitchBandHeight:F

    return-object v0

    .line 244
    :cond_1
    iget p1, v0, Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;->pitchTextHeight:F

    add-float/2addr p1, v1

    add-float/2addr p1, v1

    iput p1, v0, Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;->pitchBandHeight:F

    return-object v0
.end method

.method private measureTextHeight(Ljava/lang/String;)F
    .locals 4

    .line 330
    iget-object v0, p0, Lcom/qianhe/yct/view/BubbleCompassView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/qianhe/yct/view/BubbleCompassView;->textBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 331
    iget-object p1, p0, Lcom/qianhe/yct/view/BubbleCompassView;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method private measureTextWidth(Ljava/lang/String;)F
    .locals 4

    .line 325
    iget-object v0, p0, Lcom/qianhe/yct/view/BubbleCompassView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/qianhe/yct/view/BubbleCompassView;->textBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 326
    iget-object p1, p0, Lcom/qianhe/yct/view/BubbleCompassView;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method private resolveAdaptiveMaxCirclePx()I
    .locals 2

    .line 220
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x438c0000    # 280.0f

    invoke-static {v0, v1}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method private startBubbleAnimationIfNeeded()V
    .locals 2

    .line 165
    iget-boolean v0, p0, Lcom/qianhe/yct/view/BubbleCompassView;->bubbleAnimating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcom/qianhe/yct/view/BubbleCompassView;->bubbleAnimating:Z

    const-wide/16 v0, 0x0

    .line 169
    iput-wide v0, p0, Lcom/qianhe/yct/view/BubbleCompassView;->lastFrameTimeNs:J

    .line 170
    iget-object v0, p0, Lcom/qianhe/yct/view/BubbleCompassView;->bubbleAnimateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private stepBubbleSmooth(F)Z
    .locals 4

    const/high16 v0, -0x3ea00000    # -14.0f

    mul-float p1, p1, v0

    float-to-double v0, p1

    .line 174
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 175
    iget p1, p0, Lcom/qianhe/yct/view/BubbleCompassView;->displayRollDegrees:F

    .line 176
    iget v1, p0, Lcom/qianhe/yct/view/BubbleCompassView;->displayPitchDegrees:F

    .line 177
    iget v2, p0, Lcom/qianhe/yct/view/BubbleCompassView;->targetRollDegrees:F

    sub-float/2addr v2, p1

    mul-float v2, v2, v0

    add-float/2addr v2, p1

    iput v2, p0, Lcom/qianhe/yct/view/BubbleCompassView;->displayRollDegrees:F

    .line 178
    iget v3, p0, Lcom/qianhe/yct/view/BubbleCompassView;->targetPitchDegrees:F

    sub-float/2addr v3, v1

    mul-float v3, v3, v0

    add-float/2addr v3, v1

    iput v3, p0, Lcom/qianhe/yct/view/BubbleCompassView;->displayPitchDegrees:F

    sub-float/2addr v2, p1

    .line 179
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3c23d70a    # 0.01f

    cmpl-float p1, p1, v0

    if-gez p1, :cond_1

    iget p1, p0, Lcom/qianhe/yct/view/BubbleCompassView;->displayPitchDegrees:F

    sub-float/2addr p1, v1

    .line 180
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 185
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 186
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/yct/view/BubbleCompassView;->lastTargetUpdateNs:J

    .line 187
    invoke-direct {p0}, Lcom/qianhe/yct/view/BubbleCompassView;->startBubbleAnimationIfNeeded()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lcom/qianhe/yct/view/BubbleCompassView;->bubbleAnimating:Z

    const-wide/16 v0, 0x0

    .line 193
    iput-wide v0, p0, Lcom/qianhe/yct/view/BubbleCompassView;->lastFrameTimeNs:J

    .line 194
    iget-object v0, p0, Lcom/qianhe/yct/view/BubbleCompassView;->bubbleAnimateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 195
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 251
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 252
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 253
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v7, 0x0

    cmpg-float v4, v2, v7

    if-lez v4, :cond_5

    cmpg-float v3, v3, v7

    if-gtz v3, :cond_0

    goto/16 :goto_2

    .line 258
    :cond_0
    iget v3, v0, Lcom/qianhe/yct/view/BubbleCompassView;->baseTextSizePx:F

    invoke-direct {v0, v3, v2}, Lcom/qianhe/yct/view/BubbleCompassView;->measureLabelLayout(FF)Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;

    move-result-object v3

    .line 259
    iget v4, v0, Lcom/qianhe/yct/view/BubbleCompassView;->strokeWidthPx:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float v9, v4, v8

    div-float v10, v2, v8

    sub-float v11, v10, v9

    move-object v12, v3

    .line 261
    :goto_0
    iget v3, v12, Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;->textSize:F

    iget v4, v0, Lcom/qianhe/yct/view/BubbleCompassView;->minTextSizePx:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    invoke-direct {v0, v11, v12}, Lcom/qianhe/yct/view/BubbleCompassView;->isRollTextOverflowInside(FLcom/qianhe/yct/view/BubbleCompassView$LabelLayout;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 262
    iget v3, v12, Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;->textSize:F

    sub-float/2addr v3, v13

    invoke-direct {v0, v3, v2}, Lcom/qianhe/yct/view/BubbleCompassView;->measureLabelLayout(FF)Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;

    move-result-object v12

    goto :goto_0

    .line 265
    :cond_1
    iget-object v2, v0, Lcom/qianhe/yct/view/BubbleCompassView;->textPaint:Landroid/graphics/Paint;

    iget v3, v12, Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;->textSize:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 266
    iget-object v2, v0, Lcom/qianhe/yct/view/BubbleCompassView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v14

    .line 268
    iget v2, v0, Lcom/qianhe/yct/view/BubbleCompassView;->bubbleRadiusPx:F

    cmpg-float v2, v11, v2

    if-gtz v2, :cond_2

    goto/16 :goto_2

    .line 273
    :cond_2
    iget v2, v12, Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;->pitchBandHeight:F

    add-float v3, v2, v10

    .line 275
    iget-object v2, v0, Lcom/qianhe/yct/view/BubbleCompassView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v3, v11, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 276
    iget v2, v0, Lcom/qianhe/yct/view/BubbleCompassView;->centerRingRadiusPx:F

    iget-object v4, v0, Lcom/qianhe/yct/view/BubbleCompassView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sub-float v2, v10, v11

    .line 277
    iget v4, v0, Lcom/qianhe/yct/view/BubbleCompassView;->centerRingRadiusPx:F

    sub-float v4, v10, v4

    iget-object v6, v0, Lcom/qianhe/yct/view/BubbleCompassView;->crossPaint:Landroid/graphics/Paint;

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 278
    iget v1, v0, Lcom/qianhe/yct/view/BubbleCompassView;->centerRingRadiusPx:F

    add-float v2, v10, v1

    add-float v4, v10, v11

    iget-object v6, v0, Lcom/qianhe/yct/view/BubbleCompassView;->crossPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v15, v3

    move/from16 v16, v4

    sub-float v3, v15, v11

    .line 279
    iget v1, v0, Lcom/qianhe/yct/view/BubbleCompassView;->centerRingRadiusPx:F

    sub-float v5, v15, v1

    iget-object v6, v0, Lcom/qianhe/yct/view/BubbleCompassView;->crossPaint:Landroid/graphics/Paint;

    move v4, v10

    move-object/from16 v1, p1

    move v2, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 280
    iget v1, v0, Lcom/qianhe/yct/view/BubbleCompassView;->centerRingRadiusPx:F

    add-float v3, v15, v1

    add-float v5, v15, v11

    iget-object v6, v0, Lcom/qianhe/yct/view/BubbleCompassView;->crossPaint:Landroid/graphics/Paint;

    move v4, v2

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 282
    iget v3, v0, Lcom/qianhe/yct/view/BubbleCompassView;->targetPitchDegrees:F

    invoke-static {v3}, Lcom/qianhe/yct/view/BubbleCompassView;->formatDegrees(F)Ljava/lang/String;

    move-result-object v3

    .line 283
    iget v4, v0, Lcom/qianhe/yct/view/BubbleCompassView;->targetRollDegrees:F

    invoke-static {v4}, Lcom/qianhe/yct/view/BubbleCompassView;->formatDegrees(F)Ljava/lang/String;

    move-result-object v4

    .line 286
    iget-object v5, v0, Lcom/qianhe/yct/view/BubbleCompassView;->textPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 287
    iget-boolean v5, v12, Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;->pitchValueBelow:Z

    if-eqz v5, :cond_3

    .line 288
    iget v5, v12, Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;->pitchBandHeight:F

    div-float/2addr v5, v8

    .line 289
    iget-object v10, v0, Lcom/qianhe/yct/view/BubbleCompassView;->pitchLabel:Ljava/lang/String;

    const/high16 v17, 0x40000000    # 2.0f

    iget v8, v0, Lcom/qianhe/yct/view/BubbleCompassView;->valueGapPx:F

    div-float v8, v8, v17

    sub-float v8, v5, v8

    const/high16 v18, 0x3f800000    # 1.0f

    iget v13, v14, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v8, v13

    iget-object v13, v0, Lcom/qianhe/yct/view/BubbleCompassView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v2, v8, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 290
    iget v8, v12, Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;->pitchTextHeight:F

    add-float/2addr v5, v8

    iget v8, v0, Lcom/qianhe/yct/view/BubbleCompassView;->valueGapPx:F

    div-float v8, v8, v17

    add-float/2addr v5, v8

    iget v8, v14, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v5, v8

    iget-object v8, v0, Lcom/qianhe/yct/view/BubbleCompassView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v5, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    const/high16 v17, 0x40000000    # 2.0f

    const/high16 v18, 0x3f800000    # 1.0f

    .line 292
    iget v5, v12, Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;->pitchBandHeight:F

    iget v8, v0, Lcom/qianhe/yct/view/BubbleCompassView;->labelInsetPx:F

    sub-float/2addr v5, v8

    iget v8, v14, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v5, v8

    .line 293
    iget-object v8, v0, Lcom/qianhe/yct/view/BubbleCompassView;->pitchLabel:Ljava/lang/String;

    iget-object v10, v0, Lcom/qianhe/yct/view/BubbleCompassView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v2, v5, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 294
    iget-object v8, v0, Lcom/qianhe/yct/view/BubbleCompassView;->textPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 295
    iget v8, v12, Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;->pitchLabelWidth:F

    div-float v8, v8, v17

    add-float v10, v2, v8

    iget v8, v0, Lcom/qianhe/yct/view/BubbleCompassView;->valueGapPx:F

    add-float/2addr v10, v8

    iget-object v8, v0, Lcom/qianhe/yct/view/BubbleCompassView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v10, v5, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 296
    iget-object v3, v0, Lcom/qianhe/yct/view/BubbleCompassView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 300
    :goto_1
    iget v3, v0, Lcom/qianhe/yct/view/BubbleCompassView;->labelInsetPx:F

    sub-float v3, v16, v3

    .line 301
    iget v5, v0, Lcom/qianhe/yct/view/BubbleCompassView;->rollBelowAxisPx:F

    add-float/2addr v5, v15

    iget v8, v14, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v5, v8

    .line 302
    iget-object v8, v0, Lcom/qianhe/yct/view/BubbleCompassView;->textPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 303
    iget-object v8, v0, Lcom/qianhe/yct/view/BubbleCompassView;->rollLabel:Ljava/lang/String;

    iget-object v10, v0, Lcom/qianhe/yct/view/BubbleCompassView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v3, v5, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 304
    iget v8, v0, Lcom/qianhe/yct/view/BubbleCompassView;->valueGapPx:F

    add-float/2addr v5, v8

    iget v8, v12, Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;->rollValueHeight:F

    add-float/2addr v5, v8

    iget-object v8, v0, Lcom/qianhe/yct/view/BubbleCompassView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v5, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 305
    iget-object v3, v0, Lcom/qianhe/yct/view/BubbleCompassView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 307
    iget v3, v0, Lcom/qianhe/yct/view/BubbleCompassView;->bubbleRadiusPx:F

    sub-float/2addr v11, v3

    sub-float/2addr v11, v9

    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 308
    iget v4, v0, Lcom/qianhe/yct/view/BubbleCompassView;->displayRollDegrees:F

    const/high16 v5, 0x41f00000    # 30.0f

    div-float/2addr v4, v5

    .line 309
    iget v6, v0, Lcom/qianhe/yct/view/BubbleCompassView;->displayPitchDegrees:F

    div-float/2addr v6, v5

    float-to-double v7, v4

    float-to-double v9, v6

    .line 310
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v5, v7

    cmpl-float v7, v5, v18

    if-lez v7, :cond_4

    div-float/2addr v4, v5

    div-float/2addr v6, v5

    :cond_4
    mul-float v4, v4, v3

    add-float v10, v2, v4

    mul-float v6, v6, v3

    sub-float v3, v15, v6

    .line 315
    iget v2, v0, Lcom/qianhe/yct/view/BubbleCompassView;->bubbleRadiusPx:F

    iget-object v4, v0, Lcom/qianhe/yct/view/BubbleCompassView;->bubblePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 200
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 201
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    if-eqz p1, :cond_0

    if-gtz p2, :cond_1

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/view/BubbleCompassView;->resolveAdaptiveMaxCirclePx()I

    move-result p2

    .line 206
    :cond_1
    iget p1, p0, Lcom/qianhe/yct/view/BubbleCompassView;->baseTextSizePx:F

    int-to-float v0, p2

    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/view/BubbleCompassView;->measureLabelLayout(FF)Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;

    move-result-object p1

    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43280000    # 168.0f

    invoke-static {v0, v1}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 208
    invoke-direct {p0}, Lcom/qianhe/yct/view/BubbleCompassView;->resolveAdaptiveMaxCirclePx()I

    move-result v1

    .line 210
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 211
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 214
    iget p1, p1, Lcom/qianhe/yct/view/BubbleCompassView$LabelLayout;->pitchBandHeight:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p1, p2

    .line 215
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAngles(DD)V
    .locals 0

    double-to-float p1, p1

    .line 157
    iput p1, p0, Lcom/qianhe/yct/view/BubbleCompassView;->targetRollDegrees:F

    double-to-float p1, p3

    .line 158
    iput p1, p0, Lcom/qianhe/yct/view/BubbleCompassView;->targetPitchDegrees:F

    .line 159
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/qianhe/yct/view/BubbleCompassView;->lastTargetUpdateNs:J

    .line 160
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 161
    invoke-direct {p0}, Lcom/qianhe/yct/view/BubbleCompassView;->startBubbleAnimationIfNeeded()V

    return-void
.end method
