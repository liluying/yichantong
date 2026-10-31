.class public Lcom/qianhe/yct/fragment/DebugElevChartFragment;
.super Lcom/qianhe/yct/base/BaseFragment;
.source "DebugElevChartFragment.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

.field private diffValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private lastTime:J

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastTime(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->lastTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmINS(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlastTime(Lcom/qianhe/yct/fragment/DebugElevChartFragment;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->lastTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmINS(Lcom/qianhe/yct/fragment/DebugElevChartFragment;Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method static bridge synthetic -$$Nest$msetData(Lcom/qianhe/yct/fragment/DebugElevChartFragment;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->setData(F)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseFragment;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->values:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->diffValues:Ljava/util/ArrayList;

    return-void
.end method

.method private initLineChart()V
    .locals 6

    .line 124
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/Chart;->setDragDecelerationFrictionCoef(F)V

    .line 126
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setDrawGridBackground(Z)V

    .line 128
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setDragEnabled(Z)V

    .line 129
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setHighlightPerDragEnabled(Z)V

    .line 130
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setDoubleTapToZoomEnabled(Z)V

    .line 131
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setScaleEnabled(Z)V

    .line 132
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setPinchZoom(Z)V

    .line 133
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/Chart;->setTouchEnabled(Z)V

    .line 134
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$color;->bg_base:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 137
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    .line 138
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendForm;->LINE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/Legend;->setForm(Lcom/github/mikephil/charting/components/Legend$LegendForm;)V

    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$font;->msyh:I

    invoke-static {v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/ComponentBase;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v2, 0x41300000    # 11.0f

    .line 140
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextSize(F)V

    .line 141
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/qianhe/yct/R$color;->text_black:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 142
    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->BOTTOM:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/Legend;->setVerticalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;)V

    .line 143
    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->LEFT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/Legend;->setHorizontalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;)V

    .line 144
    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->HORIZONTAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/Legend;->setOrientation(Lcom/github/mikephil/charting/components/Legend$LegendOrientation;)V

    .line 145
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setDrawInside(Z)V

    .line 147
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/qianhe/yct/R$font;->msyh:I

    invoke-static {v3, v4}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/ComponentBase;->setTypeface(Landroid/graphics/Typeface;)V

    .line 149
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextSize(F)V

    .line 150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$color;->text_black:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 151
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawGridLines(Z)V

    .line 152
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawAxisLine(Z)V

    const/4 v2, 0x5

    .line 153
    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(IZ)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 154
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/AxisBase;->setGranularity(F)V

    .line 155
    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const/4 v3, 0x1

    .line 156
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/XAxis;->setAvoidFirstLastClipping(Z)V

    .line 158
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/qianhe/yct/R$font;->msyh:I

    invoke-static {v4, v5}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/ComponentBase;->setTypeface(Landroid/graphics/Typeface;)V

    .line 160
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawGridLines(Z)V

    .line 161
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setDrawZeroLine(Z)V

    .line 162
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setGranularityEnabled(Z)V

    .line 164
    invoke-virtual {v0, v2, v3}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(IZ)V

    .line 165
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawLabels(Z)V

    const v4, -0xffff01

    .line 166
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 167
    new-instance v4, Lcom/qianhe/yct/fragment/DebugElevChartFragment$5;

    invoke-direct {v4, p0}, Lcom/qianhe/yct/fragment/DebugElevChartFragment$5;-><init>(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)V

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/AxisBase;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 174
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/qianhe/yct/R$font;->msyh:I

    invoke-static {v4, v5}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/ComponentBase;->setTypeface(Landroid/graphics/Typeface;)V

    .line 176
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawGridLines(Z)V

    .line 177
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setDrawZeroLine(Z)V

    .line 178
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setGranularityEnabled(Z)V

    .line 180
    invoke-virtual {v0, v2, v3}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(IZ)V

    .line 181
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawLabels(Z)V

    .line 182
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$color;->red_dark:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 183
    new-instance v1, Lcom/qianhe/yct/fragment/DebugElevChartFragment$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DebugElevChartFragment$6;-><init>(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    return-void
.end method

.method private initLiveData()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 194
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 196
    :cond_0
    new-instance v2, Lcom/github/mikephil/charting/data/LineDataSet;

    iget-object v3, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->values:Ljava/util/ArrayList;

    sget v4, Lcom/qianhe/yct/R$string;->elev:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 197
    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BaseDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 198
    invoke-static {}, Lcom/github/mikephil/charting/utils/ColorTemplate;->getHoloBlue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BaseDataSet;->setColor(I)V

    const v3, -0xffff01

    .line 199
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColor(I)V

    .line 200
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BaseDataSet;->setValueTextColor(I)V

    const/high16 v3, 0x40400000    # 3.0f

    .line 201
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->setLineWidth(F)V

    .line 202
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleRadius(F)V

    .line 203
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircleHole(Z)V

    const/16 v3, 0x41

    .line 204
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->setFillAlpha(I)V

    .line 205
    invoke-static {}, Lcom/github/mikephil/charting/utils/ColorTemplate;->getHoloBlue()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->setFillColor(I)V

    const/16 v4, 0xf4

    const/16 v5, 0x75

    .line 206
    invoke-static {v4, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->setHighLightColor(I)V

    .line 207
    sget-object v4, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->CUBIC_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    const v5, 0x3e4ccccd    # 0.2f

    .line 208
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setCubicIntensity(F)V

    .line 210
    new-instance v5, Lcom/github/mikephil/charting/data/LineDataSet;

    iget-object v6, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->diffValues:Ljava/util/ArrayList;

    sget v7, Lcom/qianhe/yct/R$string;->difference:I

    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 211
    sget-object v6, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v5, v6}, Lcom/github/mikephil/charting/data/BaseDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 212
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/qianhe/yct/R$color;->red_dark:I

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/github/mikephil/charting/data/BaseDataSet;->setColor(I)V

    .line 213
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/qianhe/yct/R$color;->red_dark:I

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColor(I)V

    .line 214
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/qianhe/yct/R$color;->red_dark:I

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/github/mikephil/charting/data/BaseDataSet;->setValueTextColor(I)V

    const/high16 v6, 0x40000000    # 2.0f

    .line 215
    invoke-virtual {v5, v6}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->setLineWidth(F)V

    .line 216
    invoke-virtual {v5, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleRadius(F)V

    .line 217
    invoke-virtual {v5, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 218
    invoke-virtual {v5, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircleHole(Z)V

    .line 219
    invoke-virtual {v5, v3}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->setFillAlpha(I)V

    .line 220
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    sget v6, Lcom/qianhe/yct/R$color;->red_dark:I

    invoke-static {v3, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->setFillColor(I)V

    .line 221
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    sget v6, Lcom/qianhe/yct/R$color;->red_light:I

    invoke-static {v3, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->setHighLightColor(I)V

    .line 222
    invoke-virtual {v5, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 224
    new-instance v3, Lcom/github/mikephil/charting/data/LineData;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    aput-object v2, v4, v1

    aput-object v5, v4, v0

    invoke-direct {v3, v4}, Lcom/github/mikephil/charting/data/LineData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    const/high16 v0, 0x41300000    # 11.0f

    .line 225
    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/data/ChartData;->setValueTextSize(F)V

    .line 227
    new-instance v0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$7;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/DebugElevChartFragment$7;-><init>(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)V

    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/data/ChartData;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 234
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/Chart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 235
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/debug/DebugActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/debug/DebugActivity;->observeInsNavi()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/DebugElevChartFragment$8;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/DebugElevChartFragment$8;-><init>(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->tvElev:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 85
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->tvDiff:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 86
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->tvElev:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/DebugElevChartFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DebugElevChartFragment$1;-><init>(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->tvDiff:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/DebugElevChartFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DebugElevChartFragment$2;-><init>(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->tvSure:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/DebugElevChartFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DebugElevChartFragment$3;-><init>(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->tvCurrent:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/fragment/DebugElevChartFragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DebugElevChartFragment$4;-><init>(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->initLineChart()V

    return-void
.end method

.method private setData(F)V
    .locals 12

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 263
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 265
    :goto_0
    iget-object v3, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->values:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 266
    iget-object v3, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->values:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/Entry;->setX(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->diffValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v1, :cond_2

    .line 270
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->diffValues:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 272
    :goto_1
    iget-object v3, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->diffValues:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 273
    iget-object v3, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->diffValues:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/Entry;->setX(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->values:Ljava/util/ArrayList;

    new-instance v3, Lcom/github/mikephil/charting/data/Entry;

    iget-object v4, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->values:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v3, v4, p1}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->tvSure:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->diffValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_7

    .line 278
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->edtBaseElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v6

    cmpl-double v0, v6, v3

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->diffValues:Ljava/util/ArrayList;

    new-instance v6, Lcom/github/mikephil/charting/data/Entry;

    iget-object v7, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->diffValues:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    int-to-float v7, v7

    float-to-double v8, p1

    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->edtBaseElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v10

    sub-double/2addr v8, v10

    double-to-float p1, v8

    invoke-direct {v6, v7, p1}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {p1, v5}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->edtBaseElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v6

    cmpl-double v0, v6, v3

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p1, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->setVisible(Z)V

    .line 280
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isVisible()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawLabels(Z)V

    .line 281
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->tvSure:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->edtBaseElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v6

    cmpl-double p1, v6, v3

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 284
    :cond_7
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    move-result p1

    if-le p1, v5, :cond_9

    .line 285
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 286
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->values:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/data/DataSet;->setValues(Ljava/util/List;)V

    .line 287
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {p1, v5}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 288
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->diffValues:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/data/DataSet;->setValues(Ljava/util/List;)V

    .line 289
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/ChartData;->notifyDataChanged()V

    .line 290
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->notifyDataSetChanged()V

    .line 292
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->edtBaseElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v6

    const/high16 p1, 0x40800000    # 4.0f

    cmpl-double v0, v6, v3

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v1, :cond_8

    .line 293
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setVisibleXRangeMaximum(F)V

    .line 294
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->values:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->moveViewToX(F)V

    .line 296
    :cond_8
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->edtBaseElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v6

    cmpl-double v0, v6, v3

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->diffValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v1, :cond_9

    .line 297
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setVisibleXRangeMaximum(F)V

    .line 298
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->diffValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->moveViewToX(F)V

    :cond_9
    :goto_4
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    .line 44
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->initView()V

    .line 45
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->initLiveData()V

    if-eqz p3, :cond_0

    .line 47
    const-string p1, "edtBaseElev"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide p1

    .line 48
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->edtBaseElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const-string/jumbo p1, "values"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->values:Ljava/util/ArrayList;

    .line 50
    const-string p1, "diffValues"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->diffValues:Ljava/util/ArrayList;

    .line 51
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->tvSure:Landroid/widget/TextView;

    const-string/jumbo p2, "tvSure"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 52
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->tvElev:Landroid/widget/TextView;

    const-string/jumbo p2, "tvElevVisible"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 53
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/LineData;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    iget-object p2, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->tvElev:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->setVisible(Z)V

    .line 54
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->tvDiff:Landroid/widget/TextView;

    const-string/jumbo p2, "tvDiffVisible"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 55
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/LineData;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    iget-object p2, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->setVisible(Z)V

    .line 57
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p1

    .line 58
    const-string p2, "leftMin"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    .line 59
    const-string p2, "leftMax"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaximum(F)V

    .line 60
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p1

    .line 61
    const-string p2, "rightMin"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    .line 62
    const-string p2, "rightMax"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaximum(F)V

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 69
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 71
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->edtBaseElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    const-string v2, "edtBaseElev"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 72
    const-string/jumbo v0, "values"

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->values:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 73
    const-string v0, "diffValues"

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->diffValues:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 74
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->tvSure:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string/jumbo v1, "tvSure"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->tvElev:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string/jumbo v1, "tvElevVisible"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string/jumbo v1, "tvDiffVisible"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/AxisBase;->getAxisMinimum()F

    move-result v0

    const-string v1, "leftMin"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 78
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/AxisBase;->getAxisMaximum()F

    move-result v0

    const-string v1, "leftMax"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 79
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/AxisBase;->getAxisMinimum()F

    move-result v0

    const-string v1, "rightMin"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 80
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/AxisBase;->getAxisMaximum()F

    move-result v0

    const-string v1, "rightMax"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method
