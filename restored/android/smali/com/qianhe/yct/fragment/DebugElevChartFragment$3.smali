.class Lcom/qianhe/yct/fragment/DebugElevChartFragment$3;
.super Ljava/lang/Object;
.source "DebugElevChartFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/DebugElevChartFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$3;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 104
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$3;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->edtBaseElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$3;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->tvSure:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 106
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$3;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 107
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$3;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/LineData;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->clear()V

    .line 108
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$3;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->clear()V

    .line 109
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$3;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/ChartData;->notifyDataChanged()V

    .line 110
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$3;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->setup_success:I

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
