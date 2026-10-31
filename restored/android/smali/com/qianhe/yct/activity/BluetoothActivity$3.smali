.class Lcom/qianhe/yct/activity/BluetoothActivity$3;
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

    .line 171
    iput-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$3;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 175
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$3;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    sget v0, Lcom/qianhe/yct/R$string;->switch_blue_mode:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 176
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$3;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    sget-object v0, Lcom/qianhe/baselib/enums/ConnectModeEnum;->DEMO:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/BluetoothActivity;->-$$Nest$mrefrshDemoState(Lcom/qianhe/yct/activity/BluetoothActivity;I)V

    .line 177
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$3;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BluetoothActivity;->access$000(Lcom/qianhe/yct/activity/BluetoothActivity;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v0

    const-string v1, "mode"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 178
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/StopDemo;

    invoke-direct {v0}, Lcom/qianhe/yct/event/StopDemo;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 179
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$3;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->reConnect(Lcom/qianhe/baselib/enums/DeviceType;)V

    .line 180
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$3;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
