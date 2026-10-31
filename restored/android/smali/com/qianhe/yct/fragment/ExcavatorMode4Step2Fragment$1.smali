.class Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$1;
.super Ljava/lang/Object;
.source "ExcavatorMode4Step2Fragment.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->checkAndShowEnterTips()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 0

    .line 427
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 428
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->-$$Nest$mcheckAndShowInstallTips(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;)V

    :cond_0
    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->-$$Nest$mcheckAndShowInstallTips(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;)V

    :cond_0
    return-void
.end method
