.class public final synthetic Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/qianhe/baselib/utils/ZipUtil$ZipProgressListener;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/utils/NetworkUserLoader;ILcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda2;->f$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iput p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda2;->f$2:Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;

    return-void
.end method


# virtual methods
.method public final onProgress(I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda2;->f$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda2;->f$2:Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;

    invoke-static {v0, v1, v2, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->$r8$lambda$UDZIqMuBrcC8HcGMFhervU_Fcjk(Lcom/qianhe/yct/utils/NetworkUserLoader;ILcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;I)V

    return-void
.end method
