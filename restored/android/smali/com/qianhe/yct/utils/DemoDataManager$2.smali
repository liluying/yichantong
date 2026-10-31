.class Lcom/qianhe/yct/utils/DemoDataManager$2;
.super Ljava/lang/Object;
.source "DemoDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/DemoDataManager;->setH5Type(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/DemoDataManager;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/DemoDataManager;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 292
    iput-object p1, p0, Lcom/qianhe/yct/utils/DemoDataManager$2;->this$0:Lcom/qianhe/yct/utils/DemoDataManager;

    iput p2, p0, Lcom/qianhe/yct/utils/DemoDataManager$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 295
    iget v0, p0, Lcom/qianhe/yct/utils/DemoDataManager$2;->val$type:I

    if-nez v0, :cond_0

    .line 296
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "#GET,FEATURES,BLUETOOTH|INS|MOBILE|PPP|SCHEME|SOCKET|TA|UPGRADE|ZXVPN*1"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 298
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "#GET,FEATURES,BLUETOOTH|INS|MOBILE|PPP|SCHEME|SOCKET|TA|UPGRADE|ZXVPN|EXCAVATOR2*1"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
