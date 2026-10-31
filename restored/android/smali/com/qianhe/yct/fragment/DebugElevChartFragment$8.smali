.class Lcom/qianhe/yct/fragment/DebugElevChartFragment$8;
.super Ljava/lang/Object;
.source "DebugElevChartFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/DebugElevChartFragment;->initLiveData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$8;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 238
    :goto_0
    iget-object v2, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$8;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    xor-int/2addr v0, v2

    or-int/2addr v0, v1

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$8;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-static {v0, p1}, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->-$$Nest$fputmINS(Lcom/qianhe/yct/fragment/DebugElevChartFragment;Lcom/qianhe/baselib/bean/InsNavi;)V

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$8;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->-$$Nest$fgetlastTime(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_6

    .line 241
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$8;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$8;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    .line 243
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/AxisBase;->getAxisMinimum()F

    move-result v4

    float-to-double v4, v4

    cmpg-double v6, v2, v4

    if-ltz v6, :cond_2

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/AxisBase;->getAxisMaximum()F

    move-result v4

    float-to-double v4, v4

    cmpl-double v6, v2, v4

    if-lez v6, :cond_3

    .line 244
    :cond_2
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    .line 245
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaximum(F)V

    .line 247
    :cond_3
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    iget-object v4, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$8;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-static {v4}, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->edtBaseElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v4}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/AxisBase;->getAxisMinimum()F

    move-result v4

    float-to-double v4, v4

    cmpg-double v6, v2, v4

    if-ltz v6, :cond_4

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    iget-object v4, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$8;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-static {v4}, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->edtBaseElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v4}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/AxisBase;->getAxisMaximum()F

    move-result v0

    float-to-double v4, v0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_5

    .line 248
    :cond_4
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$8;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->edtBaseElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v4

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    sub-double/2addr v2, v4

    double-to-float v0, v2

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    .line 249
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$8;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->edtBaseElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v4

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    add-double/2addr v2, v4

    double-to-float v0, v2

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaximum(F)V

    .line 251
    :cond_5
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$8;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    double-to-float p1, v1

    invoke-static {v0, p1}, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->-$$Nest$msetData(Lcom/qianhe/yct/fragment/DebugElevChartFragment;F)V

    .line 252
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$8;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 253
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$8;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->-$$Nest$fputlastTime(Lcom/qianhe/yct/fragment/DebugElevChartFragment;J)V

    :cond_6
    :goto_1
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 235
    check-cast p1, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/fragment/DebugElevChartFragment$8;->onChanged(Lcom/qianhe/baselib/bean/InsNavi;)V

    return-void
.end method
