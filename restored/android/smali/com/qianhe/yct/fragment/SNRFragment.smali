.class public Lcom/qianhe/yct/fragment/SNRFragment;
.super Lcom/qianhe/yct/base/BaseFragment;
.source "SNRFragment.java"


# instance fields
.field private appConfig:Lcom/qianhe/yct/bean/AppConfig;

.field private binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

.field private init:Z

.field private sauFrameReady:Z

.field private final sauPRNList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final sauPRNSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final sauReadyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private savFrameReady:Z

.field private final savPRNList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final savPRNSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final savReadyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private snrFrameReady:Z

.field private final snrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/SNREntity;",
            ">;"
        }
    .end annotation
.end field

.field private final snrReadyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/SNREntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$d-BNCgQZs54t08LvFB-eTyt9WIk(Lcom/qianhe/yct/view/CustomBarChart;Lcom/github/mikephil/charting/components/Description;)V
    .locals 3

    .line 353
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 354
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/github/mikephil/charting/components/Description;->setPosition(FF)V

    .line 355
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseFragment;-><init>()V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->snrList:Ljava/util/List;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->savPRNList:Ljava/util/List;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->sauPRNList:Ljava/util/List;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->snrReadyList:Ljava/util/List;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->savReadyList:Ljava/util/List;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->sauReadyList:Ljava/util/List;

    .line 139
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->savPRNSet:Ljava/util/Set;

    .line 140
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->sauPRNSet:Ljava/util/Set;

    return-void
.end method

.method private initChart(Lcom/qianhe/yct/view/CustomBarChart;)V
    .locals 6

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setPinchZoom(Z)V

    .line 95
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawBarShadow(Z)V

    .line 96
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setDrawGridBackground(Z)V

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$color;->text_black:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 101
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    .line 102
    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawGridLines(Z)V

    const/4 v3, 0x0

    .line 103
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    const/high16 v4, 0x41200000    # 10.0f

    .line 104
    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/AxisBase;->setGranularity(F)V

    .line 105
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 107
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    .line 108
    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawAxisLine(Z)V

    const/4 v5, 0x1

    .line 109
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawGridLines(Z)V

    .line 110
    invoke-virtual {v2, v4, v4, v3}, Lcom/github/mikephil/charting/components/AxisBase;->enableGridDashedLine(FFF)V

    .line 111
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    .line 112
    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/AxisBase;->setGranularity(F)V

    .line 113
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 115
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 116
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 117
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 118
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 121
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setDoubleTapToZoomEnabled(Z)V

    .line 128
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/Chart;->setHighlightPerTapEnabled(Z)V

    .line 129
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setHighlightPerDragEnabled(Z)V

    .line 130
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setDragYEnabled(Z)V

    return-void
.end method

