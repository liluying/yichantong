.class Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$8;
.super Ljava/lang/Object;
.source "BaseStationConfigActivity.java"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$8;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 261
    const-string v0, "basereset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 262
    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 264
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$8;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->-$$Nest$fgetisBaseSupportMobile(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$8;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->-$$Nest$fgetisBaseSupportRadio(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 265
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$8;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->-$$Nest$mshowResetDataLinkDialog(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)V

    return-void

    .line 266
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$8;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->-$$Nest$fgetisBaseSupportMobile(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 267
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$8;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->-$$Nest$mresetToNetworkDataLink(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)V

    return-void

    .line 268
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$8;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->-$$Nest$fgetisBaseSupportRadio(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 269
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$8;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->-$$Nest$mresetToRadioDataLink(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)V

    return-void

    .line 271
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$8;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    sget p2, Lcom/qianhe/yct/R$string;->base_not_support_reset:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$8;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_3
    return-void
.end method
