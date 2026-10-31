.class Lcom/qianhe/yct/dialog/CalibrateDialogFragment$1;
.super Ljava/lang/Object;
.source "CalibrateDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 134
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->-$$Nest$fgetheadingAccuracyMode(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->-$$Nest$fgetshowingHeadingAccuracyTip(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->-$$Nest$fgetmIns(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->-$$Nest$fgetmIns(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v1, Lcom/qianhe/yct/enums/InsStatusEnum;->SENSORLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v1

    and-int/2addr p1, v1

    if-eqz p1, :cond_2

    .line 141
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;)Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvContent:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    sget v2, Lcom/qianhe/yct/R$string;->sensor_offline:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 142
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 143
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    sget v1, Lcom/qianhe/yct/R$string;->confirm_sensor_status:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    sget v1, Lcom/qianhe/yct/R$string;->disconnect1:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nextStr"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "requestKey"

    const-string v1, "clickaction"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;->showSafely(Landroidx/fragment/app/FragmentManager;Landroid/os/Bundle;)V

    return-void

    .line 149
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-static {p1, v0}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->-$$Nest$fputmanual(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;Z)V

    .line 150
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 151
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;)Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;)Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;->onConfirm()V

    return-void

    .line 155
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-static {p1, v0}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->-$$Nest$fputmanual(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;Z)V

    .line 156
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 157
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;)Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;)Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;->onConfirm()V

    :cond_3
    return-void

    .line 136
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-static {p1, v0}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->-$$Nest$fputmanual(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;Z)V

    .line 137
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