.method private static parsePacketHeader(Ljava/lang/String;)[I
    .locals 3

    .line 198
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 199
    array-length v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x1

    .line 201
    :try_start_0
    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    .line 202
    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lez v0, :cond_2

    if-gtz p0, :cond_1

    goto :goto_0

    .line 204
    :cond_1
    filled-new-array {v0, p0}, [I

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    :goto_0
    return-object v2
.end method

.method private refreshCharts(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/SNREntity;",
            ">;)V"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartBDS:Lcom/qianhe/yct/view/CustomBarChart;

    sget-object v1, Lcom/qianhe/baselib/enums/StarTypeEnum;->BDS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-direct {p0, v0, v1, p1}, Lcom/qianhe/yct/fragment/SNRFragment;->refreshData(Lcom/qianhe/yct/view/CustomBarChart;Lcom/qianhe/baselib/enums/StarTypeEnum;Ljava/util/List;)V

    .line 236
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartGPS:Lcom/qianhe/yct/view/CustomBarChart;

    sget-object v1, Lcom/qianhe/baselib/enums/StarTypeEnum;->GPS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-direct {p0, v0, v1, p1}, Lcom/qianhe/yct/fragment/SNRFragment;->refreshData(Lcom/qianhe/yct/view/CustomBarChart;Lcom/qianhe/baselib/enums/StarTypeEnum;Ljava/util/List;)V

    .line 237
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartGLN:Lcom/qianhe/yct/view/CustomBarChart;

    sget-object v1, Lcom/qianhe/baselib/enums/StarTypeEnum;->GLN:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-direct {p0, v0, v1, p1}, Lcom/qianhe/yct/fragment/SNRFragment;->refreshData(Lcom/qianhe/yct/view/CustomBarChart;Lcom/qianhe/baselib/enums/StarTypeEnum;Ljava/util/List;)V

    .line 238
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartGAL:Lcom/qianhe/yct/view/CustomBarChart;

    sget-object v1, Lcom/qianhe/baselib/enums/StarTypeEnum;->GAL:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-direct {p0, v0, v1, p1}, Lcom/qianhe/yct/fragment/SNRFragment;->refreshData(Lcom/qianhe/yct/view/CustomBarChart;Lcom/qianhe/baselib/enums/StarTypeEnum;Ljava/util/List;)V

    .line 239
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartQZSS:Lcom/qianhe/yct/view/CustomBarChart;

    sget-object v1, Lcom/qianhe/baselib/enums/StarTypeEnum;->QZSS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-direct {p0, v0, v1, p1}, Lcom/qianhe/yct/fragment/SNRFragment;->refreshData(Lcom/qianhe/yct/view/CustomBarChart;Lcom/qianhe/baselib/enums/StarTypeEnum;Ljava/util/List;)V

    .line 240
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartSBAS:Lcom/qianhe/yct/view/CustomBarChart;

    sget-object v1, Lcom/qianhe/baselib/enums/StarTypeEnum;->SBAS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-direct {p0, v0, v1, p1}, Lcom/qianhe/yct/fragment/SNRFragment;->refreshData(Lcom/qianhe/yct/view/CustomBarChart;Lcom/qianhe/baselib/enums/StarTypeEnum;Ljava/util/List;)V

    .line 241
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartIRNSS:Lcom/qianhe/yct/view/CustomBarChart;

    sget-object v1, Lcom/qianhe/baselib/enums/StarTypeEnum;->IRNSS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-direct {p0, v0, v1, p1}, Lcom/qianhe/yct/fragment/SNRFragment;->refreshData(Lcom/qianhe/yct/view/CustomBarChart;Lcom/qianhe/baselib/enums/StarTypeEnum;Ljava/util/List;)V

    return-void
.end method

.method private refreshData(Lcom/qianhe/yct/view/CustomBarChart;Lcom/qianhe/baselib/enums/StarTypeEnum;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qianhe/yct/view/CustomBarChart;",
            "Lcom/qianhe/baselib/enums/StarTypeEnum;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/SNREntity;",
            ">;)V"
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 248
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0xa

    if-eqz v4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/baselib/bean/SNREntity;

    .line 249
    iget v6, v4, Lcom/qianhe/baselib/bean/SNREntity;->type:I

    invoke-virtual {p2}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result v7

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/qianhe/yct/fragment/SNRFragment;->savPRNSet:Ljava/util/Set;

    iget v7, v4, Lcom/qianhe/baselib/bean/SNREntity;->PNR:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/qianhe/yct/fragment/SNRFragment;->sauPRNSet:Ljava/util/Set;

    iget v7, v4, Lcom/qianhe/baselib/bean/SNREntity;->PNR:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 250
    new-instance v6, Lcom/github/mikephil/charting/data/BarEntry;

    add-int/lit8 v7, v3, 0x1

    int-to-float v8, v3

    iget v9, v4, Lcom/qianhe/baselib/bean/SNREntity;->L1:F

    invoke-direct {v6, v8, v9}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 251
    new-instance v8, Lcom/github/mikephil/charting/data/BarEntry;

    add-int/lit8 v9, v3, 0x2

    int-to-float v7, v7

    iget v10, v4, Lcom/qianhe/baselib/bean/SNREntity;->L2:F

    invoke-direct {v8, v7, v10}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 252
    new-instance v7, Lcom/github/mikephil/charting/data/BarEntry;

    add-int/lit8 v10, v3, 0x3

    int-to-float v9, v9

    iget v11, v4, Lcom/qianhe/baselib/bean/SNREntity;->L5:F

    invoke-direct {v7, v9, v11}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 254
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    new-instance v6, Lcom/github/mikephil/charting/data/BarEntry;

    add-int/lit8 v3, v3, 0x4

    int-to-float v7, v10

    const/high16 v8, -0x40800000    # -1.0f

    invoke-direct {v6, v7, v8}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "G"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/qianhe/baselib/bean/SNREntity;->id:I

    if-lt v7, v5, :cond_1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/qianhe/baselib/bean/SNREntity;->id:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 261
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    goto/16 :goto_4

    .line 262
    :cond_3
    iget-boolean p3, p0, Lcom/qianhe/yct/fragment/SNRFragment;->init:Z

    const/4 v3, 0x1

    if-nez p3, :cond_4

    .line 263
    iput-boolean v3, p0, Lcom/qianhe/yct/fragment/SNRFragment;->init:Z

    .line 264
    invoke-static {}, Lcom/qianhe/yct/activity/LocateInfoActivity;->retain()Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;

    move-result-object p3

    iput-boolean v3, p3, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->snrStreamInited:Z

    .line 265
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Lcom/qianhe/yct/activity/LocateInfoActivity;

    iget-object v4, p0, Lcom/qianhe/yct/fragment/SNRFragment;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v4, v4, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v6, v4, Lcom/qianhe/yct/bean/AppConfig$Details;->snr_interval:F

    iget v7, v4, Lcom/qianhe/yct/bean/AppConfig$Details;->sav_interval:F

    iget v4, v4, Lcom/qianhe/yct/bean/AppConfig$Details;->sau_interval:F

    invoke-virtual {p3, v6, v7, v4}, Lcom/qianhe/yct/activity/LocateInfoActivity;->requestData(FFF)V

    .line 268
    :cond_4
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object p3

    .line 269
    invoke-virtual {p3, v2}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawGridLines(Z)V

    .line 270
    sget-object v4, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {p3, v4}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 271
    invoke-virtual {p3, v4}, Lcom/github/mikephil/charting/components/AxisBase;->setGranularity(F)V

    .line 272
    invoke-virtual {p3, v3}, Lcom/github/mikephil/charting/components/AxisBase;->setGranularityEnabled(Z)V

    .line 273
    invoke-virtual {p3, v3}, Lcom/github/mikephil/charting/components/AxisBase;->setCenterAxisLabels(Z)V

    .line 274
    invoke-virtual {p3, v3}, Lcom/github/mikephil/charting/components/XAxis;->setAvoidFirstLastClipping(Z)V

    .line 275
    new-instance v4, Lcom/qianhe/yct/fragment/SNRFragment$1;

    invoke-direct {v4, p0, v1}, Lcom/qianhe/yct/fragment/SNRFragment$1;-><init>(Lcom/qianhe/yct/fragment/SNRFragment;Ljava/util/ArrayList;)V

    invoke-virtual {p3, v4}, Lcom/github/mikephil/charting/components/AxisBase;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 292
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(I)V

    .line 293
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/qianhe/yct/R$color;->text_black:I

    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 294
    invoke-virtual {p3, v1}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    const/high16 v4, 0x41000000    # 8.0f

    .line 295
    invoke-virtual {p3, v4}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextSize(F)V

    .line 298
    invoke-virtual {p1, v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setDragEnabled(Z)V

    .line 299
    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setDragYEnabled(Z)V

    .line 300
    invoke-virtual {p1, v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setScaleEnabled(Z)V

    .line 303
    invoke-virtual {p1, v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setScaleXEnabled(Z)V

    .line 304
    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setScaleYEnabled(Z)V

    .line 308
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object p3

    check-cast p3, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {p3}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    move-result p3

    if-lez p3, :cond_5

    .line 309
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object p3

    check-cast p3, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {p3, v2}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object p3

    check-cast p3, Lcom/github/mikephil/charting/data/BarDataSet;

    .line 310
    invoke-virtual {p3, v0}, Lcom/github/mikephil/charting/data/DataSet;->setValues(Ljava/util/List;)V

    .line 311
    invoke-virtual {p3, v1}, Lcom/github/mikephil/charting/data/BaseDataSet;->setValueTextColor(I)V

    .line 312
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object p3

    check-cast p3, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {p3}, Lcom/github/mikephil/charting/data/ChartData;->notifyDataChanged()V

    .line 313
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->notifyDataSetChanged()V

    goto :goto_2

    .line 315
    :cond_5
    new-instance p3, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v4, "L1/L2/L5"

    invoke-direct {p3, v0, v4}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v4, Lcom/qianhe/yct/R$color;->red_dark:I

    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Lcom/qianhe/yct/R$color;->green:I

    invoke-static {v4, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    const v6, -0xffff01

    filled-new-array {v6, v0, v4, v2}, [I

    move-result-object v0

    .line 317
    invoke-virtual {p3, v0}, Lcom/github/mikephil/charting/data/BaseDataSet;->setColors([I)V

    .line 318
    invoke-virtual {p3, v3}, Lcom/github/mikephil/charting/data/BaseDataSet;->setDrawValues(Z)V

    const/high16 v0, 0x40c00000    # 6.0f

    .line 319
    invoke-virtual {p3, v0}, Lcom/github/mikephil/charting/data/BaseDataSet;->setValueTextSize(F)V

    .line 320
    invoke-virtual {p3, v1}, Lcom/github/mikephil/charting/data/BaseDataSet;->setValueTextColor(I)V

    .line 322
    new-instance v0, Lcom/qianhe/yct/fragment/SNRFragment$2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/SNRFragment$2;-><init>(Lcom/qianhe/yct/fragment/SNRFragment;)V

    invoke-virtual {p3, v0}, Lcom/github/mikephil/charting/data/BaseDataSet;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 329
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    new-instance p3, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {p3, v0}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;)V

    .line 331
    invoke-virtual {p1, p3}, Lcom/github/mikephil/charting/charts/Chart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 335
    :goto_2
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object p3

    check-cast p3, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {p3}, Lcom/github/mikephil/charting/data/ChartData;->getYMax()F

    move-result p3

    float-to-double v6, p3

    .line 336
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int p3, v6

    .line 337
    rem-int/lit8 v0, p3, 0xa

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    div-int/lit8 p3, p3, 0xa

    add-int/2addr p3, v3

    mul-int/lit8 p3, p3, 0xa

    .line 338
    :goto_3
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    int-to-float p3, p3

    invoke-virtual {v0, p3}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaximum(F)V

    .line 339
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaximum(F)V

    .line 341
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object p3

    .line 342
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/github/mikephil/charting/components/Description;->setText(Ljava/lang/String;)V

    const/high16 p2, 0x41400000    # 12.0f

    .line 343
    invoke-virtual {p3, p2}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextSize(F)V

    .line 344
    invoke-virtual {p3, v1}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 345
    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/github/mikephil/charting/components/ComponentBase;->setTypeface(Landroid/graphics/Typeface;)V

    .line 346
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez p2, :cond_7

    if-lez v0, :cond_7

    int-to-float p2, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    sub-float/2addr v0, v1

    .line 349
    invoke-virtual {p3, p2, v0}, Lcom/github/mikephil/charting/components/Description;->setPosition(FF)V

    .line 350
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    .line 352
    :cond_7
    new-instance p2, Lcom/qianhe/yct/fragment/SNRFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1, p3}, Lcom/qianhe/yct/fragment/SNRFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/view/CustomBarChart;Lcom/github/mikephil/charting/components/Description;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_8
    :goto_4
    return-void
.end method

.method private restoreRetainedSnr()V
    .locals 3

    .line 362
    invoke-static {}, Lcom/qianhe/yct/activity/LocateInfoActivity;->peekRetain()Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 363
    iget-object v1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->snrList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->snrList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 365
    iget-object v1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->snrList:Ljava/util/List;

    iget-object v2, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->snrList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 366
    iget-object v1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->savPRNList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 367
    iget-object v1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->savPRNList:Ljava/util/List;

    iget-object v2, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->savPRNList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 368
    iget-object v1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->sauPRNList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 369
    iget-object v1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->sauPRNList:Ljava/util/List;

    iget-object v0, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->sauPRNList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 370
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->savPRNSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 371
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->savPRNSet:Ljava/util/Set;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->savPRNList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 372
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->sauPRNSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 373
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->sauPRNSet:Ljava/util/Set;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->sauPRNList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    .line 374
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->init:Z

    .line 375
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->snrList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/SNRFragment;->refreshCharts(Ljava/util/List;)V

    .line 376
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->snrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 377
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->savPRNList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 378
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->sauPRNList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    :goto_0
    return-void
.end method

.method private tryDrawSnrCharts()V
    .locals 3

    .line 211
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->snrFrameReady:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->savFrameReady:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->sauFrameReady:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->snrReadyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->savPRNSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 214
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->savPRNSet:Ljava/util/Set;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->savReadyList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 215
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->sauPRNSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 216
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->sauPRNSet:Ljava/util/Set;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->sauReadyList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 217
    invoke-static {}, Lcom/qianhe/yct/activity/LocateInfoActivity;->retain()Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;

    move-result-object v0

    .line 218
    iget-object v1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->snrList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 219
    iget-object v1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->snrList:Ljava/util/List;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/SNRFragment;->snrReadyList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 220
    iget-object v1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->savPRNList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 221
    iget-object v1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->savPRNList:Ljava/util/List;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/SNRFragment;->savReadyList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 222
    iget-object v1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->sauPRNList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 223
    iget-object v0, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->sauPRNList:Ljava/util/List;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->sauReadyList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->snrReadyList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 225
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/SNRFragment;->refreshCharts(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->snrFrameReady:Z

    .line 227
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->savFrameReady:Z

    .line 228
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->sauFrameReady:Z

    .line 229
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->snrReadyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 230
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->savReadyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 231
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->sauReadyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    .line 55
    sget p1, Lcom/qianhe/yct/R$string;->searching:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/qianhe/yct/R$color;->text_black:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 57
    iget-object p3, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    iget-object p3, p3, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartBDS:Lcom/qianhe/yct/view/CustomBarChart;

    invoke-virtual {p3, p1}, Lcom/github/mikephil/charting/charts/Chart;->setNoDataText(Ljava/lang/String;)V

    .line 58
    iget-object p3, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    iget-object p3, p3, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartBDS:Lcom/qianhe/yct/view/CustomBarChart;

    invoke-virtual {p3, p2}, Lcom/github/mikephil/charting/charts/Chart;->setNoDataTextColor(I)V

    .line 59
    iget-object p3, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    iget-object p3, p3, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartGPS:Lcom/qianhe/yct/view/CustomBarChart;

    invoke-virtual {p3, p1}, Lcom/github/mikephil/charting/charts/Chart;->setNoDataText(Ljava/lang/String;)V

    .line 60
    iget-object p3, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    iget-object p3, p3, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartGPS:Lcom/qianhe/yct/view/CustomBarChart;

    invoke-virtual {p3, p2}, Lcom/github/mikephil/charting/charts/Chart;->setNoDataTextColor(I)V

    .line 61
    iget-object p3, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    iget-object p3, p3, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartGLN:Lcom/qianhe/yct/view/CustomBarChart;

    invoke-virtual {p3, p1}, Lcom/github/mikephil/charting/charts/Chart;->setNoDataText(Ljava/lang/String;)V

    .line 62
    iget-object p3, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    iget-object p3, p3, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartGLN:Lcom/qianhe/yct/view/CustomBarChart;

    invoke-virtual {p3, p2}, Lcom/github/mikephil/charting/charts/Chart;->setNoDataTextColor(I)V

    .line 63
    iget-object p3, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    iget-object p3, p3, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartGAL:Lcom/qianhe/yct/view/CustomBarChart;

    invoke-virtual {p3, p1}, Lcom/github/mikephil/charting/charts/Chart;->setNoDataText(Ljava/lang/String;)V

    .line 64
    iget-object p3, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    iget-object p3, p3, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartGAL:Lcom/qianhe/yct/view/CustomBarChart;

    invoke-virtual {p3, p2}, Lcom/github/mikephil/charting/charts/Chart;->setNoDataTextColor(I)V

    .line 65
    iget-object p3, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    iget-object p3, p3, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartQZSS:Lcom/qianhe/yct/view/CustomBarChart;

    invoke-virtual {p3, p1}, Lcom/github/mikephil/charting/charts/Chart;->setNoDataText(Ljava/lang/String;)V

    .line 66
    iget-object p3, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    iget-object p3, p3, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartQZSS:Lcom/qianhe/yct/view/CustomBarChart;

    invoke-virtual {p3, p2}, Lcom/github/mikephil/charting/charts/Chart;->setNoDataTextColor(I)V

    .line 67
    iget-object p3, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    iget-object p3, p3, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartSBAS:Lcom/qianhe/yct/view/CustomBarChart;

    invoke-virtual {p3, p1}, Lcom/github/mikephil/charting/charts/Chart;->setNoDataText(Ljava/lang/String;)V

    .line 68
    iget-object p3, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    iget-object p3, p3, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartSBAS:Lcom/qianhe/yct/view/CustomBarChart;

    invoke-virtual {p3, p2}, Lcom/github/mikephil/charting/charts/Chart;->setNoDataTextColor(I)V

    .line 69
    iget-object p3, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    iget-object p3, p3, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartIRNSS:Lcom/qianhe/yct/view/CustomBarChart;

    invoke-virtual {p3, p1}, Lcom/github/mikephil/charting/charts/Chart;->setNoDataText(Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartIRNSS:Lcom/qianhe/yct/view/CustomBarChart;

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/Chart;->setNoDataTextColor(I)V

    .line 71
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartBDS:Lcom/qianhe/yct/view/CustomBarChart;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/SNRFragment;->initChart(Lcom/qianhe/yct/view/CustomBarChart;)V

    .line 72
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartGPS:Lcom/qianhe/yct/view/CustomBarChart;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/SNRFragment;->initChart(Lcom/qianhe/yct/view/CustomBarChart;)V

    .line 73
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartGLN:Lcom/qianhe/yct/view/CustomBarChart;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/SNRFragment;->initChart(Lcom/qianhe/yct/view/CustomBarChart;)V

    .line 74
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartGAL:Lcom/qianhe/yct/view/CustomBarChart;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/SNRFragment;->initChart(Lcom/qianhe/yct/view/CustomBarChart;)V

    .line 75
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartQZSS:Lcom/qianhe/yct/view/CustomBarChart;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/SNRFragment;->initChart(Lcom/qianhe/yct/view/CustomBarChart;)V

    .line 76
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartSBAS:Lcom/qianhe/yct/view/CustomBarChart;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/SNRFragment;->initChart(Lcom/qianhe/yct/view/CustomBarChart;)V

    .line 77
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartIRNSS:Lcom/qianhe/yct/view/CustomBarChart;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/SNRFragment;->initChart(Lcom/qianhe/yct/view/CustomBarChart;)V

    .line 78
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->main:Landroidx/core/widget/NestedScrollView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 79
    invoke-static {}, Lcom/qianhe/yct/activity/LocateInfoActivity;->peekRetain()Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 80
    iget-boolean p1, p1, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->snrStreamInited:Z

    if-nez p1, :cond_1

    .line 81
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/activity/LocateInfoActivity;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2, p2}, Lcom/qianhe/yct/activity/LocateInfoActivity;->requestData(FFF)V

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    return-object p1
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/SNRPackageEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 148
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SNRPackageEvent;->lines:Ljava/lang/String;

    const-string v1, "SNR,"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SNRPackageEvent;->lines:Ljava/lang/String;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/SNRFragment;->parsePacketHeader(Ljava/lang/String;)[I

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 151
    aget v2, v0, v1

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/qianhe/yct/fragment/SNRFragment;->snrList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 152
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/fragment/SNRFragment;->snrList:Ljava/util/List;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SNRPackageEvent;->lines:Ljava/lang/String;

    invoke-static {p1}, Lcom/qianhe/baselib/utils/parser/SNRParser;->parser(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 153
    aget p1, v0, v1

    const/4 v2, 0x0

    aget v0, v0, v2

    if-ne p1, v0, :cond_3

    .line 154
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->snrReadyList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 155
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->snrReadyList:Ljava/util/List;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->snrList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->snrList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 157
    iput-boolean v1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->snrFrameReady:Z

    .line 158
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SNRFragment;->tryDrawSnrCharts()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/SauPackageEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 182
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SauPackageEvent;->lines:Ljava/lang/String;

    const-string v1, "SAU,"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SauPackageEvent;->lines:Ljava/lang/String;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/SNRFragment;->parsePacketHeader(Ljava/lang/String;)[I

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 185
    aget v2, v0, v1

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/qianhe/yct/fragment/SNRFragment;->sauPRNList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 186
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/fragment/SNRFragment;->sauPRNList:Ljava/util/List;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SauPackageEvent;->lines:Ljava/lang/String;

    invoke-static {p1}, Lcom/qianhe/baselib/utils/parser/StarDataParser;->parseSAU(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 187
    aget p1, v0, v1

    const/4 v2, 0x0

    aget v0, v0, v2

    if-ne p1, v0, :cond_3

    .line 188
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->sauReadyList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 189
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->sauReadyList:Ljava/util/List;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->sauPRNList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 190
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->sauPRNList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 191
    iput-boolean v1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->sauFrameReady:Z

    .line 192
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SNRFragment;->tryDrawSnrCharts()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/SavPackageEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 165
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SavPackageEvent;->lines:Ljava/lang/String;

    const-string v1, "SAV,"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SavPackageEvent;->lines:Ljava/lang/String;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/SNRFragment;->parsePacketHeader(Ljava/lang/String;)[I

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 168
    aget v2, v0, v1

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/qianhe/yct/fragment/SNRFragment;->savPRNList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 169
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/fragment/SNRFragment;->savPRNList:Ljava/util/List;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SavPackageEvent;->lines:Ljava/lang/String;

    invoke-static {p1}, Lcom/qianhe/baselib/utils/parser/StarDataParser;->parseSAV(Ljava/lang/String;)Lcom/qianhe/baselib/bean/SAVListEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/baselib/bean/SAVListEntity;->prnList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 170
    aget p1, v0, v1

    const/4 v2, 0x0

    aget v0, v0, v2

    if-ne p1, v0, :cond_3

    .line 171
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->savReadyList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 172
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->savReadyList:Ljava/util/List;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment;->savPRNList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 173
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->savPRNList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 174
    iput-boolean v1, p0, Lcom/qianhe/yct/fragment/SNRFragment;->savFrameReady:Z

    .line 175
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SNRFragment;->tryDrawSnrCharts()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 383
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 384
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 88
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 89
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 90
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SNRFragment;->restoreRetainedSnr()V

    return-void
.end method
