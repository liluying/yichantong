.class Lcom/qianhe/yct/fragment/BluetoothFragment$3;
.super Ljava/lang/Object;
.source "BluetoothFragment.java"

# interfaces
.implements Lcom/qianhe/yct/adapter/DeviceListAdapter$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/BluetoothFragment;->initSearchRcv(Lcom/qianhe/baselib/enums/DeviceType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/BluetoothFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/BluetoothFragment;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/qianhe/yct/fragment/BluetoothFragment$3;->this$0:Lcom/qianhe/yct/fragment/BluetoothFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;Lcom/qianhe/yct/enums/BluetoothActionEnum;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment$3;->this$0:Lcom/qianhe/yct/fragment/BluetoothFragment;

    invoke-static {v0, p1, p2}, Lcom/qianhe/yct/fragment/BluetoothFragment;->-$$Nest$monDeviceAction(Lcom/qianhe/yct/fragment/BluetoothFragment;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;Lcom/qianhe/yct/enums/BluetoothActionEnum;)V

    return-void
.end method
