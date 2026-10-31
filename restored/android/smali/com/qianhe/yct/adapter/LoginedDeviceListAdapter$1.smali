.class Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$1;
.super Ljava/lang/Object;
.source "LoginedDeviceListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;

.field final synthetic val$device:Lcom/qianhe/yct/bean/LoginedDevice;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;Lcom/qianhe/yct/bean/LoginedDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$1;->val$device:Lcom/qianhe/yct/bean/LoginedDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 61
    iget-object p1, p0, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;)Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$OnActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;)Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$OnActionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$1;->val$device:Lcom/qianhe/yct/bean/LoginedDevice;

    invoke-interface {p1, v0}, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$OnActionListener;->onDel(Lcom/qianhe/yct/bean/LoginedDevice;)V

    :cond_0
    return-void
.end method
