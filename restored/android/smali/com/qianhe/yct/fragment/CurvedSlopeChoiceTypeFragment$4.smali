.class Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment$4;
.super Ljava/lang/Object;
.source "CurvedSlopeChoiceTypeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment$4;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 76
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment$4;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;->ivSlopeTop:Lcom/qianhe/yct/view/NightAwareImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment$4;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;->ivSlopeBottom:Lcom/qianhe/yct/view/NightAwareImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment$4;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment$4;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_select_type:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 79
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "next"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
