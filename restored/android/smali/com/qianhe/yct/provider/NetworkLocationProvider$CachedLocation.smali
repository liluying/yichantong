.class Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;
.super Ljava/lang/Object;
.source "NetworkLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/provider/NetworkLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedLocation"
.end annotation


# instance fields
.field final accuracy:F

.field final altitude:D

.field final latitude:D

.field final longitude:D

.field final provider:Ljava/lang/String;


# direct methods
.method constructor <init>(DDDFLjava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-wide p1, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;->latitude:D

    .line 70
    iput-wide p3, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;->longitude:D

    .line 71
    iput-wide p5, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;->altitude:D

    .line 72
    iput p7, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;->accuracy:F

    .line 73
    iput-object p8, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;->provider:Ljava/lang/String;

    return-void
.end method
