.class public Lcom/qianhe/yct/service/BluetoothConnectService$LocalBinder;
.super Landroid/os/Binder;
.source "BluetoothConnectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/service/BluetoothConnectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/service/BluetoothConnectService;


# direct methods
.method public constructor <init>(Lcom/qianhe/yct/service/BluetoothConnectService;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$LocalBinder;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/qianhe/yct/service/BluetoothConnectService;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$LocalBinder;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    return-object v0
.end method
