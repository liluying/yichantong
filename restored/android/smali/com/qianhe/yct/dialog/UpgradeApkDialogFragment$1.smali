.class Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$1;
.super Ljava/lang/Object;
.source "UpgradeApkDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 63
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
