.class public Lorg/locationtech/proj4j/ProjectionException;
.super Lorg/locationtech/proj4j/Proj4jException;
.source "ProjectionException.java"


# static fields
.field public static ERR_17:Ljava/lang/String; = "non-convergent inverse meridinal dist"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/locationtech/proj4j/Proj4jException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lorg/locationtech/proj4j/Proj4jException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/locationtech/proj4j/proj/Projection;Ljava/lang/String;)V
    .locals 1

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/locationtech/proj4j/proj/Projection;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    return-void
.end method
