.class Lcom/qianhe/yct/service/BluetoothConnectService$1;
.super Ljava/lang/Object;
.source "BluetoothConnectService.java"

# interfaces
.implements Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/service/BluetoothConnectService;->requestRoughNetworkLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/service/BluetoothConnectService;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/service/BluetoothConnectService;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$1;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationFailed(Ljava/lang/String;)V
    .locals 0

    .line 254
    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onLocationReceived(DDDFLjava/lang/String;)V
    .locals 0

    move-wide p6, p5

    move-wide p4, p3

    move-wide p2, p1

    .line 249
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$1;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static/range {p1 .. p8}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$mapplyRoughCoords(Lcom/qianhe/yct/service/BluetoothConnectService;DDDLjava/lang/String;)V

    return-void
.end method
