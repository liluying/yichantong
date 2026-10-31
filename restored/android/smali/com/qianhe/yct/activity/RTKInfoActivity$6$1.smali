.class Lcom/qianhe/yct/activity/RTKInfoActivity$6$1;
.super Ljava/lang/Object;
.source "RTKInfoActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/RTKInfoActivity$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/RTKInfoActivity$6;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/RTKInfoActivity$6;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$6$1;->this$1:Lcom/qianhe/yct/activity/RTKInfoActivity$6;

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
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$6$1;->this$1:Lcom/qianhe/yct/activity/RTKInfoActivity$6;

    iget-object v0, v0, Lcom/qianhe/yct/activity/RTKInfoActivity$6;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$fgetdeviceType(Lcom/qianhe/yct/activity/RTKInfoActivity;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "SET,POWEROFF"

    if-ne v0, v1, :cond_0

    .line 162
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v3, "activeDisconnect"

    invoke-virtual {v0, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 163
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v3, Lcom/qianhe/baselib/bean/OrderBean;

    invoke-direct {v3, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$6$1;->this$1:Lcom/qianhe/yct/activity/RTKInfoActivity$6;

    iget-object v0, v0, Lcom/qianhe/yct/activity/RTKInfoActivity$6;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$fgetdeviceType(Lcom/qianhe/yct/activity/RTKInfoActivity;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_1

    .line 165
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v3, Lcom/qianhe/baselib/bean/OrderBean;

    invoke-direct {v3, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 166
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v1, "activeDisconnect_base"

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
