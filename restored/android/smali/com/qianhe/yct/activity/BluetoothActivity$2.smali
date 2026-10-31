.class Lcom/qianhe/yct/activity/BluetoothActivity$2;
.super Ljava/lang/Object;
.source "BluetoothActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/BluetoothActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/BluetoothActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/BluetoothActivity;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$2;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 159
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$2;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    sget v0, Lcom/qianhe/yct/R$string;->disconnected:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 161
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$2;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BluetoothActivity;->-$$Nest$fgetmPosition(Lcom/qianhe/yct/activity/BluetoothActivity;)I

    move-result p1

    if-nez p1, :cond_0

    .line 162
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "activeDisconnect"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 163
    sget-object p1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    goto :goto_0

    .line 165
    :cond_0
    sget-object p1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    .line 167
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;

    sget-object v2, Lcom/qianhe/yct/enums/BluetoothActionEnum;->DISCONNECT:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    const-string v3, ""

    invoke-direct {v1, v2, v3, p1}, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;-><init>(Lcom/qianhe/yct/enums/BluetoothActionEnum;Ljava/lang/String;Lcom/qianhe/baselib/enums/DeviceType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
