.class public Lcom/qianhe/yct/view/StarMapRadarRenderer;
.super Lcom/github/mikephil/charting/renderer/RadarChartRenderer;
.source "StarMapRadarRenderer.java"


# static fields
.field private static final ANGLE_LABELS:[Ljava/lang/String;


# instance fields
.field private angleLabelBaseline:F

.field private bgColor:I

.field private colorBds:I

.field private colorGal:I

.field private colorGln:I

.field private colorGps:I

.field private colorGray:I

.field private colorIrnss:I

.field private colorQzss:I

.field private colorSbas:I

.field private final hideSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final isPad:Z

.field private mAngleLabelPaint:Landroid/graphics/Paint;

.field private mAngleLinePaint:Landroid/graphics/Paint;

.field private mContentHeight:F

.field private final mContext:Landroid/content/Context;

.field private mOrbitPaint:Landroid/graphics/Paint;

.field private mSatellitePaint:Landroid/graphics/Paint;

.field private final mSavList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/SAVEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mStarIdPaint:Landroid/graphics/Paint;

.field private satelliteRadius:F

.field private final sauPrnSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private starIdBaseline:F


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 25
    const-string v10, "300\u00b0"

    const-string v11, "330\u00b0"

    const-string v0, "0\u00b0"

    const-string v1, "30\u00b0"

    const-string v2, "60\u00b0"

    const-string v3, "90\u00b0"

    const-string v4, "120\u00b0"

    const-string v5, "150\u00b0"

    const-string v6, "180\u00b0"

    const-string v7, "210\u00b0"

    const-string v8, "240\u00b0"

    const-string v9, "270\u00b0"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->ANGLE_LABELS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/github/mikephil/charting/charts/RadarChart;)V
    .locals 2

    .line 51
    invoke-virtual {p3}, Lcom/github/mikephil/charting/charts/Chart;->getAnimator()Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-result-object v0

    invoke-virtual {p3}, Lcom/github/mikephil/charting/charts/Chart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v1

    invoke-direct {p0, p3, v0, v1}, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;-><init>(Lcom/github/mikephil/charting/charts/RadarChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    const/4 p3, 0x0

    .line 33
    iput p3, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mContentHeight:F

    .line 46
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mSavList:Ljava/util/List;

    .line 47
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->sauPrnSet:Ljava/util/Set;

    .line 48
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->hideSet:Ljava/util/Set;

    .line 52
    iput-object p1, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mContext:Landroid/content/Context;

    .line 53
    iput-boolean p2, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->isPad:Z

    .line 54
    invoke-direct {p0}, Lcom/qianhe/yct/view/StarMapRadarRenderer;->initPaints()V

    return-void
.end method

.method private dpToPx(F)F
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private drawAziTxt(Ljava/lang/String;Landroid/graphics/Canvas;FFF)V
    .locals 4

    const v0, 0x3f866666    # 1.05f

    mul-float p3, p3, v0

    const-wide v0, -0x3fa9800000000000L    # -90.0

    .line 224
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, p3

    add-float/2addr p4, v2

    .line 225
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float p3, p3, v0

    add-float/2addr p5, p3

    .line 226
    iget p3, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->angleLabelBaseline:F

    add-float/2addr p5, p3

    iget-object p3, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mAngleLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, p4, p5, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawStar(Landroid/graphics/Canvas;FFFFF)V
    .locals 13

    .line 140
    iget-object v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mSavList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mSavList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/SAVEntity;

    .line 142
    iget-object v2, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->hideSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->hideSet:Ljava/util/Set;

    iget v3, v1, Lcom/qianhe/baselib/bean/SAVEntity;->type:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    iget v2, v1, Lcom/qianhe/baselib/bean/SAVEntity;->azimuthAngle:I

    const/16 v3, 0x10e

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/16 v7, 0x5a

    if-le v2, v3, :cond_2

    rsub-int v2, v2, 0x168

    sub-int/2addr v7, v2

    int-to-float v2, v7

    const/4 v3, 0x4

    goto :goto_1

    :cond_2
    const/16 v3, 0xb4

    if-le v2, v3, :cond_3

    add-int/lit16 v2, v2, -0xb4

    sub-int/2addr v7, v2

    int-to-float v2, v7

    const/4 v3, 0x3

    goto :goto_1

    :cond_3
    if-le v2, v7, :cond_4

    rsub-int v2, v2, 0xb4

    sub-int/2addr v7, v2

    int-to-float v2, v7

    const/4 v3, 0x2

    goto :goto_1

    :cond_4
    rsub-int/lit8 v2, v2, 0x5a

    int-to-float v2, v2

    const/4 v3, 0x1

    .line 160
    :goto_1
    iget v7, v1, Lcom/qianhe/baselib/bean/SAVEntity;->elevationAngle:I

    const/high16 v8, 0x41f00000    # 30.0f

    const/16 v9, 0x1e

    if-ltz v7, :cond_5

    if-gt v7, v9, :cond_5

    sub-float v9, p4, p6

    div-float/2addr v9, v8

    rsub-int/lit8 v7, v7, 0x1e

    int-to-float v7, v7

    mul-float v9, v9, v7

    add-float v9, p6, v9

    float-to-double v7, v2

    .line 163
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    double-to-float v2, v7

    float-to-double v7, v9

    float-to-double v9, v2

    .line 164
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v11, v11, v7

    double-to-float v2, v11

    .line 165
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    :goto_2
    mul-double v7, v7, v9

    double-to-float v7, v7

    goto :goto_3

    :cond_5
    if-lt v7, v9, :cond_6

    const/16 v9, 0x3c

    if-gt v7, v9, :cond_6

    sub-float v9, p6, p5

    div-float/2addr v9, v8

    rsub-int/lit8 v7, v7, 0x3c

    int-to-float v7, v7

    mul-float v9, v9, v7

    add-float v9, p5, v9

    float-to-double v7, v2

    .line 169
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    double-to-float v2, v7

    float-to-double v7, v9

    float-to-double v9, v2

    .line 170
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v11, v11, v7

    double-to-float v2, v11

    .line 171
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    goto :goto_2

    :cond_6
    div-float v8, p5, v8

    rsub-int/lit8 v7, v7, 0x5a

    int-to-float v7, v7

    mul-float v8, v8, v7

    float-to-double v9, v2

    .line 175
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    double-to-float v2, v9

    float-to-double v7, v8

    float-to-double v9, v2

    .line 176
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v11, v11, v7

    double-to-float v2, v11

    .line 177
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    goto :goto_2

    :goto_3
    if-ne v3, v4, :cond_7

    add-float/2addr v2, p2

    :goto_4
    sub-float v3, p3, v7

    goto :goto_6

    :cond_7
    if-ne v3, v5, :cond_8

    add-float/2addr v2, p2

    :goto_5
    add-float v3, p3, v7

    goto :goto_6

    :cond_8
    if-ne v3, v6, :cond_9

    sub-float v2, p2, v2

    goto :goto_5

    :cond_9
    sub-float v2, p2, v2

    goto :goto_4

    .line 195
    :goto_6
    iget-object v4, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->sauPrnSet:Ljava/util/Set;

    iget v5, v1, Lcom/qianhe/baselib/bean/SAVEntity;->PRN:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 196
    iget v5, v1, Lcom/qianhe/baselib/bean/SAVEntity;->type:I

    .line 197
    iget v6, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->colorGray:I

    if-eqz v4, :cond_10

    .line 199
    sget-object v4, Lcom/qianhe/baselib/enums/StarTypeEnum;->GPS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result v4

    if-ne v5, v4, :cond_a

    .line 200
    iget v6, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->colorGps:I

    goto :goto_7

    .line 201
    :cond_a
    sget-object v4, Lcom/qianhe/baselib/enums/StarTypeEnum;->GLN:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result v4

    if-ne v5, v4, :cond_b

    .line 202
    iget v6, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->colorGln:I

    goto :goto_7

    .line 203
    :cond_b
    sget-object v4, Lcom/qianhe/baselib/enums/StarTypeEnum;->SBAS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result v4

    if-ne v5, v4, :cond_c

    .line 204
    iget v6, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->colorSbas:I

    goto :goto_7

    .line 205
    :cond_c
    sget-object v4, Lcom/qianhe/baselib/enums/StarTypeEnum;->BDS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result v4

    if-ne v5, v4, :cond_d

    .line 206
    iget v6, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->colorBds:I

    goto :goto_7

    .line 207
    :cond_d
    sget-object v4, Lcom/qianhe/baselib/enums/StarTypeEnum;->GAL:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result v4

    if-ne v5, v4, :cond_e

    .line 208
    iget v6, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->colorGal:I

    goto :goto_7

    .line 209
    :cond_e
    sget-object v4, Lcom/qianhe/baselib/enums/StarTypeEnum;->QZSS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result v4

    if-ne v5, v4, :cond_f

    .line 210
    iget v6, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->colorQzss:I

    goto :goto_7

    .line 211
    :cond_f
    sget-object v4, Lcom/qianhe/baselib/enums/StarTypeEnum;->IRNSS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result v4

    if-ne v5, v4, :cond_10

    .line 212
    iget v6, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->colorIrnss:I

    .line 215
    :cond_10
    :goto_7
    iget-object v4, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mSatellitePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 216
    iget-object v4, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mSatellitePaint:Landroid/graphics/Paint;

    const/16 v5, 0x96

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 217
    iget v4, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->satelliteRadius:F

    iget-object v5, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mSatellitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 218
    iget v1, v1, Lcom/qianhe/baselib/bean/SAVEntity;->starId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->starIdBaseline:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mStarIdPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_11
    :goto_8
    return-void
.end method

.method private initPaints()V
    .locals 9

    .line 58
    iget-object v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mContext:Landroid/content/Context;

    sget v1, Lcom/qianhe/yct/R$color;->bg_base:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->bgColor:I

    .line 59
    iget-object v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mContext:Landroid/content/Context;

    sget v1, Lcom/qianhe/yct/R$color;->gray:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->colorGray:I

    .line 60
    iget-object v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mContext:Landroid/content/Context;

    sget v1, Lcom/qianhe/yct/R$color;->blue_light:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->colorGps:I

    .line 61
    iget-object v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mContext:Landroid/content/Context;

    sget v1, Lcom/qianhe/yct/R$color;->red_light:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->colorGln:I

    .line 62
    iget-object v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mContext:Landroid/content/Context;

    sget v1, Lcom/qianhe/yct/R$color;->orange:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->colorSbas:I

    .line 63
    iget-object v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mContext:Landroid/content/Context;

    sget v1, Lcom/qianhe/yct/R$color;->green_light:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->colorBds:I

    .line 64
    iget-object v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mContext:Landroid/content/Context;

    sget v1, Lcom/qianhe/yct/R$color;->purple_200:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->colorGal:I

    .line 65
    iget-object v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mContext:Landroid/content/Context;

    sget v1, Lcom/qianhe/yct/R$color;->teal_200:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->colorQzss:I

    .line 66
    iget-object v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mContext:Landroid/content/Context;

    sget v1, Lcom/qianhe/yct/R$color;->yellow:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->colorIrnss:I

    const/high16 v0, 0x41a00000    # 20.0f

    .line 67
    invoke-direct {p0, v0}, Lcom/qianhe/yct/view/StarMapRadarRenderer;->dpToPx(F)F

    move-result v1

    iput v1, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->satelliteRadius:F

    .line 69
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mOrbitPaint:Landroid/graphics/Paint;

    .line 70
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iget-object v1, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mOrbitPaint:Landroid/graphics/Paint;

    const v4, -0x777778

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v1, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mOrbitPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mSatellitePaint:Landroid/graphics/Paint;

    .line 75
    iget v6, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->colorGray:I

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v1, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mSatellitePaint:Landroid/graphics/Paint;

    const/16 v6, 0x96

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 78
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mStarIdPaint:Landroid/graphics/Paint;

    .line 79
    iget-object v6, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mContext:Landroid/content/Context;

    sget v7, Lcom/qianhe/yct/R$color;->text_black:I

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v1, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mStarIdPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/view/StarMapRadarRenderer;->dpToPx(F)F

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 81
    iget-object v1, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mStarIdPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 82
    iget-object v1, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mStarIdPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 83
    iget-object v1, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mStarIdPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 84
    iget v8, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v1, v8, v1

    div-float/2addr v1, v5

    sub-float/2addr v1, v8

    iput v1, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->starIdBaseline:F

    .line 86
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mAngleLinePaint:Landroid/graphics/Paint;

    .line 87
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v1, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mAngleLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    iget-object v1, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mAngleLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mAngleLabelPaint:Landroid/graphics/Paint;

    const v2, -0xffff01

    .line 92
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object v1, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mAngleLabelPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/view/StarMapRadarRenderer;->dpToPx(F)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 94
    iget-object v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mAngleLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 95
    iget-object v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mAngleLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 96
    iget-object v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mAngleLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 97
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v0, v1, v0

    div-float/2addr v0, v5

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->angleLabelBaseline:F

    return-void
.end method


# virtual methods
.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 13

    .line 106
    iget v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->bgColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 107
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    .line 110
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    .line 111
    iget-boolean v1, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->isPad:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    :goto_0
    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v0, v7

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v8, v0, v1

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v1, v1, v8

    add-float v9, v8, v1

    .line 114
    iget-object v1, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mOrbitPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 115
    iget-object v1, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mOrbitPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v9, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 116
    iget-object v1, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mOrbitPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v8, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_1
    const/16 v1, 0xc

    if-ge v10, v1, :cond_1

    int-to-float v1, v10

    const/high16 v2, 0x41f00000    # 30.0f

    mul-float v1, v1, v2

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float/2addr v1, v2

    float-to-double v1, v1

    .line 120
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v1, v1

    .line 121
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v11, v3

    .line 122
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v12, v1

    mul-float v1, v0, v11

    add-float v4, v5, v1

    mul-float v1, v0, v12

    add-float/2addr v1, v6

    move v3, v6

    .line 123
    iget-object v6, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mAngleLinePaint:Landroid/graphics/Paint;

    move v2, v5

    move v5, v1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v5, v2

    move v6, v3

    move-object v3, v1

    const p1, 0x3f87ae14    # 1.06f

    mul-float p1, p1, v0

    .line 125
    sget-object v1, Lcom/qianhe/yct/view/StarMapRadarRenderer;->ANGLE_LABELS:[Ljava/lang/String;

    aget-object v1, v1, v10

    mul-float v11, v11, p1

    add-float v2, v5, v11

    mul-float p1, p1, v12

    add-float/2addr p1, v6

    iget v4, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->angleLabelBaseline:F

    add-float/2addr p1, v4

    iget-object v4, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mAngleLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v2, p1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v10, v10, 0x1

    move-object p1, v3

    goto :goto_1

    :cond_1
    move-object v3, p1

    .line 127
    const-string v2, "30\u00b0"

    move-object v1, p0

    move v4, v9

    invoke-direct/range {v1 .. v6}, Lcom/qianhe/yct/view/StarMapRadarRenderer;->drawAziTxt(Ljava/lang/String;Landroid/graphics/Canvas;FFF)V

    move v7, v4

    const/high16 p1, 0x40000000    # 2.0f

    .line 128
    const-string v2, "60\u00b0"

    move v4, v8

    invoke-direct/range {v1 .. v6}, Lcom/qianhe/yct/view/StarMapRadarRenderer;->drawAziTxt(Ljava/lang/String;Landroid/graphics/Canvas;FFF)V

    .line 130
    iget-object v2, v1, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mAngleLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v8, v1, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mAngleLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v8

    sub-float/2addr v2, v8

    add-float/2addr v2, v0

    mul-float v2, v2, p1

    iput v2, v1, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mContentHeight:F

    move v2, v6

    move v6, v4

    move v4, v2

    move-object v2, v3

    move v3, v5

    move v5, v0

    .line 132
    invoke-direct/range {v1 .. v7}, Lcom/qianhe/yct/view/StarMapRadarRenderer;->drawStar(Landroid/graphics/Canvas;FFFFF)V

    return-void
.end method

.method public getContentHeight()F
    .locals 1

    .line 101
    iget v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mContentHeight:F

    return v0
.end method

.method public refreshSAU(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->sauPrnSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 236
    iget-object v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->sauPrnSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public refreshSAV(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/SAVEntity;",
            ">;)V"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mSavList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 231
    iget-object v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->mSavList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public refreshShowType(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->hideSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    if-eqz p1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/qianhe/yct/view/StarMapRadarRenderer;->hideSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
