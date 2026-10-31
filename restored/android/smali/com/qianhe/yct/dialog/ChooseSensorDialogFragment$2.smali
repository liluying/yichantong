.class Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$2;
.super Ljava/lang/Object;
.source "ChooseSensorDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 148
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 149
    new-instance v0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$2$1;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$2$1;-><init>(Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$2;Landroid/view/View;)V

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;->access$100(Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->clearFragmentResult(Ljava/lang/String;)V

    .line 156
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 157
    const-string v0, "sensor_scan"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;->access$200(Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method
