.class Lcom/qianhe/yct/activity/RTKInfoActivity$9$1;
.super Ljava/lang/Object;
.source "RTKInfoActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/RTKInfoActivity$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/RTKInfoActivity$9;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/RTKInfoActivity$9;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$9$1;->this$1:Lcom/qianhe/yct/activity/RTKInfoActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onConfirm()V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$9$1;->this$1:Lcom/qianhe/yct/activity/RTKInfoActivity$9;

    iget-object v0, v0, Lcom/qianhe/yct/activity/RTKInfoActivity$9;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$fgetdeviceType(Lcom/qianhe/yct/activity/RTKInfoActivity;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "SET,FRESET,CONFIG"

    if-ne v0, v1, :cond_0

    .line 221
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v3, Lcom/qianhe/baselib/bean/OrderBean;

    invoke-direct {v3, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$9$1;->this$1:Lcom/qianhe/yct/activity/RTKInfoActivity$9;

    iget-object v0, v0, Lcom/qianhe/yct/activity/RTKInfoActivity$9;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$fgetdeviceType(Lcom/qianhe/yct/activity/RTKInfoActivity;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_1

    .line 223
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v3, Lcom/qianhe/baselib/bean/OrderBean;

    invoke-direct {v3, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 225
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$9$1;->this$1:Lcom/qianhe/yct/activity/RTKInfoActivity$9;

    iget-object v0, v0, Lcom/qianhe/yct/activity/RTKInfoActivity$9;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    sget v1, Lcom/qianhe/yct/R$string;->already_reset:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$9$1;->this$1:Lcom/qianhe/yct/activity/RTKInfoActivity$9;

    iget-object v2, v2, Lcom/qianhe/yct/activity/RTKInfoActivity$9;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method
