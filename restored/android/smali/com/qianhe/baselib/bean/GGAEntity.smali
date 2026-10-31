.class public Lcom/qianhe/baselib/bean/GGAEntity;
.super Ljava/lang/Object;
.source "GGAEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public age:F

.field public deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field public elevation:D

.field public geodeticHeight:D

.field public ggaStr:Ljava/lang/String;

.field public hdop:D

.field public latitude:D

.field public longitude:D

.field public quality:I

.field public useStarNum:I

.field public utc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/baselib/bean/GGAEntity;->ggaStr:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/GGAEntity;->latitude:D

    .line 37
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/GGAEntity;->longitude:D

    .line 38
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/GGAEntity;->elevation:D

    const/4 v2, -0x1

    .line 50
    iput v2, p0, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    .line 51
    iput v2, p0, Lcom/qianhe/baselib/bean/GGAEntity;->useStarNum:I

    .line 52
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/GGAEntity;->hdop:D

    .line 53
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/GGAEntity;->geodeticHeight:D

    const/high16 v0, -0x40800000    # -1.0f

    .line 54
    iput v0, p0, Lcom/qianhe/baselib/bean/GGAEntity;->age:F

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GGAEntity{ggaStr=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/baselib/bean/GGAEntity;->ggaStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", utc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/baselib/bean/GGAEntity;->utc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GGAEntity;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GGAEntity;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", elevation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GGAEntity;->elevation:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", quality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", useStarNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/baselib/bean/GGAEntity;->useStarNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hdop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GGAEntity;->hdop:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", geodeticHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GGAEntity;->geodeticHeight:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/baselib/bean/GGAEntity;->age:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
