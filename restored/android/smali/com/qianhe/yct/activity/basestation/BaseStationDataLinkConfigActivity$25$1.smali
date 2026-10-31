.class Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$25$1;
.super Ljava/lang/Object;
.source "BaseStationDataLinkConfigActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$25;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$25;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$25;)V
    .locals 0

    .line 917
    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$25$1;->this$1:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onConfirm()V
    .locals 2

    .line 920
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$25$1;->this$1:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$25;

    iget-object v0, v0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$25;->val$event:Lcom/qianhe/rtkclientlib/event/SetBaseRadioResponse;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/event/SetBaseRadioResponse;->line:Ljava/lang/String;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$25$1;->this$1:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$25;

    iget-object v0, v0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$25;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
