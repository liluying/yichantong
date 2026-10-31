.class public Lcom/qianhe/yct/event/BluetoothConnectActionByMacEvent;
.super Ljava/lang/Object;
.source "BluetoothConnectActionByMacEvent.java"


# instance fields
.field public action:Lcom/qianhe/yct/enums/BluetoothActionEnum;

.field public mac:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/qianhe/yct/enums/BluetoothActionEnum;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/qianhe/yct/event/BluetoothConnectActionByMacEvent;->action:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    .line 20
    iput-object p2, p0, Lcom/qianhe/yct/event/BluetoothConnectActionByMacEvent;->mac:Ljava/lang/String;

    return-void
.end method
