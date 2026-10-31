.class public final synthetic Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda3;->f$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iput p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final isCancelled()Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda3;->f$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda3;->f$1:I

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->$r8$lambda$QzvP_TBpwjevMZww64zY0dimp5M(Lcom/qianhe/yct/utils/NetworkUserLoader;I)Z

    move-result v0

    return v0
.end method
