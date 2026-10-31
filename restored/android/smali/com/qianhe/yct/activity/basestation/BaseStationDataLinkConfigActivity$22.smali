.class Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$22;
.super Ljava/lang/Object;
.source "BaseStationDataLinkConfigActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->onEventMessage(Lcom/qianhe/rtkclientlib/event/SetBaseRadioResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)V
    .locals 0

    .line 881
    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$22;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 884
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$22;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    sget v1, Lcom/qianhe/yct/R$string;->is_applied_to_h5:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$22;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    sget v3, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "appliedtoh5radio"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void
.end method
