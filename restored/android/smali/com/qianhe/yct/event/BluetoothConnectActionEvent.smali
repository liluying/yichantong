.class public Lcom/qianhe/yct/event/BluetoothConnectActionEvent;
.super Ljava/lang/Object;
.source "BluetoothConnectActionEvent.java"


# instance fields
.field public action:Lcom/qianhe/yct/enums/BluetoothActionEnum;

.field public final deviceAddress:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;

.field public final deviceType:Lcom/qianhe/baselib/enums/DeviceType;


# direct methods
.method public constructor <init>(Lcom/qianhe/yct/enums/BluetoothActionEnum;Ljava/lang/String;Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;-><init>(Lcom/qianhe/yct/enums/BluetoothActionEnum;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void
.end method

.method public constructor <init>(Lcom/qianhe/yct/enums/BluetoothActionEnum;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;->action:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    .line 28
    iput-object p2, p0, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;->deviceName:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;->deviceAddress:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    return-void
.end method
