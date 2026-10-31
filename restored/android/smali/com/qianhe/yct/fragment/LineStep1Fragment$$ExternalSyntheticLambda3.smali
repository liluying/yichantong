.class public final synthetic Lcom/qianhe/yct/fragment/LineStep1Fragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/fragment/LineStep1Fragment;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/fragment/LineStep1Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/fragment/LineStep1Fragment$$ExternalSyntheticLambda3;->f$0:Lcom/qianhe/yct/fragment/LineStep1Fragment;

    return-void
.end method


# virtual methods
.method public synthetic onFileLoadFailed()V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback$-CC;->$default$onFileLoadFailed(Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;)V

    return-void
.end method

.method public synthetic onPickCancelled()V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback$-CC;->$default$onPickCancelled(Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;)V

    return-void
.end method

.method public final onPickResult(Ljava/lang/String;[D)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep1Fragment$$ExternalSyntheticLambda3;->f$0:Lcom/qianhe/yct/fragment/LineStep1Fragment;

    invoke-static {v0, p1, p2}, Lcom/qianhe/yct/fragment/LineStep1Fragment;->$r8$lambda$gtSLCCGHmSA4lelfLAAVGEzgVtA(Lcom/qianhe/yct/fragment/LineStep1Fragment;Ljava/lang/String;[D)V

    return-void
.end method
