.class Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$7;
.super Ljava/lang/Object;
.source "ShuaPoStep3Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 209
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->ivSelNoWidth:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->ivSelNoWidth:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 210
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtWidth:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->ivSelNoWidth:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 211
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->lltWidth:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->ivSelNoWidth:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
