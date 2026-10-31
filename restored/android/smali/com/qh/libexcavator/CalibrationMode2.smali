.class public Lcom/qh/libexcavator/CalibrationMode2;
.super Ljava/lang/Object;
.source "CalibrationMode2.java"

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

.field public sensorHeading:D

.field public sensorPitch:D

.field public sensorRoll:D

.field public toolAB:D

.field public toolTeeth:[[D


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 50
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

    iput-object v0, p0, Lcom/qh/libexcavator/CalibrationMode2;->toolTeeth:[[D

    return-void
.end method


# virtual methods
.method public apply(Lcom/qh/libexcavator/Excavator;)I
    .locals 16

    move-object/from16 v0, p0

    .line 60
    new-instance v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode2Cali;

    invoke-direct {v1}, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode2Cali;-><init>()V

    .line 61
    iget-object v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode2Cali;->world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v3, v0, Lcom/qh/libexcavator/CalibrationMode2;->deviceRoll:D

    iget-wide v5, v0, Lcom/qh/libexcavator/CalibrationMode2;->devicePitch:D

    iget-wide v7, v0, Lcom/qh/libexcavator/CalibrationMode2;->deviceHeading:D

    invoke-static/range {v2 .. v8}, Lcom/qh/libexcavator/GeoQuaternion;->fillPointFromAngleZyx(Lcom/qh/libexcavator/nativelib/LibExcavator$Point;DDD)V

    .line 62
    iget-object v9, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode2Cali;->world_from_sensor:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v10, v0, Lcom/qh/libexcavator/CalibrationMode2;->sensorRoll:D

    iget-wide v12, v0, Lcom/qh/libexcavator/CalibrationMode2;->sensorPitch:D

    iget-wide v14, v0, Lcom/qh/libexcavator/CalibrationMode2;->sensorHeading:D

    invoke-static/range {v9 .. v15}, Lcom/qh/libexcavator/GeoQuaternion;->fillPointFromAngleZyx(Lcom/qh/libexcavator/nativelib/LibExcavator$Point;DDD)V

    .line 63
    iget-wide v2, v0, Lcom/qh/libexcavator/CalibrationMode2;->HA:D

    iput-wide v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode2Cali;->HA:D

    .line 64
    iget-wide v2, v0, Lcom/qh/libexcavator/CalibrationMode2;->Hy:D

    iput-wide v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode2Cali;->Hy:D

    .line 65
    iget-wide v2, v0, Lcom/qh/libexcavator/CalibrationMode2;->Ay:D

    iput-wide v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode2Cali;->Ay:D

    .line 66
    iget-wide v2, v0, Lcom/qh/libexcavator/CalibrationMode2;->Ax:D

    iput-wide v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode2Cali;->Ax:D

    .line 67
    iget-wide v2, v0, Lcom/qh/libexcavator/CalibrationMode2;->Dx:D

    iput-wide v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode2Cali;->Dx:D

    .line 68
    iget-wide v2, v0, Lcom/qh/libexcavator/CalibrationMode2;->AD:D

    iput-wide v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode2Cali;->AD:D

    .line 69
    iget-wide v2, v0, Lcom/qh/libexcavator/CalibrationMode2;->BD:D

    iput-wide v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode2Cali;->BD:D

    .line 70
    iget-wide v2, v0, Lcom/qh/libexcavator/CalibrationMode2;->CD:D

    iput-wide v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode2Cali;->CD:D

    .line 71
    iget-wide v2, v0, Lcom/qh/libexcavator/CalibrationMode2;->BC:D

    iput-wide v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode2Cali;->BC:D

    .line 72
    iget-object v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode2Cali;->tool:Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    iget-wide v3, v0, Lcom/qh/libexcavator/CalibrationMode2;->toolAB:D

    iput-wide v3, v2, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->AB:D

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 74
    :goto_0
    iget-object v5, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode2Cali;->tool:Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    iget-object v5, v5, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->TT:[Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    array-length v6, v5

    if-ge v4, v6, :cond_0

    .line 75
    aget-object v5, v5, v4

    iget-object v6, v0, Lcom/qh/libexcavator/CalibrationMode2;->toolTeeth:[[D

    aget-object v6, v6, v4

    aget-wide v7, v6, v3

    iput-wide v7, v5, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    const/4 v7, 0x1

    .line 76
    aget-wide v8, v6, v7

    iput-wide v8, v5, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    const/4 v8, 0x2

    .line 77
    aget-wide v9, v6, v8

    iput-wide v9, v5, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    .line 78
    const-string v5, " TT["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]=("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/qh/libexcavator/CalibrationMode2;->toolTeeth:[[D

    aget-object v5, v5, v4

    aget-wide v9, v5, v3

    .line 79
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/qh/libexcavator/CalibrationMode2;->toolTeeth:[[D

    aget-object v6, v6, v4

    aget-wide v9, v6, v7

    .line 80
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/qh/libexcavator/CalibrationMode2;->toolTeeth:[[D

    aget-object v5, v5, v4

    aget-wide v6, v5, v8

    .line 81
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u6a21\u5f0f2\u6807\u5b9a\u53c2\u6570\uff1aCalibrationMode2.apply deviceRoll="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/qh/libexcavator/CalibrationMode2;->deviceRoll:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " devicePitch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/qh/libexcavator/CalibrationMode2;->devicePitch:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " deviceHeading="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/qh/libexcavator/CalibrationMode2;->deviceHeading:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " world_from_device(qx,qy,qz)=("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode2Cali;->world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v4, v4, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode2Cali;->world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v5, v5, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode2Cali;->world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v5, v5, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ") sensorRoll="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/qh/libexcavator/CalibrationMode2;->sensorRoll:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, " sensorPitch="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/qh/libexcavator/CalibrationMode2;->sensorPitch:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, " sensorHeading="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/qh/libexcavator/CalibrationMode2;->sensorHeading:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, " world_from_sensor(qx,qy,qz)=("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode2Cali;->world_from_sensor:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v5, v5, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode2Cali;->world_from_sensor:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v5, v5, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode2Cali;->world_from_sensor:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v4, v4, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ") HA="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/qh/libexcavator/CalibrationMode2;->HA:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " Hy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/qh/libexcavator/CalibrationMode2;->Hy:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " Ay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/qh/libexcavator/CalibrationMode2;->Ay:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " Ax="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/qh/libexcavator/CalibrationMode2;->Ax:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " Dx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/qh/libexcavator/CalibrationMode2;->Dx:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " AD="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/qh/libexcavator/CalibrationMode2;->AD:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " BD="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/qh/libexcavator/CalibrationMode2;->BD:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " CD="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/qh/libexcavator/CalibrationMode2;->CD:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " BC="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/qh/libexcavator/CalibrationMode2;->BC:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " toolAB="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/qh/libexcavator/CalibrationMode2;->toolAB:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/qh/libexcavator/Excavator;->raw()Lcom/qh/libexcavator/nativelib/LibExcavator;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/qh/libexcavator/Excavator;->handle()Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/qh/libexcavator/nativelib/LibExcavator;->libexcavator_cali_mode_2_0(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;Lcom/qh/libexcavator/nativelib/LibExcavator$Mode2Cali;)I

    move-result v1

    return v1
.end method
