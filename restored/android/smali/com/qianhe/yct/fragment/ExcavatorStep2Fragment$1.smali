.class Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$1;
.super Ljava/lang/Object;
.source "ExcavatorStep2Fragment.java"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 86
    const-string/jumbo v0, "step2_shovel_name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 87
    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 88
    const-string v0, "manual_cancel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$msetShovelDefaultName(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 92
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtShovelName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 93
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtShovelName:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance p2, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$1$1;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$1$1;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$1;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
