.class public final synthetic Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/base/BaseActivity;

.field public final synthetic f$1:Lcom/qianhe/baselib/enums/DeviceType;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/base/BaseActivity;Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticLambda6;->f$0:Lcom/qianhe/yct/base/BaseActivity;

    iput-object p2, p0, Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticLambda6;->f$1:Lcom/qianhe/baselib/enums/DeviceType;

    return-void
.end method


# virtual methods
.method public final onClose(I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticLambda6;->f$0:Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticLambda6;->f$1:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-static {v0, v1, p1}, Lcom/qianhe/yct/base/BaseActivity;->$r8$lambda$1tdYl4MCXYNn5PYE6l8tWC1j7gU(Lcom/qianhe/yct/base/BaseActivity;Lcom/qianhe/baselib/enums/DeviceType;I)V

    return-void
.end method
