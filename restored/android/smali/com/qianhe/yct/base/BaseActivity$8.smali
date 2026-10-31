.class Lcom/qianhe/yct/base/BaseActivity$8;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/base/BaseActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/base/BaseActivity;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$8;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 528
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$8;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$8;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$8;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/base/BaseActivity;->-$$Nest$mrestoreTopBarBatteryUi(Lcom/qianhe/yct/base/BaseActivity;)V

    .line 530
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v2, "GET,POWER.BATTERYLEVEL"

    invoke-direct {v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 531
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v2, "GET,POWER.SOURCE"

    invoke-direct {v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
