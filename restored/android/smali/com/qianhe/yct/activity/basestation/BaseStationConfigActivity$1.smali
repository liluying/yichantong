.class Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$1;
.super Ljava/lang/Object;
.source "BaseStationConfigActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$1;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 79
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$1;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    sget v0, Lcom/qianhe/yct/R$string;->please_wait:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SET,ZXVPN,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$1;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->ivVPN:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "DISABLE"

    goto :goto_0

    :cond_0
    const-string v3, "ENABLE"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",vpn.rtkiot.cn,8222,TEST,zxvpn,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "zxvpn"

    invoke-static {v3}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->stringToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
