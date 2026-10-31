.class public final synthetic Lcom/qianhe/yct/base/BaseProjectFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/base/BaseProjectFragment;

.field public final synthetic f$1:Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/base/BaseProjectFragment;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/base/BaseProjectFragment$$ExternalSyntheticLambda5;->f$0:Lcom/qianhe/yct/base/BaseProjectFragment;

    iput-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment$$ExternalSyntheticLambda5;->f$1:Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseProjectFragment$$ExternalSyntheticLambda5;->f$0:Lcom/qianhe/yct/base/BaseProjectFragment;

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseProjectFragment$$ExternalSyntheticLambda5;->f$1:Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    invoke-static {v0, v1, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->$r8$lambda$5nqtzyHpnYQlYfw_aBP4mB0u5Nw(Lcom/qianhe/yct/base/BaseProjectFragment;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;)V

    return-void
.end method
