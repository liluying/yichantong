.class Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment$1;
.super Ljava/lang/Object;
.source "ZhaoPingChoiceTypeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment$1;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 65
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment$1;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->ivLeveling:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 66
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment$1;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->ivLeveling:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment$1;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->ivFill:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 68
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment$1;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->ivDig:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 69
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment$1;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->-$$Nest$fgetzhaoPingEntity(Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;)Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->LEVEING:Lcom/qianhe/baselib/enums/ZhaoPingEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->getType()I

    move-result v0

    iput v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    .line 70
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment$1;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->-$$Nest$fgetzhaoPingEntity(Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;)Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    move-result-object p1

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->depth:D

    :cond_0
    return-void
.end method
