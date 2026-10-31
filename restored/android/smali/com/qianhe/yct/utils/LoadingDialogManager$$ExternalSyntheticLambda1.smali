.class public final synthetic Lcom/qianhe/yct/utils/LoadingDialogManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/utils/LoadingDialogManager;

.field public final synthetic f$1:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/utils/LoadingDialogManager;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager$$ExternalSyntheticLambda1;->f$0:Lcom/qianhe/yct/utils/LoadingDialogManager;

    iput-object p2, p0, Lcom/qianhe/yct/utils/LoadingDialogManager$$ExternalSyntheticLambda1;->f$1:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    return-void
.end method


# virtual methods
.method public final onClose(I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager$$ExternalSyntheticLambda1;->f$0:Lcom/qianhe/yct/utils/LoadingDialogManager;

    iget-object v1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager$$ExternalSyntheticLambda1;->f$1:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    invoke-static {v0, v1, p1}, Lcom/qianhe/yct/utils/LoadingDialogManager;->$r8$lambda$va7FerQFB4g8v8QCmgb-lsBBu-0(Lcom/qianhe/yct/utils/LoadingDialogManager;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;I)V

    return-void
.end method
