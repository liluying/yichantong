.class public final synthetic Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/MainActivity;

.field public final synthetic f$1:Lcom/qianhe/yct/event/QueryPointGroupResponse;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/MainActivity;Lcom/qianhe/yct/event/QueryPointGroupResponse;Ljava/util/List;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda13;->f$0:Lcom/qianhe/yct/MainActivity;

    iput-object p2, p0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda13;->f$1:Lcom/qianhe/yct/event/QueryPointGroupResponse;

    iput-object p3, p0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda13;->f$2:Ljava/util/List;

    iput-boolean p4, p0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda13;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda13;->f$0:Lcom/qianhe/yct/MainActivity;

    iget-object v1, p0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda13;->f$1:Lcom/qianhe/yct/event/QueryPointGroupResponse;

    iget-object v2, p0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda13;->f$2:Ljava/util/List;

    iget-boolean v3, p0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda13;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/MainActivity;->$r8$lambda$bNsGDwHIkTNfHIuz_NR4JTyWLSY(Lcom/qianhe/yct/MainActivity;Lcom/qianhe/yct/event/QueryPointGroupResponse;Ljava/util/List;Z)V

    return-void
.end method
