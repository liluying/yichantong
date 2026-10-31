.class Lcom/qianhe/yct/fragment/DebugElevChartFragment$4;
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

    .line 114
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$4;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 117
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$4;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->edtBaseElev:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$4;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->-$$Nest$fgetmINS(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugElevChartFragment$4;->this$0:Lcom/qianhe/yct/fragment/DebugElevChartFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugElevChartFragment;->-$$Nest$fgetmINS(Lcom/qianhe/yct/fragment/DebugElevChartFragment;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
