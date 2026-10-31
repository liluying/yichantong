.class Lcom/qianhe/yct/fragment/CreateProjectNameFragment$2;
.super Ljava/lang/Object;
.source "CreateProjectNameFragment.java"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/CreateProjectNameFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/CreateProjectNameFragment;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment$2;->this$0:Lcom/qianhe/yct/fragment/CreateProjectNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 100
    const-string v0, "defaultname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 101
    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 102
    const-string v0, "manual_cancel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment$2;->this$0:Lcom/qianhe/yct/fragment/CreateProjectNameFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->-$$Nest$msetDefaultName(Lcom/qianhe/yct/fragment/CreateProjectNameFragment;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 106
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment$2;->this$0:Lcom/qianhe/yct/fragment/CreateProjectNameFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/CreateProjectNameFragment;)Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 107
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment$2;->this$0:Lcom/qianhe/yct/fragment/CreateProjectNameFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/CreateProjectNameFragment;)Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    new-instance p2, Lcom/qianhe/yct/fragment/CreateProjectNameFragment$2$1;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/fragment/CreateProjectNameFragment$2$1;-><init>(Lcom/qianhe/yct/fragment/CreateProjectNameFragment$2;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
