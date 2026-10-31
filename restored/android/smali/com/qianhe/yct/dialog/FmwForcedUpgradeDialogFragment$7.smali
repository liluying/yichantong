.class Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$7;
.super Landroid/os/Handler;
.source "FmwForcedUpgradeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;Landroid/os/Looper;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$7;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 406
    iget p1, p1, Landroid/os/Message;->what:I

    return-void
.end method
