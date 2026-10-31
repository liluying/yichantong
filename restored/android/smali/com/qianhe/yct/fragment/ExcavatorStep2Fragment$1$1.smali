.class Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$1$1;
.super Ljava/lang/Object;
.source "ExcavatorStep2Fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$1;->onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$1;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$1;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$1$1;->this$1:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$1$1;->this$1:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$1$1;->this$1:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$1;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtShovelName:Landroidx/appcompat/widget/AppCompatEditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
