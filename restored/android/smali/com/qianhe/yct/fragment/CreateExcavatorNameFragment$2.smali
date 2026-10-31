.class Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$2;
.super Ljava/lang/Object;
.source "CreateExcavatorNameFragment.java"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$2;->this$0:Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 95
    const-string v0, "defaultname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 96
    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 97
    const-string v0, "manual_cancel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$2;->this$0:Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->-$$Nest$msetDefaultName(Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 101
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$2;->this$0:Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;)Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 102
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$2;->this$0:Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;)Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    new-instance p2, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$2$1;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$2$1;-><init>(Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$2;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
