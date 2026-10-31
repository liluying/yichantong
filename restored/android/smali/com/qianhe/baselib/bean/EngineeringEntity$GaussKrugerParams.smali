.class public Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;
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
    name = "GaussKrugerParams"
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

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 57
    iput v0, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->type:I

    const-wide/16 v0, 0x0

    .line 58
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->lon0:D

    .line 60
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->lat0:D

    const-wide v2, 0x411e848000000000L    # 500000.0

    .line 62
    iput-wide v2, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->fe:D

    .line 63
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->fn:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 64
    iput-wide v2, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->k0:D

    .line 65
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->projectionHeight:D

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->deformationMethod:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GaussKrugerParams{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lon0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->lon0:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", lat0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->lat0:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", fe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->fe:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", fn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->fn:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", k0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->k0:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", projectionHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->projectionHeight:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", deformationMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->deformationMethod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
