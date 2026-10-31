.class public Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;
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
    name = "UTMParams"
.end annotation


# instance fields
.field public deformationMethod:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deformation_method"
    .end annotation
.end field

.field public isNorth:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_north"
    .end annotation
.end field

.field public projectionHeight:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "projection_height"
    .end annotation
.end field

.field public type:I

.field public zone:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 78
    iput v0, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->type:I

    const/4 v0, 0x1

    .line 79
    iput v0, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->zone:I

    .line 80
    iput-boolean v0, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->isNorth:Z

    const-wide/16 v0, 0x0

    .line 82
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->projectionHeight:D

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->deformationMethod:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UTMParams{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", zone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->zone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isNorth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->isNorth:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", projectionHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->projectionHeight:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", deformationMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->deformationMethod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
