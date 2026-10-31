.class Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment$4;
.super Ljava/lang/Object;
.source "SiteLevelingChoiceTypeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment$4;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 77
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment$4;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentSitelevelingChoiceTypeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSitelevelingChoiceTypeBinding;->ivLeveling:Lcom/qianhe/yct/view/NightAwareImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment$4;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentSitelevelingChoiceTypeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSitelevelingChoiceTypeBinding;->ivSlope:Lcom/qianhe/yct/view/NightAwareImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment$4;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment$4;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_select_type:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 80
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "next"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
