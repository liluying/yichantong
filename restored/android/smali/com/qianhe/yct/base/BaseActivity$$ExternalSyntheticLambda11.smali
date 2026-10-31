.class public final synthetic Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/qianhe/yct/dialog/CollectingDialogFragment$OnCloseListener;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/base/BaseActivity;

.field public final synthetic f$1:Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/base/BaseActivity;Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticLambda11;->f$0:Lcom/qianhe/yct/base/BaseActivity;

    iput-object p2, p0, Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticLambda11;->f$1:Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;

    return-void
.end method


# virtual methods
.method public final onClose(I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticLambda11;->f$0:Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticLambda11;->f$1:Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;

    invoke-static {v0, v1, p1}, Lcom/qianhe/yct/base/BaseActivity;->$r8$lambda$24tKbNO6WeO0_99RGcQATOuRo6A(Lcom/qianhe/yct/base/BaseActivity;Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;I)V

    return-void
.end method
