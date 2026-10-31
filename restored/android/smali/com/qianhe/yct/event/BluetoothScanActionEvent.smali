.class public Lcom/qianhe/yct/event/BluetoothScanActionEvent;
.super Ljava/lang/Object;
.source "BluetoothScanActionEvent.java"


# instance fields
.field public action:Lcom/qianhe/yct/enums/BluetoothActionEnum;

.field public isAutoConnect:Z

.field public pageIndex:I


# direct methods
.method public constructor <init>(Lcom/qianhe/yct/enums/BluetoothActionEnum;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/qianhe/yct/event/BluetoothScanActionEvent;->action:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    return-void
.end method

.method public constructor <init>(Lcom/qianhe/yct/enums/BluetoothActionEnum;I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/qianhe/yct/event/BluetoothScanActionEvent;->action:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    .line 26
    iput p2, p0, Lcom/qianhe/yct/event/BluetoothScanActionEvent;->pageIndex:I

    return-void
.end method

.method public constructor <init>(Lcom/qianhe/yct/enums/BluetoothActionEnum;Z)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/qianhe/yct/event/BluetoothScanActionEvent;->action:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    .line 31
    iput-boolean p2, p0, Lcom/qianhe/yct/event/BluetoothScanActionEvent;->isAutoConnect:Z

    return-void
.end method

.method public constructor <init>(Lcom/qianhe/yct/enums/BluetoothActionEnum;ZI)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/qianhe/yct/event/BluetoothScanActionEvent;->action:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    .line 36
    iput-boolean p2, p0, Lcom/qianhe/yct/event/BluetoothScanActionEvent;->isAutoConnect:Z

    .line 37
    iput p3, p0, Lcom/qianhe/yct/event/BluetoothScanActionEvent;->pageIndex:I

    return-void
.end method
