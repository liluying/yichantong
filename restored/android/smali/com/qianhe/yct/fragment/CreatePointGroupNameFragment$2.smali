.class Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment$2;
.super Ljava/lang/Object;
.source "CreatePointGroupNameFragment.java"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment$2;->this$0:Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 89
    const-string v0, "defaultname"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 91
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment$2;->this$0:Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->-$$Nest$msetDefaultName(Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;)V

    return-void

    .line 92
    :cond_1
    const-string p1, "manual_cancel"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 93
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment$2;->this$0:Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->-$$Nest$mfocusNameInput(Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;)V

    :cond_2
    :goto_0
    return-void
.end method
