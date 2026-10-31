.class Lcom/qianhe/yct/activity/BluetoothActivity$6$1;
.super Ljava/lang/Object;
.source "BluetoothActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/BluetoothActivity$6;->onPageSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/BluetoothActivity$6;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/BluetoothActivity$6;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$6$1;->this$1:Lcom/qianhe/yct/activity/BluetoothActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 247
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity$6$1;->this$1:Lcom/qianhe/yct/activity/BluetoothActivity$6;

    iget-object v0, v0, Lcom/qianhe/yct/activity/BluetoothActivity$6;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity$6$1;->this$1:Lcom/qianhe/yct/activity/BluetoothActivity$6;

    iget-object v0, v0, Lcom/qianhe/yct/activity/BluetoothActivity$6;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BluetoothActivity;->-$$Nest$fgetscanPageIndex(Lcom/qianhe/yct/activity/BluetoothActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 249
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/qianhe/yct/event/BluetoothScanActionEvent;

    sget-object v3, Lcom/qianhe/yct/enums/BluetoothActionEnum;->STOPSCAN:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/qianhe/yct/event/BluetoothScanActionEvent;-><init>(Lcom/qianhe/yct/enums/BluetoothActionEnum;I)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 250
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/qianhe/yct/event/BluetoothScanActionEvent;

    sget-object v3, Lcom/qianhe/yct/enums/BluetoothActionEnum;->STARTSCAN:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    invoke-direct {v2, v3, v4, v1}, Lcom/qianhe/yct/event/BluetoothScanActionEvent;-><init>(Lcom/qianhe/yct/enums/BluetoothActionEnum;ZI)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
