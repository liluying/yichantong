.class Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$6;
.super Ljava/lang/Object;
.source "ShuaPoStep2Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 198
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->ivSelB:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->ivSelB:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 199
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->ivSelB:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 201
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object p1

    iput v1, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->tickB:I

    .line 202
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object p1

    iput v0, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->tickA:I

    .line 203
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object p1

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevationBenchmark:D

    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object p1

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation1:D

    cmpl-double p1, v0, v4

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object p1

    iput-wide v2, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevationBenchmark:D

    return-void

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object p1

    iput v0, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->tickB:I

    .line 206
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object p1

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevationBenchmark:D

    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object p1

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation2:D

    cmpl-double p1, v0, v4

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object p1

    iput-wide v2, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevationBenchmark:D

    :cond_1
    return-void
.end method
