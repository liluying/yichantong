.class public Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "MultiBluetoothExampleActivity.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityMultiBluetoothExampleBinding;

.field private bluetoothService:Lcom/qianhe/yct/service/BluetoothConnectService;

.field private isServiceBound:Z

.field private final serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public static synthetic $r8$lambda$1M5ES1kITm3XwZpVvPrchZZRtvk(Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;Landroid/view/View;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->refreshConnectionStatus()V

    return-void
.end method

.method public static synthetic $r8$lambda$1oq3slz8BMEy_uhYeHkPQsMS_94(Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;Landroid/view/View;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->connectSecondaryDevice()V

    return-void
.end method

.method public static synthetic $r8$lambda$MX4C1cTZA9S-b4U_ej4IfgPPrbE(Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;Landroid/view/View;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->connectPrimaryDevice()V

    return-void
.end method

.method public static synthetic $r8$lambda$r0vx0koxnvAR3HFI3pHUKyttPAw(Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;Landroid/view/View;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->disconnectSecondaryDevice()V

    return-void
.end method

.method public static synthetic $r8$lambda$vmRkHiYr-QWdLQlfI0kGDBCYgTo(Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;Landroid/view/View;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->disconnectPrimaryDevice()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbluetoothService(Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;Lcom/qianhe/yct/service/BluetoothConnectService;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->bluetoothService:Lcom/qianhe/yct/service/BluetoothConnectService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisServiceBound(Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->isServiceBound:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshConnectionStatus(Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->refreshConnectionStatus()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->isServiceBound:Z

    .line 40
    new-instance v0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity$1;-><init>(Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private bindBluetoothService()V
    .locals 3

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    iget-object v1, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private connectPrimaryDevice()V
    .locals 3

    .line 155
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->isServiceBound:Z

    const-string v1, "MultiBluetooth"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->bluetoothService:Lcom/qianhe/yct/service/BluetoothConnectService;

    if-nez v0, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->getMultiBluetoothManager()Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6b63\u5728\u8fde\u63a5\u4e3b\u8bbe\u5907: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "PRIMARY_DEVICE_NAME"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    return-void

    .line 174
    :cond_1
    const-string/jumbo v0, "\u591a\u8bbe\u5907\u7ba1\u7406\u5668\u672a\u521d\u59cb\u5316"

    nop

    nop

    nop

    return-void

    .line 156
    :cond_2
    :goto_0
    const-string/jumbo v0, "\u84dd\u7259\u670d\u52a1\u672a\u7ed1\u5b9a\uff0c\u8bf7\u5148\u7ed1\u5b9a\u670d\u52a1"

    nop

    nop

    nop

    return-void
.end method

.method private connectSecondaryDevice()V
    .locals 3

    .line 184
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->isServiceBound:Z

    const-string v1, "MultiBluetooth"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->bluetoothService:Lcom/qianhe/yct/service/BluetoothConnectService;

    if-nez v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->getMultiBluetoothManager()Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6b63\u5728\u8fde\u63a5\u526f\u8bbe\u5907: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SECONDARY_DEVICE_NAME"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    return-void

    .line 199
    :cond_1
    const-string/jumbo v0, "\u591a\u8bbe\u5907\u7ba1\u7406\u5668\u672a\u521d\u59cb\u5316"

    nop

    nop

    nop

    return-void

    .line 185
    :cond_2
    :goto_0
    const-string/jumbo v0, "\u84dd\u7259\u670d\u52a1\u672a\u7ed1\u5b9a\uff0c\u8bf7\u5148\u7ed1\u5b9a\u670d\u52a1"

    nop

    nop

    nop

    return-void
.end method

.method private disconnectPrimaryDevice()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->bluetoothService:Lcom/qianhe/yct/service/BluetoothConnectService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->getMultiBluetoothManager()Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->bluetoothService:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-virtual {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->getMultiBluetoothManager()Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->disconnectDevice(Lcom/qianhe/baselib/enums/DeviceType;)V

    .line 209
    const-string v0, "MultiBluetooth"

    const-string/jumbo v1, "\u5df2\u65ad\u5f00\u4e3b\u8bbe\u5907"

    nop

    nop

    nop

    :cond_0
    return-void
.end method

.method private disconnectSecondaryDevice()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->bluetoothService:Lcom/qianhe/yct/service/BluetoothConnectService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->getMultiBluetoothManager()Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->bluetoothService:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-virtual {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->getMultiBluetoothManager()Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->disconnectDevice(Lcom/qianhe/baselib/enums/DeviceType;)V

    .line 219
    const-string v0, "MultiBluetooth"

    const-string/jumbo v1, "\u5df2\u65ad\u5f00\u526f\u8bbe\u5907"

    nop

    nop

    nop

    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiBluetoothExampleBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiBluetoothExampleBinding;->btnConnectPrimary:Landroid/widget/Button;

    new-instance v1, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiBluetoothExampleBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiBluetoothExampleBinding;->btnConnectSecondary:Landroid/widget/Button;

    new-instance v1, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiBluetoothExampleBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiBluetoothExampleBinding;->btnDisconnectPrimary:Landroid/widget/Button;

    new-instance v1, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiBluetoothExampleBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiBluetoothExampleBinding;->btnDisconnectSecondary:Landroid/widget/Button;

    new-instance v1, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiBluetoothExampleBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiBluetoothExampleBinding;->btnRefreshStatus:Landroid/widget/Button;

    new-instance v1, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private refreshConnectionStatus()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->bluetoothService:Lcom/qianhe/yct/service/BluetoothConnectService;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->getMultiBluetoothManager()Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->bluetoothService:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-virtual {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->getMultiBluetoothManager()Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    .line 232
    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v2

    .line 233
    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getConnectedDevice(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v1

    .line 236
    sget-object v3, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v3}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v4

    .line 237
    invoke-virtual {v0, v3}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getConnectedDevice(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    .line 240
    invoke-direct {p0, v2, v1, v4, v0}, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->updateConnectionStatusUI(ZLcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;ZLcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    .line 243
    const-string/jumbo v0, "\u672a\u8fde\u63a5"

    const-string/jumbo v1, "\u5df2\u8fde\u63a5"

    if-eqz v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-eqz v4, :cond_1

    move-object v0, v1

    :cond_1
    const/4 v1, 0x2

    .line 244
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 242
    const-string/jumbo v0, "\u4e3b\u8bbe\u5907: %s, \u526f\u8bbe\u5907: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiBluetooth"

    nop

    nop

    nop

    :cond_2
    return-void
.end method

.method private unbindBluetoothService()V
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->isServiceBound:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->isServiceBound:Z

    :cond_0
    return-void
.end method

.method private updateConnectionStatusUI(ZLcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;ZLcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 253
    iget-object p1, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiBluetoothExampleBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityMultiBluetoothExampleBinding;->tvPrimaryStatus:Landroid/widget/TextView;

    iget-object p2, p2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p2, v2, v0

    const-string/jumbo p2, "\u4e3b\u8bbe\u5907: %s (\u5df2\u8fde\u63a5)"

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 255
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiBluetoothExampleBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityMultiBluetoothExampleBinding;->tvPrimaryStatus:Landroid/widget/TextView;

    const-string/jumbo p2, "\u4e3b\u8bbe\u5907: \u672a\u8fde\u63a5"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 260
    iget-object p1, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiBluetoothExampleBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityMultiBluetoothExampleBinding;->tvSecondaryStatus:Landroid/widget/TextView;

    iget-object p2, p4, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 261
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v0

    .line 260
    const-string/jumbo p2, "\u526f\u8bbe\u5907: %s (\u5df2\u8fde\u63a5)"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 263
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiBluetoothExampleBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityMultiBluetoothExampleBinding;->tvSecondaryStatus:Landroid/widget/TextView;

    const-string/jumbo p2, "\u526f\u8bbe\u5907: \u672a\u8fde\u63a5"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected initData()V
    .locals 0

    .line 0
    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/ActivityMultiBluetoothExampleBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityMultiBluetoothExampleBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiBluetoothExampleBinding;

    .line 65
    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/ActivityMultiBluetoothExampleBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 67
    invoke-direct {p0}, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->initViews()V

    .line 69
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->startBlueService()V

    .line 71
    invoke-direct {p0}, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->bindBluetoothService()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 269
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 271
    iget-object v0, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->bluetoothService:Lcom/qianhe/yct/service/BluetoothConnectService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->getMultiBluetoothManager()Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->bluetoothService:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-virtual {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->getMultiBluetoothManager()Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->disconnectAll()V

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->unbindBluetoothService()V

    return-void
.end method

.method protected onHorizontalAngleRange(Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onINsNavi(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 0

    .line 0
    return-void
.end method
