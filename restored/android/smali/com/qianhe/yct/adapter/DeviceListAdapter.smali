.class public Lcom/qianhe/yct/adapter/DeviceListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DeviceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;,
        Lcom/qianhe/yct/adapter/DeviceListAdapter$OnActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private attachedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final context:Landroid/content/Context;

.field private final deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private onConnectListener:Lcom/qianhe/yct/adapter/DeviceListAdapter$OnActionListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetlist(Lcom/qianhe/yct/adapter/DeviceListAdapter;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->list:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonConnectListener(Lcom/qianhe/yct/adapter/DeviceListAdapter;)Lcom/qianhe/yct/adapter/DeviceListAdapter$OnActionListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->onConnectListener:Lcom/qianhe/yct/adapter/DeviceListAdapter$OnActionListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->list:Ljava/util/List;

    .line 46
    iput-object p1, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    return-void
.end method

.method private bindData(Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
    .locals 5

    .line 86
    iget-object v0, p2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p1, Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    .line 90
    iget-object v1, p1, Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p1, Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getConnectedDevice(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v1, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v2, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_2

    iget-object v2, p2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_2

    .line 97
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 98
    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 101
    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    iput v0, p2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 102
    iget-object p2, p1, Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;->tvState:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->disconnect1:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 103
    iget-object p2, p1, Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;->tvState:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 104
    iget-object p2, p1, Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;->tvState:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->context:Landroid/content/Context;

    sget v1, Lcom/qianhe/yct/R$color;->white:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object p2, p1, Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->context:Landroid/content/Context;

    sget v1, Lcom/qianhe/yct/R$color;->theme:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 106
    :cond_2
    iget v0, p2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->STARTCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    const/high16 v2, -0x1000000

    const/16 v3, 0xc

    const/4 v4, 0x0

    if-eq v0, v1, :cond_5

    iget v0, p2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->START_BOND:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 107
    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-eq v0, v1, :cond_5

    iget v0, p2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->BONDING:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 108
    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_3

    goto :goto_2

    .line 116
    :cond_3
    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    iput v0, p2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 117
    iget-object v0, p1, Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;->tvState:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->connect:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object v0, p1, Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;->tvState:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 119
    iget-object v0, p1, Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    iget-object p2, p2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p2

    if-ne p2, v3, :cond_4

    .line 120
    iget-object p2, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->context:Landroid/content/Context;

    sget v1, Lcom/qianhe/yct/R$color;->text_color_item_bluetooth_disconnect_bonded:I

    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    goto :goto_1

    .line 121
    :cond_4
    iget-object p2, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->context:Landroid/content/Context;

    sget v1, Lcom/qianhe/yct/R$color;->text_color_item_bluetooth_disconnect_unbond:I

    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 119
    :goto_1
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    iget-object p2, p1, Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;->tvState:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 109
    :cond_5
    :goto_2
    iget-object v0, p1, Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;->tvState:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->connect:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget-object v0, p1, Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;->tvState:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 111
    iget-object v0, p1, Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    iget-object p2, p2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p2

    if-ne p2, v3, :cond_6

    .line 112
    iget-object p2, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->context:Landroid/content/Context;

    sget v1, Lcom/qianhe/yct/R$color;->text_color_item_bluetooth_disconnect_bonded:I

    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    goto :goto_3

    .line 113
    :cond_6
    iget-object p2, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->context:Landroid/content/Context;

    sget v1, Lcom/qianhe/yct/R$color;->text_color_item_bluetooth_disconnect_unbond:I

    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 111
    :goto_3
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    iget-object p2, p1, Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;->tvState:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    :goto_4
    iget-object p2, p1, Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;->item:Landroid/view/View;

    new-instance v0, Lcom/qianhe/yct/adapter/DeviceListAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/adapter/DeviceListAdapter$1;-><init>(Lcom/qianhe/yct/adapter/DeviceListAdapter;Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private connectedAddress()Ljava/lang/String;
    .locals 3

    .line 304
    iget-object v0, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getConnectedDevice(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 305
    iget-object v1, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v2, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v1, v2, :cond_1

    iget v1, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v2, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 307
    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private refreshItemAt(I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-ltz p1, :cond_2

    .line 285
    iget-object v0, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->attachedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 290
    instance-of v1, v0, Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;

    if-eqz v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->attachedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    const/4 v1, 0x0

    .line 293
    :try_start_0
    check-cast v0, Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;

    iget-object v2, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->bindData(Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    iget-object p1, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->attachedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->attachedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    .line 296
    throw p1

    .line 300
    :cond_1
    sget-object v0, Lcom/qianhe/baselib/Constant;->PAYLOAD_REFRESH_DATA:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addData(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    .line 164
    iget-object v1, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_3

    .line 169
    iget-object v0, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getConnectedDevice(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v1, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v2, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 172
    iget-object v0, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 173
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object p1, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public addDataBatch(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 183
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 186
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v2, :cond_1

    .line 187
    iget-object v3, v2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v4, v2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 191
    :cond_2
    iget-object v3, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    .line 192
    iget-object v4, v4, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 198
    :cond_4
    iget-object v3, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-lez v1, :cond_6

    .line 202
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :cond_6
    :goto_1
    return-void
.end method

.method public clear()V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 319
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 145
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 146
    iput-object p1, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->attachedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 39
    check-cast p1, Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 39
    check-cast p1, Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 80
    iget-object v0, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->bindData(Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 62
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;I)V

    return-void

    .line 67
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 68
    sget-object v1, Lcom/qianhe/baselib/Constant;->PAYLOAD_REFRESH_DATA:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->bindData(Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;
    .locals 2

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$layout;->item_devicelist:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 55
    new-instance p2, Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;

    invoke-direct {p2, p1}, Lcom/qianhe/yct/adapter/DeviceListAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 151
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 152
    iget-object v0, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->attachedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 153
    iput-object p1, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->attachedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    :cond_0
    return-void
.end method

.method public refreshState(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
    .locals 12

    if-eqz p1, :cond_0

    .line 237
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v1, v0, :cond_0

    goto/16 :goto_c

    :cond_0
    if-eqz p1, :cond_1

    .line 240
    iget v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    .line 241
    :goto_0
    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECT_FAILED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 242
    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CANCEL_BOND:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 243
    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SOCKET_CLOSE:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 244
    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 245
    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz p1, :cond_4

    .line 246
    iget-object v4, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_4

    .line 247
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    .line 248
    :goto_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 249
    :goto_4
    iget-object v7, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->list:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_f

    .line 250
    iget-object v7, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->list:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    .line 251
    iget-object v8, v7, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v8, :cond_5

    goto/16 :goto_a

    :cond_5
    if-eqz v4, :cond_6

    .line 254
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    .line 255
    :goto_5
    iget v9, v7, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v10, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->STARTCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v10}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v10

    if-eq v9, v10, :cond_8

    iget v9, v7, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v10, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->START_BOND:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 256
    invoke-virtual {v10}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v10

    if-eq v9, v10, :cond_8

    iget v9, v7, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v10, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->BONDING:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 257
    invoke-virtual {v10}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v10

    if-ne v9, v10, :cond_7

    goto :goto_6

    :cond_7
    const/4 v9, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v9, 0x1

    .line 258
    :goto_7
    iget v10, v7, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v11, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v11}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v11

    if-ne v10, v11, :cond_9

    const/4 v10, 0x1

    goto :goto_8

    :cond_9
    const/4 v10, 0x0

    :goto_8
    if-eqz v8, :cond_c

    if-eqz p1, :cond_a

    .line 260
    iget-object v8, v7, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 261
    invoke-virtual {v7, p1}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->mergeDisplayNameFrom(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    .line 264
    :cond_a
    sget-object v8, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CANCEL_BOND:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v8}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v8

    if-ne v0, v8, :cond_b

    .line 265
    sget-object v8, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v8}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v8

    goto :goto_9

    :cond_b
    move v8, v0

    .line 267
    :goto_9
    iput v8, v7, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 268
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_c
    if-eqz v1, :cond_d

    if-eqz v9, :cond_d

    .line 270
    sget-object v8, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v8}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v8

    iput v8, v7, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 271
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_d
    if-eqz v10, :cond_e

    .line 274
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 277
    :cond_f
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 278
    invoke-direct {p0, v0}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->refreshItemAt(I)V

    goto :goto_b

    :cond_10
    :goto_c
    return-void
.end method

.method public resetData(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 209
    iget-object v1, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 211
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    :cond_0
    if-eqz p1, :cond_7

    .line 213
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 217
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->connectedAddress()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v3, :cond_2

    .line 219
    iget-object v4, v3, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v6, v3, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v5, v6, :cond_3

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    .line 222
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v2, v3

    goto :goto_0

    .line 225
    :cond_4
    iget-object v4, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    .line 229
    iget-object p1, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->list:Ljava/util/List;

    invoke-interface {p1, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 231
    :cond_6
    iget-object p1, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 232
    iget-object p1, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :cond_7
    :goto_1
    return-void
.end method

.method public setOnActionListener(Lcom/qianhe/yct/adapter/DeviceListAdapter$OnActionListener;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/qianhe/yct/adapter/DeviceListAdapter;->onConnectListener:Lcom/qianhe/yct/adapter/DeviceListAdapter$OnActionListener;

    return-void
.end method
