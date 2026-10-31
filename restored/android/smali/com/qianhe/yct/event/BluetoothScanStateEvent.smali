.class public Lcom/qianhe/yct/event/BluetoothScanStateEvent;
.super Ljava/lang/Object;
.source "BluetoothScanStateEvent.java"


# instance fields
.field public mySevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

.field public scanPageIndex:I


# direct methods
.method public constructor <init>(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/qianhe/yct/event/BluetoothScanStateEvent;->mySevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    .line 20
    iput p2, p0, Lcom/qianhe/yct/event/BluetoothScanStateEvent;->scanPageIndex:I

    return-void
.end method
