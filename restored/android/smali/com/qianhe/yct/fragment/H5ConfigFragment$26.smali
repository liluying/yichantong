.class Lcom/qianhe/yct/fragment/H5ConfigFragment$26;
.super Ljava/lang/Object;
.source "H5ConfigFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/H5ConfigFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$26;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Boolean;)V
    .locals 1

    .line 564
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$26;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->lltAdmin:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 561
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/fragment/H5ConfigFragment$26;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
