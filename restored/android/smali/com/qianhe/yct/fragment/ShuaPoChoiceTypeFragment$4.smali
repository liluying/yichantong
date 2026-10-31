.class Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment$4;
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

    .line 85
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment$4;->this$0:Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 88
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment$4;->this$0:Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;->ivSpDown:Lcom/qianhe/yct/view/NightAwareImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment$4;->this$0:Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;->ivSpUp:Lcom/qianhe/yct/view/NightAwareImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment$4;->this$0:Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment$4;->this$0:Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_select_slope_type:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 91
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "next"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
