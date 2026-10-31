.class Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment$1;
.super Ljava/lang/Object;
.source "ShuaPoChoiceTypeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment$1;->this$0:Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 62
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment$1;->this$0:Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;->ivSpDown:Lcom/qianhe/yct/view/NightAwareImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 63
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment$1;->this$0:Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;->ivSpDown:Lcom/qianhe/yct/view/NightAwareImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment$1;->this$0:Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;->ivSpUp:Lcom/qianhe/yct/view/NightAwareImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 65
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment$1;->this$0:Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/ShuaPoEnum;->DOWN:Lcom/qianhe/baselib/enums/ShuaPoEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ShuaPoEnum;->getType()I

    move-result v0

    iput v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    :cond_0
    return-void
.end method
