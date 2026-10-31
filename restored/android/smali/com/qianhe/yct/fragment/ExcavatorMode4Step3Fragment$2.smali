.class Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment$2;
.super Ljava/lang/Object;
.source "ExcavatorMode4Step3Fragment.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->checkFirstCollectArmAngle()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 495
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->-$$Nest$fputignoreArmAngleExtendTip(Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;Z)V

    return-void
.end method

.method public onConfirm()V
    .locals 0

    .line 0
    return-void
.end method
