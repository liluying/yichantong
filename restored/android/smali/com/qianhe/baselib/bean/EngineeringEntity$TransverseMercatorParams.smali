.class public Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;
.super Ljava/lang/Object;
.source "EngineeringEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/baselib/bean/EngineeringEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransverseMercatorParams"
.end annotation


# instance fields
.field public deformationMethod:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deformation_method"
    .end annotation
.end field

.field public fe:D

.field public fn:D

.field public k0:D

.field public lat0:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "lat_0"
        }
        value = "lat0"
    .end annotation
.end field

.field public lon0:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "lon_0"
        }
        value = "lon0"
    .end annotation
.end field

.field public projectionHeight:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "projection_height"
    .end annotation
.end field

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 95
    iput v0, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->type:I

    const-wide/16 v0, 0x0

    .line 96
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->lon0:D

    .line 98
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->lat0:D

    const-wide v2, 0x411e848000000000L    # 500000.0

    .line 100
    iput-wide v2, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->fe:D

    .line 101
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->fn:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 102
    iput-wide v2, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->k0:D

    .line 103
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->projectionHeight:D

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->deformationMethod:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransverseMercatorParams{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lon0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->lon0:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", lat0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->lat0:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", fe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->fe:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", fn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->fn:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", k0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->k0:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", projectionHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->projectionHeight:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", deformationMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->deformationMethod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
