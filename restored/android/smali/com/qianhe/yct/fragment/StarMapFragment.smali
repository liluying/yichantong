.class public Lcom/qianhe/yct/fragment/StarMapFragment;
.super Lcom/qianhe/yct/base/BaseFragment;
.source "StarMapFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private appConfig:Lcom/qianhe/yct/bean/AppConfig;

.field private binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

.field private init:Z

.field private final mHideList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private final savList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/SAVEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final savPRNList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final savReadyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/SAVEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final savReadyPRN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private starMapRadarRenderer:Lcom/qianhe/yct/view/StarMapRadarRenderer;


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/StarMapFragment;)Lcom/qianhe/yct/databinding/FragmentStarmapBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseFragment;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->mHideList:Ljava/util/List;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savList:Ljava/util/List;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->sauPRNList:Ljava/util/List;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savPRNList:Ljava/util/List;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savReadyList:Ljava/util/List;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savReadyPRN:Ljava/util/List;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->sauReadyList:Ljava/util/List;

    return-void
.end method

.method private getStarType(I)I
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    .line 285
    sget-object p1, Lcom/qianhe/baselib/enums/StarTypeEnum;->GPS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {p1}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result p1

    return p1

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v0, 0x60

    if-gt p1, v0, :cond_1

    .line 287
    sget-object p1, Lcom/qianhe/baselib/enums/StarTypeEnum;->GLN:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {p1}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result p1

    return p1

    :cond_1
    const/16 v0, 0x78

    if-lt p1, v0, :cond_2

    const/16 v0, 0xa0

    if-gt p1, v0, :cond_2

    .line 289
    sget-object p1, Lcom/qianhe/baselib/enums/StarTypeEnum;->SBAS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {p1}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result p1

    return p1

    :cond_2
    const/16 v0, 0xa1

    if-lt p1, v0, :cond_3

    const/16 v0, 0xe0

    if-gt p1, v0, :cond_3

    .line 291
    sget-object p1, Lcom/qianhe/baselib/enums/StarTypeEnum;->BDS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {p1}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result p1

    return p1

    :cond_3
    const/16 v0, 0x106

    if-lt p1, v0, :cond_4

    const/16 v0, 0x12b

    if-gt p1, v0, :cond_4

    .line 293
    sget-object p1, Lcom/qianhe/baselib/enums/StarTypeEnum;->GAL:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {p1}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result p1

    return p1

    :cond_4
    const/16 v0, 0x14b

    if-lt p1, v0, :cond_5

    const/16 v0, 0x168

    if-gt p1, v0, :cond_5

    .line 295
    sget-object p1, Lcom/qianhe/baselib/enums/StarTypeEnum;->QZSS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {p1}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result p1

    return p1

    :cond_5
    const/16 v0, 0x169

    if-lt p1, v0, :cond_6

    const/16 v0, 0x18f

    if-gt p1, v0, :cond_6

    .line 297
    sget-object p1, Lcom/qianhe/baselib/enums/StarTypeEnum;->IRNSS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {p1}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result p1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method private initView()V
    .locals 7

    .line 70
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->lltBDS:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->ivBDS:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 72
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->lltGPS:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->ivGPS:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 74
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->lltGLN:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->ivGLN:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 76
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->lltGAL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->ivGAL:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 78
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->lltQZSS:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->ivQZSS:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 80
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->lltSBAS:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->ivSBAS:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 82
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->lltIRNSS:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->ivIRNSS:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 85
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->radarChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$color;->bg_base:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 87
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->radarChart:Lcom/github/mikephil/charting/charts/RadarChart;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/RadarChart;->setWebLineWidth(F)V

    .line 88
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->radarChart:Lcom/github/mikephil/charting/charts/RadarChart;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/RadarChart;->setWebColor(I)V

    .line 90
    new-instance v0, Lcom/qianhe/yct/view/StarMapRadarRenderer;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v5}, Lcom/qianhe/yct/base/BaseActivity;->isPad()Z

    move-result v5

    iget-object v6, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->radarChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-direct {v0, v4, v5, v6}, Lcom/qianhe/yct/view/StarMapRadarRenderer;-><init>(Landroid/content/Context;ZLcom/github/mikephil/charting/charts/RadarChart;)V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->starMapRadarRenderer:Lcom/qianhe/yct/view/StarMapRadarRenderer;

    .line 91
    iget-object v4, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->radarChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v4, v0}, Lcom/github/mikephil/charting/charts/Chart;->setRenderer(Lcom/github/mikephil/charting/renderer/DataRenderer;)V

    .line 94
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->radarChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->setMinOffset(F)V

    .line 95
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->radarChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/Chart;->setExtraTopOffset(F)V

    .line 96
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->radarChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/Chart;->setExtraBottomOffset(F)V

    .line 98
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->radarChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 100
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawLabels(Z)V

    .line 101
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->radarChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getYAxis()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 103
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawLabels(Z)V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    new-instance v2, Lcom/github/mikephil/charting/data/RadarEntry;

    const/high16 v4, 0x42a00000    # 80.0f

    invoke-direct {v2, v4}, Lcom/github/mikephil/charting/data/RadarEntry;-><init>(F)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v2, Lcom/github/mikephil/charting/data/RadarEntry;

    const/high16 v5, 0x42700000    # 60.0f

    invoke-direct {v2, v5}, Lcom/github/mikephil/charting/data/RadarEntry;-><init>(F)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v2, Lcom/github/mikephil/charting/data/RadarDataSet;

    const-string/jumbo v6, "\u536b\u661f"

    invoke-direct {v2, v0, v6}, Lcom/github/mikephil/charting/data/RadarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/high16 v6, -0x10000

    .line 111
    invoke-virtual {v2, v6}, Lcom/github/mikephil/charting/data/BaseDataSet;->setColor(I)V

    .line 112
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BaseDataSet;->setVisible(Z)V

    .line 113
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BaseDataSet;->setDrawValues(Z)V

    .line 114
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->setDrawFilled(Z)V

    .line 115
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/RadarDataSet;->setDrawHighlightCircleEnabled(Z)V

    const/16 v6, -0x100

    .line 116
    invoke-virtual {v2, v6}, Lcom/github/mikephil/charting/data/RadarDataSet;->setHighlightCircleFillColor(I)V

    const/high16 v6, 0x41200000    # 10.0f

    .line 117
    invoke-virtual {v2, v6}, Lcom/github/mikephil/charting/data/RadarDataSet;->setHighlightCircleOuterRadius(F)V

    .line 120
    iget-object v6, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->radarChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/Chart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 122
    iget-object v6, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->radarChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/Chart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 124
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/RadarEntry;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/github/mikephil/charting/data/BaseEntry;->setData(Ljava/lang/Object;)V

    .line 125
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/RadarEntry;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/data/BaseEntry;->setData(Ljava/lang/Object;)V

    .line 128
    new-instance v0, Lcom/github/mikephil/charting/data/RadarData;

    new-array v1, v1, [Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/data/RadarData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;)V

    .line 129
    iget-object v1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->radarChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/Chart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 130
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->radarChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 132
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->radarChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/Chart;->setTouchEnabled(Z)V

    .line 135
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->radarChart:Lcom/github/mikephil/charting/charts/RadarChart;

    new-instance v1, Lcom/qianhe/yct/fragment/StarMapFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/StarMapFragment$1;-><init>(Lcom/qianhe/yct/fragment/StarMapFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static parsePacketHeader(Ljava/lang/String;)[I
    .locals 3

    .line 207
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 208
    array-length v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x1

    .line 210
    :try_start_0
    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    .line 211
    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lez v0, :cond_2

    if-gtz p0, :cond_1

    goto :goto_0

    .line 213
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

.method private refreshNums(Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 252
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 253
    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 254
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/qianhe/yct/fragment/StarMapFragment;->getStarType(I)I

    move-result v10

    sget-object v11, Lcom/qianhe/baselib/enums/StarTypeEnum;->BDS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {v11}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result v11

    if-ne v10, v11, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/qianhe/yct/fragment/StarMapFragment;->getStarType(I)I

    move-result v10

    sget-object v11, Lcom/qianhe/baselib/enums/StarTypeEnum;->GPS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {v11}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result v11

    if-ne v10, v11, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    :cond_2
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/qianhe/yct/fragment/StarMapFragment;->getStarType(I)I

    move-result v10

    sget-object v11, Lcom/qianhe/baselib/enums/StarTypeEnum;->GLN:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {v11}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result v11

    if-ne v10, v11, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 260
    :cond_3
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/qianhe/yct/fragment/StarMapFragment;->getStarType(I)I

    move-result v10

    sget-object v11, Lcom/qianhe/baselib/enums/StarTypeEnum;->GAL:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {v11}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result v11

    if-ne v10, v11, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 262
    :cond_4
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/qianhe/yct/fragment/StarMapFragment;->getStarType(I)I

    move-result v10

    sget-object v11, Lcom/qianhe/baselib/enums/StarTypeEnum;->QZSS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {v11}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result v11

    if-ne v10, v11, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 264
    :cond_5
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/qianhe/yct/fragment/StarMapFragment;->getStarType(I)I

    move-result v10

    sget-object v11, Lcom/qianhe/baselib/enums/StarTypeEnum;->SBAS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {v11}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result v11

    if-ne v10, v11, :cond_6

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 266
    :cond_6
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/qianhe/yct/fragment/StarMapFragment;->getStarType(I)I

    move-result v9

    sget-object v10, Lcom/qianhe/baselib/enums/StarTypeEnum;->IRNSS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {v10}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result v10

    if-ne v9, v10, :cond_0

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 271
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 272
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 273
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->tvBDS:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->tvGPS:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->tvGLN:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->tvGAL:Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->tvQZSS:Landroid/widget/TextView;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->tvSBAS:Landroid/widget/TextView;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->tvIRNSS:Landroid/widget/TextView;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private restoreRetainedStarMap()V
    .locals 3

    .line 303
    invoke-static {}, Lcom/qianhe/yct/activity/LocateInfoActivity;->peekRetain()Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 304
    iget-object v1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->starMapRadarRenderer:Lcom/qianhe/yct/view/StarMapRadarRenderer;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 305
    :cond_0
    iget-object v1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->savEntities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->starSauPRN:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 306
    iput-boolean v1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->init:Z

    .line 307
    iget-object v1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->savEntities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 308
    iget-object v1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 309
    iget-object v1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savList:Ljava/util/List;

    iget-object v2, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->savEntities:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 310
    iget-object v1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->tvVisNum:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->starMapRadarRenderer:Lcom/qianhe/yct/view/StarMapRadarRenderer;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/view/StarMapRadarRenderer;->refreshSAV(Ljava/util/List;)V

    .line 312
    iget-object v1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 314
    :cond_2
    iget-object v1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->starSauPRN:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 315
    iget-object v1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->sauPRNList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 316
    iget-object v1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->sauPRNList:Ljava/util/List;

    iget-object v2, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->starSauPRN:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 317
    iget-object v1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->tvUseNum:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->sauPRNList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->starMapRadarRenderer:Lcom/qianhe/yct/view/StarMapRadarRenderer;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->sauPRNList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/view/StarMapRadarRenderer;->refreshSAU(Ljava/util/List;)V

    .line 320
    :cond_3
    iget-object v1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->starSavPRN:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 321
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->starSavPRN:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->starSauPRN:Ljava/util/List;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/fragment/StarMapFragment;->refreshNums(Ljava/util/List;Ljava/util/List;)V

    .line 323
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->radarChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_5
    :goto_0
    return-void
.end method

.method private tryDrawStarMap()V
    .locals 4

    .line 220
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savFrameReady:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->sauFrameReady:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->starMapRadarRenderer:Lcom/qianhe/yct/view/StarMapRadarRenderer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savReadyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 222
    :cond_1
    invoke-static {}, Lcom/qianhe/yct/activity/LocateInfoActivity;->retain()Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;

    move-result-object v0

    .line 223
    iget-object v1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->savEntities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 224
    iget-object v1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->savEntities:Ljava/util/List;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savReadyList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 225
    iget-object v1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->starSavPRN:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 226
    iget-object v1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->starSavPRN:Ljava/util/List;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savReadyPRN:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 227
    iget-object v1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->starSauPRN:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 228
    iget-object v1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->starSauPRN:Ljava/util/List;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->sauReadyList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 229
    iget-object v1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->tvVisNum:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savReadyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->starMapRadarRenderer:Lcom/qianhe/yct/view/StarMapRadarRenderer;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savReadyList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/view/StarMapRadarRenderer;->refreshSAV(Ljava/util/List;)V

    .line 231
    iget-object v1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->tvUseNum:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->sauReadyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->starMapRadarRenderer:Lcom/qianhe/yct/view/StarMapRadarRenderer;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->sauReadyList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/view/StarMapRadarRenderer;->refreshSAU(Ljava/util/List;)V

    .line 233
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savReadyPRN:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->sauReadyList:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/fragment/StarMapFragment;->refreshNums(Ljava/util/List;Ljava/util/List;)V

    .line 234
    iget-object v1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->radarChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 235
    iget-boolean v1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->init:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 236
    iput-boolean v1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->init:Z

    .line 237
    iput-boolean v1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->starMapInited:Z

    .line 238
    iput-boolean v1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->snrStreamInited:Z

    .line 239
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/LocateInfoActivity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->snr_interval:F

    iget v3, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->sav_interval:F

    iget v1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->sau_interval:F

    invoke-virtual {v0, v2, v3, v1}, Lcom/qianhe/yct/activity/LocateInfoActivity;->requestData(FFF)V

    :cond_2
    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savFrameReady:Z

    .line 242
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->sauFrameReady:Z

    .line 243
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savReadyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 244
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savReadyPRN:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 245
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->sauReadyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/qianhe/yct/R$id;->lltBDS:I

    if-ne v0, v1, :cond_1

    .line 329
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->ivBDS:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 330
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->ivBDS:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 331
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->mHideList:Ljava/util/List;

    sget-object v0, Lcom/qianhe/baselib/enums/StarTypeEnum;->BDS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 333
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->mHideList:Ljava/util/List;

    sget-object v0, Lcom/qianhe/baselib/enums/StarTypeEnum;->BDS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 335
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/qianhe/yct/R$id;->lltGPS:I

    if-ne v0, v1, :cond_3

    .line 336
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->ivGPS:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 337
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->ivGPS:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 338
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->mHideList:Ljava/util/List;

    sget-object v0, Lcom/qianhe/baselib/enums/StarTypeEnum;->GPS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 340
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->mHideList:Ljava/util/List;

    sget-object v0, Lcom/qianhe/baselib/enums/StarTypeEnum;->GPS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 342
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/qianhe/yct/R$id;->lltGLN:I

    if-ne v0, v1, :cond_5

    .line 343
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->ivGLN:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 344
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->ivGLN:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 345
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->mHideList:Ljava/util/List;

    sget-object v0, Lcom/qianhe/baselib/enums/StarTypeEnum;->GLN:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 347
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->mHideList:Ljava/util/List;

    sget-object v0, Lcom/qianhe/baselib/enums/StarTypeEnum;->GLN:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 349
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/qianhe/yct/R$id;->lltGAL:I

    if-ne v0, v1, :cond_7

    .line 350
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->ivGAL:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 351
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->ivGAL:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 352
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->mHideList:Ljava/util/List;

    sget-object v0, Lcom/qianhe/baselib/enums/StarTypeEnum;->GAL:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 354
    :cond_6
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->mHideList:Ljava/util/List;

    sget-object v0, Lcom/qianhe/baselib/enums/StarTypeEnum;->GAL:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 356
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/qianhe/yct/R$id;->lltQZSS:I

    if-ne v0, v1, :cond_9

    .line 357
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->ivQZSS:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 358
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->ivQZSS:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 359
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->mHideList:Ljava/util/List;

    sget-object v0, Lcom/qianhe/baselib/enums/StarTypeEnum;->QZSS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 361
    :cond_8
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->mHideList:Ljava/util/List;

    sget-object v0, Lcom/qianhe/baselib/enums/StarTypeEnum;->QZSS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 363
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/qianhe/yct/R$id;->lltSBAS:I

    if-ne v0, v1, :cond_b

    .line 364
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->ivSBAS:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 365
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->ivSBAS:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 366
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->mHideList:Ljava/util/List;

    sget-object v0, Lcom/qianhe/baselib/enums/StarTypeEnum;->SBAS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 368
    :cond_a
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->mHideList:Ljava/util/List;

    sget-object v0, Lcom/qianhe/baselib/enums/StarTypeEnum;->SBAS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 370
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/qianhe/yct/R$id;->lltIRNSS:I

    if-ne p1, v0, :cond_d

    .line 371
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->ivIRNSS:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 372
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->ivIRNSS:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 373
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->mHideList:Ljava/util/List;

    sget-object v0, Lcom/qianhe/baselib/enums/StarTypeEnum;->IRNSS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 375
    :cond_c
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->mHideList:Ljava/util/List;

    sget-object v0, Lcom/qianhe/baselib/enums/StarTypeEnum;->IRNSS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_d
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->starMapRadarRenderer:Lcom/qianhe/yct/view/StarMapRadarRenderer;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->mHideList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/StarMapRadarRenderer;->refreshShowType(Ljava/util/List;)V

    .line 381
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->radarChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    .line 54
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/StarMapFragment;->initView()V

    .line 55
    invoke-static {}, Lcom/qianhe/yct/activity/LocateInfoActivity;->peekRetain()Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 56
    iget-boolean p1, p1, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->snrStreamInited:Z

    if-nez p1, :cond_1

    .line 57
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/activity/LocateInfoActivity;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2, p2}, Lcom/qianhe/yct/activity/LocateInfoActivity;->requestData(FFF)V

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->binding:Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    return-object p1
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/SauPackageEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 191
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SauPackageEvent;->lines:Ljava/lang/String;

    const-string v1, "SAU,"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SauPackageEvent;->lines:Ljava/lang/String;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/StarMapFragment;->parsePacketHeader(Ljava/lang/String;)[I

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 194
    aget v2, v0, v1

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->sauPRNList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 195
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->sauPRNList:Ljava/util/List;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SauPackageEvent;->lines:Ljava/lang/String;

    invoke-static {p1}, Lcom/qianhe/baselib/utils/parser/StarDataParser;->parseSAU(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 196
    aget p1, v0, v1

    const/4 v2, 0x0

    aget v0, v0, v2

    if-ne p1, v0, :cond_3

    .line 197
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->sauReadyList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 198
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->sauReadyList:Ljava/util/List;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->sauPRNList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 199
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->sauPRNList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 200
    iput-boolean v1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->sauFrameReady:Z

    .line 201
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/StarMapFragment;->tryDrawStarMap()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/SavPackageEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 166
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SavPackageEvent;->lines:Ljava/lang/String;

    const-string v1, "SAV,"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SavPackageEvent;->lines:Ljava/lang/String;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/StarMapFragment;->parsePacketHeader(Ljava/lang/String;)[I

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 169
    aget v2, v0, v1

    if-ne v2, v1, :cond_2

    .line 170
    iget-object v2, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 171
    iget-object v2, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savPRNList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 173
    :cond_2
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SavPackageEvent;->lines:Ljava/lang/String;

    invoke-static {p1}, Lcom/qianhe/baselib/utils/parser/StarDataParser;->parseSAV(Ljava/lang/String;)Lcom/qianhe/baselib/bean/SAVListEntity;

    move-result-object p1

    .line 174
    iget-object v2, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savList:Ljava/util/List;

    iget-object v3, p1, Lcom/qianhe/baselib/bean/SAVListEntity;->entityList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    iget-object v2, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savPRNList:Ljava/util/List;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/SAVListEntity;->prnList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 176
    aget p1, v0, v1

    const/4 v2, 0x0

    aget v0, v0, v2

    if-ne p1, v0, :cond_3

    .line 177
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savReadyList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 178
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savReadyList:Ljava/util/List;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 179
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savReadyPRN:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 180
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savReadyPRN:Ljava/util/List;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savPRNList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 182
    iget-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savPRNList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 183
    iput-boolean v1, p0, Lcom/qianhe/yct/fragment/StarMapFragment;->savFrameReady:Z

    .line 184
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/StarMapFragment;->tryDrawStarMap()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 386
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 387
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 64
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 65
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 66
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/StarMapFragment;->restoreRetainedStarMap()V

    return-void
.end method
