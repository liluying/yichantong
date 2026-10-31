.class public Lcom/qianhe/rtkclientlib/event/BluetoothBondRequestEvent;
.super Ljava/lang/Object;
.source "BluetoothBondRequestEvent.java"


# instance fields
.field public final deviceAddress:Ljava/lang/String;

.field public volatile handledByActivity:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/event/BluetoothBondRequestEvent;->deviceAddress:Ljava/lang/String;

    return-void
.end method
