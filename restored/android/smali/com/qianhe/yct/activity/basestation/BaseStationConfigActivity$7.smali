.class Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$7;
.super Ljava/lang/Object;
.source "BaseStationConfigActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->startTimer()V
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

    .line 158
    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$7;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$7;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->ivVPN:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v2, "GET,ZXVPN_STATUS"

    invoke-direct {v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$7;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->-$$Nest$fputgetMobile(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;Z)V

    .line 165
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "GET,MOBILE"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
