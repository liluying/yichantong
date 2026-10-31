.class public Lcom/qh/libexcavator/CalibrationMode3;
.super Ljava/lang/Object;
.source "CalibrationMode3.java"

# interfaces
.implements Lcom/qh/libexcavator/Calibration;


# instance fields
.field public AD:D

.field public Ax:D

.field public Ay:D

.field public BC:D

.field public BD:D

.field public CD:D

.field public Dx:D

.field public HA:D

.field public Hy:D

.field public deviceHeading:D

.field public devicePitch:D

.field public deviceRoll:D

.field public toolAB:D

.field public toolTeeth:[[D


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 42
    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/qh/libexcavator/CalibrationMode3;->toolTeeth:[[D

    return-void
.end method


# virtual methods
.method public apply(Lcom/qh/libexcavator/Excavator;)I
    .locals 10

    .line 52
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode3Cali;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode3Cali;-><init>()V

    .line 53
    iget-object v1, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode3Cali;->world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v2, p0, Lcom/qh/libexcavator/CalibrationMode3;->deviceRoll:D

    iget-wide v4, p0, Lcom/qh/libexcavator/CalibrationMode3;->devicePitch:D

    iget-wide v6, p0, Lcom/qh/libexcavator/CalibrationMode3;->deviceHeading:D

    invoke-static/range {v1 .. v7}, Lcom/qh/libexcavator/GeoQuaternion;->fillPointFromAngleZyx(Lcom/qh/libexcavator/nativelib/LibExcavator$Point;DDD)V

    .line 54
    iget-wide v1, p0, Lcom/qh/libexcavator/CalibrationMode3;->HA:D

    iput-wide v1, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode3Cali;->HA:D

    .line 55
    iget-wide v1, p0, Lcom/qh/libexcavator/CalibrationMode3;->Hy:D

    iput-wide v1, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode3Cali;->Hy:D

    .line 56
    iget-wide v1, p0, Lcom/qh/libexcavator/CalibrationMode3;->Ay:D

    iput-wide v1, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode3Cali;->Ay:D

    .line 57
    iget-wide v1, p0, Lcom/qh/libexcavator/CalibrationMode3;->Ax:D

    iput-wide v1, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode3Cali;->Ax:D

    .line 58
    iget-wide v1, p0, Lcom/qh/libexcavator/CalibrationMode3;->Dx:D

    iput-wide v1, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode3Cali;->Dx:D

    .line 59
    iget-wide v1, p0, Lcom/qh/libexcavator/CalibrationMode3;->AD:D

    iput-wide v1, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode3Cali;->AD:D

    .line 60
    iget-wide v1, p0, Lcom/qh/libexcavator/CalibrationMode3;->BD:D

    iput-wide v1, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode3Cali;->BD:D

    .line 61
    iget-wide v1, p0, Lcom/qh/libexcavator/CalibrationMode3;->CD:D

    iput-wide v1, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode3Cali;->CD:D

    .line 62
    iget-wide v1, p0, Lcom/qh/libexcavator/CalibrationMode3;->BC:D

    iput-wide v1, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode3Cali;->BC:D

    .line 63
    iget-object v1, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode3Cali;->tool:Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    iget-wide v2, p0, Lcom/qh/libexcavator/CalibrationMode3;->toolAB:D

    iput-wide v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->AB:D

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 65
    :goto_0
    iget-object v4, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode3Cali;->tool:Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    iget-object v4, v4, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->TT:[Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 66
    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/qh/libexcavator/CalibrationMode3;->toolTeeth:[[D

    aget-object v5, v5, v3

    aget-wide v6, v5, v2

    iput-wide v6, v4, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    const/4 v6, 0x1

    .line 67
    aget-wide v7, v5, v6

    iput-wide v7, v4, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    const/4 v7, 0x2

    .line 68
    aget-wide v8, v5, v7

    iput-wide v8, v4, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    .line 69
    const-string v4, " TT["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]=("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qh/libexcavator/CalibrationMode3;->toolTeeth:[[D

    aget-object v4, v4, v3

    aget-wide v8, v4, v2

    .line 70
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qh/libexcavator/CalibrationMode3;->toolTeeth:[[D

    aget-object v5, v5, v3

    aget-wide v8, v5, v6

    .line 71
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qh/libexcavator/CalibrationMode3;->toolTeeth:[[D

    aget-object v4, v4, v3

    aget-wide v5, v4, v7

    .line 72
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6a21\u5f0f3\u6807\u5b9a\u53c2\u6570\uff1aCalibrationMode3.apply deviceRoll="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/qh/libexcavator/CalibrationMode3;->deviceRoll:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " devicePitch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/qh/libexcavator/CalibrationMode3;->devicePitch:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " deviceHeading="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/qh/libexcavator/CalibrationMode3;->deviceHeading:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " world_from_device(qx,qy,qz)=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode3Cali;->world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v3, v3, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode3Cali;->world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v4, v4, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode3Cali;->world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v3, v3, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ") HA="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/qh/libexcavator/CalibrationMode3;->HA:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " Hy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/qh/libexcavator/CalibrationMode3;->Hy:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " Ay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/qh/libexcavator/CalibrationMode3;->Ay:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " Ax="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/qh/libexcavator/CalibrationMode3;->Ax:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " Dx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/qh/libexcavator/CalibrationMode3;->Dx:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " AD="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/qh/libexcavator/CalibrationMode3;->AD:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " BD="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/qh/libexcavator/CalibrationMode3;->BD:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " CD="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/qh/libexcavator/CalibrationMode3;->CD:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " BC="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/qh/libexcavator/CalibrationMode3;->BC:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " toolAB="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/qh/libexcavator/CalibrationMode3;->toolAB:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lcom/qh/libexcavator/Excavator;->raw()Lcom/qh/libexcavator/nativelib/LibExcavator;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qh/libexcavator/Excavator;->handle()Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lcom/qh/libexcavator/nativelib/LibExcavator;->libexcavator_cali_mode_3_0(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;Lcom/qh/libexcavator/nativelib/LibExcavator$Mode3Cali;)I

    move-result p1

    return p1
.end method
