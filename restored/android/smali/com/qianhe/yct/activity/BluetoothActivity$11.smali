.class Lcom/qianhe/yct/activity/BluetoothActivity$11;
.super Ljava/lang/Object;
.source "BluetoothActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/BluetoothActivity;->onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/BluetoothActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/BluetoothActivity;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$11;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 590
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$11;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BluetoothActivity;->-$$Nest$mabortUserInitiatedConnect(Lcom/qianhe/yct/activity/BluetoothActivity;)V

    :cond_0
    return-void
.end method
