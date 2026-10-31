.class Lcom/qianhe/yct/adapter/DeviceListAdapter$1;
.super Ljava/lang/Object;
.source "DeviceListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/adapter/DeviceListAdapter;->bindData(Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/adapter/DeviceListAdapter;

.field final synthetic val$holder:Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/adapter/DeviceListAdapter;Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/DeviceListAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter$1;->val$holder:Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 128
    iget-object p1, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/DeviceListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->-$$Nest$fgetonConnectListener(Lcom/qianhe/yct/adapter/DeviceListAdapter;)Lcom/qianhe/yct/adapter/DeviceListAdapter$OnActionListener;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter$1;->val$holder:Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 132
    iget-object v0, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/DeviceListAdapter;

    invoke-static {v0}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->-$$Nest$fgetlist(Lcom/qianhe/yct/adapter/DeviceListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_1

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/DeviceListAdapter;

    invoke-static {v0}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->-$$Nest$fgetlist(Lcom/qianhe/yct/adapter/DeviceListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    .line 136
    iget v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 137
    iget-object v1, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/DeviceListAdapter;

    invoke-static {v1}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->-$$Nest$fgetonConnectListener(Lcom/qianhe/yct/adapter/DeviceListAdapter;)Lcom/qianhe/yct/adapter/DeviceListAdapter$OnActionListener;

    move-result-object v1

    sget-object v2, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 138
    sget-object v0, Lcom/qianhe/yct/enums/BluetoothActionEnum;->DISCONNECT:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/qianhe/yct/enums/BluetoothActionEnum;->CONNECT:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    .line 137
    :goto_0
    invoke-interface {v1, p1, v0}, Lcom/qianhe/yct/adapter/DeviceListAdapter$OnActionListener;->onAction(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;Lcom/qianhe/yct/enums/BluetoothActionEnum;)V

    :cond_3
    :goto_1
    return-void
.end method
