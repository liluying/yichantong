.class Lcom/qianhe/yct/activity/DiffDataConfigActivity$26;
.super Ljava/lang/Object;
.source "DiffDataConfigActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/DiffDataConfigActivity;->sendRadioConfig(Lcom/qianhe/baselib/enums/DeviceType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

.field final synthetic val$order2:Ljava/lang/String;

.field final synthetic val$target:Lcom/qianhe/baselib/enums/DeviceType;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1166
    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$26;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    iput-object p2, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$26;->val$target:Lcom/qianhe/baselib/enums/DeviceType;

    iput-object p3, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$26;->val$order2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1169
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$26;->val$target:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v3, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$26;->val$order2:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
