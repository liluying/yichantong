.class Lcom/qianhe/yct/activity/DiffDataConfigActivity$7$1;
.super Ljava/lang/Object;
.source "DiffDataConfigActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/DiffDataConfigActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/DiffDataConfigActivity$7;

.field final synthetic val$portDialogFragment:Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity$7;Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$7$1;->this$1:Lcom/qianhe/yct/activity/DiffDataConfigActivity$7;

    iput-object p2, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$7$1;->val$portDialogFragment:Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public empty()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$7$1;->val$portDialogFragment:Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 287
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$7$1;->this$1:Lcom/qianhe/yct/activity/DiffDataConfigActivity$7;

    iget-object v0, v0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$7;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$mupdateChoosePortVisibility(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V

    .line 288
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$7$1;->this$1:Lcom/qianhe/yct/activity/DiffDataConfigActivity$7;

    iget-object v0, v0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$7;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v1, Lcom/qianhe/yct/R$string;->no_preset_port:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method public onConfirm(Lcom/qianhe/baselib/bean/CorsEntity$PortEntity;)V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$7$1;->this$1:Lcom/qianhe/yct/activity/DiffDataConfigActivity$7;

    iget-object v0, v0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$7;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtPort:Landroid/widget/EditText;

    iget v1, p1, Lcom/qianhe/baselib/bean/CorsEntity$PortEntity;->port:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$7$1;->this$1:Lcom/qianhe/yct/activity/DiffDataConfigActivity$7;

    iget-object v0, v0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$7;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetntripClientConfig(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    move-result-object v0

    iget v1, p1, Lcom/qianhe/baselib/bean/CorsEntity$PortEntity;->port:I

    iput v1, v0, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    .line 281
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$7$1;->this$1:Lcom/qianhe/yct/activity/DiffDataConfigActivity$7;

    iget-object v0, v0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$7;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetntripClientConfig(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    move-result-object v0

    iget-object p1, p1, Lcom/qianhe/baselib/bean/CorsEntity$PortEntity;->coordinateSystem:Ljava/lang/String;

    iput-object p1, v0, Lcom/qianhe/baselib/base/BaseConfig;->coordinateSystem:Ljava/lang/String;

    return-void
.end method
