.class public final synthetic Lcom/qianhe/yct/utils/LoadingDialogManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/utils/LoadingDialogManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/utils/LoadingDialogManager;ILjava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager$$ExternalSyntheticLambda2;->f$0:Lcom/qianhe/yct/utils/LoadingDialogManager;

    iput p2, p0, Lcom/qianhe/yct/utils/LoadingDialogManager$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/qianhe/yct/utils/LoadingDialogManager$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/qianhe/yct/utils/LoadingDialogManager$$ExternalSyntheticLambda2;->f$3:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/utils/LoadingDialogManager$$ExternalSyntheticLambda2;->f$0:Lcom/qianhe/yct/utils/LoadingDialogManager;

    iget v1, p0, Lcom/qianhe/yct/utils/LoadingDialogManager$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Lcom/qianhe/yct/utils/LoadingDialogManager$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/qianhe/yct/utils/LoadingDialogManager$$ExternalSyntheticLambda2;->f$3:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/utils/LoadingDialogManager;->$r8$lambda$uuTwiYdalVVyYGCZPw_8bQkgLu4(Lcom/qianhe/yct/utils/LoadingDialogManager;ILjava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    return-void
.end method
