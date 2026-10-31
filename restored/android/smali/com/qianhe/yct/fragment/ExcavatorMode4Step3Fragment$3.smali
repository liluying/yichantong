.class Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment$3;
.super Ljava/lang/Object;
.source "ExcavatorMode4Step3Fragment.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/CheckInsDialogFragment$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->showCheckInsDialog(Z)V
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

    .line 772
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    .line 775
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->-$$Nest$fputcheckInsDismissedManually(Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;Z)V

    .line 776
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->-$$Nest$fputcheckInsDialog(Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;Lcom/qianhe/yct/dialog/CheckInsDialogFragment;)V

    return-void
.end method
