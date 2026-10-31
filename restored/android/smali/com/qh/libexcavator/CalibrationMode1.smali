.class public Lcom/qh/libexcavator/CalibrationMode1;
.super Ljava/lang/Object;
.source "CalibrationMode1.java"

# interfaces
.implements Lcom/qh/libexcavator/Calibration;


# instance fields
.field public GL:D

.field public GR:D

.field public HG:D

.field public LR:D

.field public deviceHeading:D

.field public devicePitch:D

.field public deviceRoll:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/qh/libexcavator/Excavator;)I
    .locals 8

    .line 38
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode1Cali;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode1Cali;-><init>()V

    .line 39
    iget-object v1, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode1Cali;->world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v2, p0, Lcom/qh/libexcavator/CalibrationMode1;->deviceRoll:D

    iget-wide v4, p0, Lcom/qh/libexcavator/CalibrationMode1;->devicePitch:D

    iget-wide v6, p0, Lcom/qh/libexcavator/CalibrationMode1;->deviceHeading:D

    invoke-static/range {v1 .. v7}, Lcom/qh/libexcavator/GeoQuaternion;->fillPointFromAngleZyx(Lcom/qh/libexcavator/nativelib/LibExcavator$Point;DDD)V

    .line 40
    iget-wide v1, p0, Lcom/qh/libexcavator/CalibrationMode1;->GL:D

    iput-wide v1, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode1Cali;->GL:D

    .line 41
    iget-wide v1, p0, Lcom/qh/libexcavator/CalibrationMode1;->GR:D

    iput-wide v1, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode1Cali;->GR:D

    .line 42
    iget-wide v1, p0, Lcom/qh/libexcavator/CalibrationMode1;->LR:D

    iput-wide v1, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode1Cali;->LR:D

    .line 43
    iget-wide v1, p0, Lcom/qh/libexcavator/CalibrationMode1;->HG:D

    iput-wide v1, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode1Cali;->HG:D

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6a21\u5f0f1\u6807\u5b9a\u53c2\u6570\uff1aCalibrationMode1.apply deviceRoll="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qh/libexcavator/CalibrationMode1;->deviceRoll:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " devicePitch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qh/libexcavator/CalibrationMode1;->devicePitch:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " deviceHeading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qh/libexcavator/CalibrationMode1;->deviceHeading:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " world_from_device(qx,qy,qz)=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode1Cali;->world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v2, v2, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode1Cali;->world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v3, v3, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode1Cali;->world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v2, v2, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ") GL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qh/libexcavator/CalibrationMode1;->GL:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " GR="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qh/libexcavator/CalibrationMode1;->GR:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " LR="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qh/libexcavator/CalibrationMode1;->LR:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " HG="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qh/libexcavator/CalibrationMode1;->HG:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/qh/libexcavator/Excavator;->raw()Lcom/qh/libexcavator/nativelib/LibExcavator;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qh/libexcavator/Excavator;->handle()Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lcom/qh/libexcavator/nativelib/LibExcavator;->libexcavator_cali_mode_1_0(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;Lcom/qh/libexcavator/nativelib/LibExcavator$Mode1Cali;)I

    move-result p1

    return p1
.end method
