.class Lcom/qianhe/yct/fragment/DebugElevChartFragment$1;
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

    .line 86
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$1;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 89
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$1;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->tvElev:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$1;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->tvElev:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 90
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$1;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/LineData;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$1;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->tvElev:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->setVisible(Z)V

    return-void
.end method
