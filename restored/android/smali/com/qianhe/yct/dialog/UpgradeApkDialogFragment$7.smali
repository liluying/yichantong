.class Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$7;
.super Landroid/os/Handler;
.source "UpgradeApkDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;Landroid/os/Looper;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$7;->this$0:Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 132
    iget p1, p1, Landroid/os/Message;->what:I

    return-void
.end method
