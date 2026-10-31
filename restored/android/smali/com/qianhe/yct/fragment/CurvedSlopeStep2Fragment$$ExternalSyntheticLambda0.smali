.class public final synthetic Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$$ExternalSyntheticLambda0;->f$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;

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
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$$ExternalSyntheticLambda0;->f$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;

    invoke-static {v0, p1, p2}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->$r8$lambda$z7JW-VkqzFRrtpYMfCY_VcrYh6o(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;Ljava/lang/String;[D)V

    return-void
.end method
