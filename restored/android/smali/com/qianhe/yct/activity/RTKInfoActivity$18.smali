.class Lcom/qianhe/yct/activity/RTKInfoActivity$18;
.super Ljava/lang/Object;
.source "RTKInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/RTKInfoActivity;->initTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$18;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 548
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$18;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 550
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$18;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$fgethasRtkInfo(Lcom/qianhe/yct/activity/RTKInfoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$18;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$fgetdeviceType(Lcom/qianhe/yct/activity/RTKInfoActivity;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v2

    const-string v3, "GET,VERSION"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$18;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$fgethasExpiredate(Lcom/qianhe/yct/activity/RTKInfoActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$18;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$fgetdeviceType(Lcom/qianhe/yct/activity/RTKInfoActivity;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v2

    const-string v3, "GET,EXPIREDATE"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$18;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$fgethasRtkInfo(Lcom/qianhe/yct/activity/RTKInfoActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$18;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$fgethasExpiredate(Lcom/qianhe/yct/activity/RTKInfoActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$18;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$mstopTimer(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    :cond_2
    return-void
.end method
