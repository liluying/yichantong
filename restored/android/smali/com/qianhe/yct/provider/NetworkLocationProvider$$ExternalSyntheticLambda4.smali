.class public final synthetic Lcom/qianhe/yct/provider/NetworkLocationProvider$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;

.field public final synthetic f$1:Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider$$ExternalSyntheticLambda4;->f$0:Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;

    iput-object p2, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider$$ExternalSyntheticLambda4;->f$1:Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider$$ExternalSyntheticLambda4;->f$0:Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;

    iget-object v1, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider$$ExternalSyntheticLambda4;->f$1:Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;

    invoke-static {v0, v1}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->$r8$lambda$mr6CSKQOjA3dercB1iWYx5tn288(Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;)V

    return-void
.end method
