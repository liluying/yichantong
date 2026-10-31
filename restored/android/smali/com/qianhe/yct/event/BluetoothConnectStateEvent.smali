.class public Lcom/qianhe/yct/event/BluetoothConnectStateEvent;
.super Ljava/lang/Object;
.source "BluetoothConnectStateEvent.java"


# instance fields
.field public myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;


# direct methods
.method public constructor <init>(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    return-void
.end method
