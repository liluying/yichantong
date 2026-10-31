.class Lcom/qianhe/yct/fragment/WaGouStep1Fragment$7;
.super Ljava/lang/Object;
.source "WaGouStep1Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/WaGouStep1Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/WaGouStep1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 210
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/WaGouStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->ivSelA:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/WaGouStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->ivSelA:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 211
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/WaGouStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->lltValue:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/WaGouStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->ivSelA:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/WaGouStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->ivSelA:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 213
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/WaGouStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iput v1, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->tickA:I

    .line 214
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/WaGouStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->-$$Nest$mclearDepthAForBenchmark(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)V

    .line 215
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/WaGouStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v0, Lcom/qianhe/baselib/enums/WaGouEnum;->FLAT:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 216
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/WaGouStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 217
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/WaGouStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iput v2, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    .line 218
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/WaGouStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    :cond_1
    return-void

    .line 221
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/WaGouStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iput v2, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->tickA:I

    .line 222
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/WaGouStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->-$$Nest$mclearDepthAForBenchmark(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)V

    return-void
.end method
