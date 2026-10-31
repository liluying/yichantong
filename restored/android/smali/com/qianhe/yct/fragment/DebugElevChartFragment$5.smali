.class Lcom/qianhe/yct/fragment/DebugElevChartFragment$5;
.super Lcom/github/mikephil/charting/formatter/ValueFormatter;
.source "DebugElevChartFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/DebugElevChartFragment;->initLineChart()V
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

    .line 167
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$5;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-direct {p0}, Lcom/github/mikephil/charting/formatter/ValueFormatter;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormattedValue(F)Ljava/lang/String;
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$5;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$5;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->formatDouble(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
