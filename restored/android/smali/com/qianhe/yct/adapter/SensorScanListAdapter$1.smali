.class Lcom/qianhe/yct/adapter/SensorScanListAdapter$1;
.super Ljava/lang/Object;
.source "SensorScanListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/adapter/SensorScanListAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/SensorScanListAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/adapter/SensorScanListAdapter;

.field final synthetic val$device:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/adapter/SensorScanListAdapter;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/qianhe/yct/adapter/SensorScanListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/SensorScanListAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/SensorScanListAdapter$1;->val$device:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/qianhe/yct/adapter/SensorScanListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/SensorScanListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/SensorScanListAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/SensorScanListAdapter;)Lcom/qianhe/yct/adapter/SensorScanListAdapter$OnActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/adapter/SensorScanListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/SensorScanListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/SensorScanListAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/SensorScanListAdapter;)Lcom/qianhe/yct/adapter/SensorScanListAdapter$OnActionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/SensorScanListAdapter$1;->val$device:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-interface {p1, v0}, Lcom/qianhe/yct/adapter/SensorScanListAdapter$OnActionListener;->onAction(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    :cond_0
    return-void
.end method
