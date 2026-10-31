.class Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$19$1;
.super Ljava/lang/Object;
.source "BaseStationDataLinkConfigActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$19;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$19;)V
    .locals 0

    .line 831
    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$19$1;->this$1:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$19;

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
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$19$1;->this$1:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$19;

    iget-object v0, v0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
