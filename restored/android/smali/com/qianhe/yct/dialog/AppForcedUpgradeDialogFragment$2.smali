.class Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$2;
.super Ljava/lang/Object;
.source "AppForcedUpgradeDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;)Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$OnCloseListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;)Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$OnCloseListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$OnCloseListener;->onInstall()V

    :cond_0
    return-void
.end method
