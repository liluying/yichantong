.class public final synthetic Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/io/File;ILjava/util/List;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda1;->f$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda1;->f$1:Ljava/io/File;

    iput p3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    iput-object p5, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda1;->f$4:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda1;->f$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda1;->f$1:Ljava/io/File;

    iget v2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    iget-object v4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda1;->f$4:Ljava/io/File;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/qianhe/yct/utils/NetworkUserLoader;->$r8$lambda$CGpW4wyB45-iCyBqyGCZtMGnWqY(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/io/File;ILjava/util/List;Ljava/io/File;)V

    return-void
.end method
