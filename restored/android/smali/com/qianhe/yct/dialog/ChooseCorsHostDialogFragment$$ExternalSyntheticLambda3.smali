.class public final synthetic Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment$OnConfirmListener;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;

.field public final synthetic f$1:Lcom/qianhe/baselib/bean/CorsEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;Lcom/qianhe/baselib/bean/CorsEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$$ExternalSyntheticLambda3;->f$0:Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;

    iput-object p2, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$$ExternalSyntheticLambda3;->f$1:Lcom/qianhe/baselib/bean/CorsEntity;

    return-void
.end method


# virtual methods
.method public final onConfirm(Ljava/lang/String;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$$ExternalSyntheticLambda3;->f$0:Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$$ExternalSyntheticLambda3;->f$1:Lcom/qianhe/baselib/bean/CorsEntity;

    invoke-static {v0, v1, p1}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->$r8$lambda$tMW_8vowsaWCS180-drsjkNdqWA(Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;Lcom/qianhe/baselib/bean/CorsEntity;Ljava/lang/String;)V

    return-void
.end method
