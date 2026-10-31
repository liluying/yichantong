.class Lcom/qianhe/yct/fragment/WaGouStep3Fragment$8;
.super Ljava/lang/Object;
.source "WaGouStep3Fragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$8;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .line 224
    sget p1, Lcom/qianhe/yct/R$id;->rbSlope:I

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-ne p2, p1, :cond_0

    .line 225
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$8;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->lltAdvancedSlope:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$8;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->lltAdvancedBottomWidth:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$8;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iput v1, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->advancedType:I

    return-void

    .line 228
    :cond_0
    sget p1, Lcom/qianhe/yct/R$id;->rbBottomWidth:I

    if-ne p2, p1, :cond_1

    .line 229
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$8;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->lltAdvancedSlope:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$8;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->lltAdvancedBottomWidth:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$8;->this$0:Lcom/qianhe/yct/fragment/WaGouStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    const/4 p2, 0x1

    iput p2, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->advancedType:I

    :cond_1
    return-void
.end method
