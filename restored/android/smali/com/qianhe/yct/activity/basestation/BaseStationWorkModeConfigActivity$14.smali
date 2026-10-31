.class Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$14;
.super Ljava/lang/Object;
.source "BaseStationWorkModeConfigActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->showFixedCoordinateStartupDialog(Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$14;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 377
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$14;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->-$$Nest$fputstartupChange(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;Z)V

    .line 380
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$14;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->-$$Nest$fgetdeviceType(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v1

    const-string v2, "GET,ANTENNA_HEIGHT"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
