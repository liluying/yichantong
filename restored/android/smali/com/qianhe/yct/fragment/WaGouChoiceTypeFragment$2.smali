.class Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment$2;
.super Ljava/lang/Object;
.source "WaGouChoiceTypeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment$2;->this$0:Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 77
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment$2;->this$0:Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->ivWgDown:Lcom/qianhe/yct/view/NightAwareImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 78
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment$2;->this$0:Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->ivWgDown:Lcom/qianhe/yct/view/NightAwareImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment$2;->this$0:Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->ivWgFlat:Lcom/qianhe/yct/view/NightAwareImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 80
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment$2;->this$0:Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->ivWgUp:Lcom/qianhe/yct/view/NightAwareImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 81
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment$2;->this$0:Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/WaGouEnum;->DOWN:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v0

    iput v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    :cond_0
    return-void
.end method
