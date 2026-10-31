.class Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment$2;
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

    .line 60
    iput-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment$2;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 63
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment$2;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentSitelevelingChoiceTypeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSitelevelingChoiceTypeBinding;->ivSlope:Lcom/qianhe/yct/view/NightAwareImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 64
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment$2;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentSitelevelingChoiceTypeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSitelevelingChoiceTypeBinding;->ivLeveling:Lcom/qianhe/yct/view/NightAwareImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 65
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment$2;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment;->-$$Nest$fgetsiteLevelingEntity(Lcom/qianhe/yct/fragment/SiteLevelingChoiceTypeFragment;)Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    move-result-object p1

    iput v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    return-void
.end method
