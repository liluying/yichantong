.class Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5$1;
.super Ljava/lang/Object;
.source "ChooseSensorDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5$1;->this$1:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5$1;->this$1:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5;

    iget-object v2, v2, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5;->this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    invoke-static {v2}, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;->-$$Nest$fgetmessageTimeMillis(Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xaf0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 222
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5$1;->this$1:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5;->this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;)Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;->tvNext:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5$1;->this$1:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5;->this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;)Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;->tvName:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5$1;->this$1:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5;->this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;)Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;->tvStatus:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->not_connected:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 225
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5$1;->this$1:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$5;->this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;)Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;->tvNext:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method
