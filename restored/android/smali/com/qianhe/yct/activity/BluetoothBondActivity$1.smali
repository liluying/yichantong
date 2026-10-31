.class Lcom/qianhe/yct/activity/BluetoothBondActivity$1;
.super Ljava/lang/Object;
.source "BluetoothBondActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/activity/BluetoothBondActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$1;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$1;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$mstartBondAttempt(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V

    return-void
.end method
