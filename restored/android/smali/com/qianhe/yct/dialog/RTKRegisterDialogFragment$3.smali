.class Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$3;
.super Ljava/lang/Object;
.source "RTKRegisterDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 103
    iget-object p1, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    const-string v0, "camera"

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->hasPermissions(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 105
    new-instance p1, Lcom/journeyapps/barcodescanner/ScanOptions;

    invoke-direct {p1}, Lcom/journeyapps/barcodescanner/ScanOptions;-><init>()V

    .line 106
    const-string v0, "QR_CODE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/journeyapps/barcodescanner/ScanOptions;->setDesiredBarcodeFormats([Ljava/lang/String;)Lcom/journeyapps/barcodescanner/ScanOptions;

    .line 107
    iget-object v0, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;

    sget v2, Lcom/qianhe/yct/R$string;->align_with_qr:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/journeyapps/barcodescanner/ScanOptions;->setPrompt(Ljava/lang/String;)Lcom/journeyapps/barcodescanner/ScanOptions;

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1, v0}, Lcom/journeyapps/barcodescanner/ScanOptions;->setCameraId(I)Lcom/journeyapps/barcodescanner/ScanOptions;

    .line 109
    invoke-virtual {p1, v0}, Lcom/journeyapps/barcodescanner/ScanOptions;->setBeepEnabled(Z)Lcom/journeyapps/barcodescanner/ScanOptions;

    .line 110
    invoke-virtual {p1, v1}, Lcom/journeyapps/barcodescanner/ScanOptions;->setOrientationLocked(Z)Lcom/journeyapps/barcodescanner/ScanOptions;

    .line 111
    invoke-virtual {p1, v1}, Lcom/journeyapps/barcodescanner/ScanOptions;->setBarcodeImageEnabled(Z)Lcom/journeyapps/barcodescanner/ScanOptions;

    .line 112
    iget-object v0, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->-$$Nest$fgetscanLauncher(Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->checkPermissions(Ljava/lang/String;Z)V

    return-void
.end method
