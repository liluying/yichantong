.class Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$9;
.super Ljava/lang/Object;
.source "FmwForcedUpgradeDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->startStateTimer(Lcom/qianhe/baselib/enums/DeviceType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

.field final synthetic val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 489
    iput-object p1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$9;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    iput-object p2, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$9;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 492
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$9;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "UPGRADE,STATE"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
