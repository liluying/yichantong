.class public Lcom/qh/libexcavator/CalibrationMode2_1;
.super Ljava/lang/Object;
.source "CalibrationMode2_1.java"

# interfaces
.implements Lcom/qh/libexcavator/Calibration;


# instance fields
.field public AD:D

.field public ADeviceHeading:D

.field public ADevicePitch:D

.field public ADeviceRoll:D

.field public BC:D

.field public BDeviceHeading:D

.field public BDevicePitch:D

.field public BDeviceRoll:D

.field public BSensorHeading:D

.field public BSensorPitch:D

.field public BSensorRoll:D

.field public CD:D

.field public Dx:D

.field public HA:D

.field public Hy:D

.field public REDeviceAttitudes:[[D

.field public RESensorAttitudes:[[D

.field public dcDeviceHeading:D

.field public dcDevicePitch:D

.field public dcDeviceRoll:D

.field public dcSensorHeading:D

.field public dcSensorPitch:D

.field public dcSensorRoll:D

.field public phaseToHang:D

.field public toolAB:D

.field public toolTeeth:[[D


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 40
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

    iput-object v0, p0, Lcom/qh/libexcavator/CalibrationMode2_1;->toolTeeth:[[D

    return-void
.end method


# virtual methods
.method public apply(Lcom/qh/libexcavator/Excavator;)I
    .locals 28

    move-object/from16 v0, p0

    .line 95
    iget-object v1, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->REDeviceAttitudes:[[D

    if-eqz v1, :cond_3

    array-length v1, v1

    if-eqz v1, :cond_3

    .line 99
    new-instance v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;

    invoke-direct {v1}, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;-><init>()V

    .line 100
    iget-wide v2, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->phaseToHang:D

    iput-wide v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->phase_to_hang:D

    .line 101
    iget-wide v2, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->HA:D

    iput-wide v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->HA:D

    .line 102
    iget-wide v2, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->Hy:D

    iput-wide v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->Hy:D

    .line 103
    iget-wide v2, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->Dx:D

    iput-wide v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->Dx:D

    .line 104
    iget-wide v2, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->AD:D

    iput-wide v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->AD:D

    .line 105
    iget-wide v2, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->CD:D

    iput-wide v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->CD:D

    .line 106
    iget-wide v2, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->BC:D

    iput-wide v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->BC:D

    .line 107
    iget-object v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->tool:Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    iget-wide v3, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->toolAB:D

    iput-wide v3, v2, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->AB:D

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 110
    :goto_0
    iget-object v5, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->tool:Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    iget-object v5, v5, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->TT:[Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    array-length v6, v5

    const/16 v7, 0x29

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/16 v10, 0x2c

    if-ge v4, v6, :cond_0

    .line 111
    aget-object v5, v5, v4

    iget-object v6, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->toolTeeth:[[D

    aget-object v6, v6, v4

    aget-wide v11, v6, v3

    iput-wide v11, v5, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    .line 112
    aget-wide v11, v6, v9

    iput-wide v11, v5, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    .line 113
    aget-wide v11, v6, v8

    iput-wide v11, v5, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    .line 114
    const-string v5, " TT["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]=("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->toolTeeth:[[D

    aget-object v5, v5, v4

    aget-wide v11, v5, v3

    .line 115
    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->toolTeeth:[[D

    aget-object v5, v5, v4

    aget-wide v11, v5, v9

    .line 116
    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->toolTeeth:[[D

    aget-object v5, v5, v4

    aget-wide v8, v5, v8

    .line 117
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 120
    :cond_0
    iget-object v4, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->REDeviceAttitudes:[[D

    array-length v4, v4

    invoke-static {v4}, Lcom/qh/libexcavator/Excavator;->points(I)[Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    move-result-object v4

    .line 121
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    .line 123
    :goto_1
    iget-object v12, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->REDeviceAttitudes:[[D

    array-length v13, v12

    const-string v14, ") qxqyqz=("

    if-ge v11, v13, :cond_2

    .line 124
    aget-object v15, v4, v11

    aget-object v12, v12, v11

    aget-wide v16, v12, v3

    aget-wide v18, v12, v9

    aget-wide v20, v12, v8

    invoke-static/range {v15 .. v21}, Lcom/qh/libexcavator/GeoQuaternion;->fillPointFromAngleZyx(Lcom/qh/libexcavator/nativelib/LibExcavator$Point;DDD)V

    .line 126
    aget-object v12, v4, v11

    invoke-virtual {v12}, Lcom/sun/jna/Structure;->write()V

    .line 127
    const-string v12, " RE_device["

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "] rpy=("

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->REDeviceAttitudes:[[D

    aget-object v13, v13, v11

    move-object/from16 v16, v4

    const/4 v15, 0x0

    aget-wide v3, v13, v15

    .line 128
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->REDeviceAttitudes:[[D

    aget-object v3, v3, v11

    const/4 v4, 0x1

    const/4 v13, 0x2

    aget-wide v8, v3, v4

    .line 129
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->REDeviceAttitudes:[[D

    aget-object v3, v3, v11

    aget-wide v8, v3, v13

    .line 130
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v16, v11

    iget-wide v8, v3, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    .line 131
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v3, v16, v11

    iget-wide v8, v3, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    .line 132
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v3, v16, v11

    iget-wide v8, v3, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    .line 133
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    iget-object v3, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->RESensorAttitudes:[[D

    if-eqz v3, :cond_1

    array-length v8, v3

    if-ge v11, v8, :cond_1

    aget-object v3, v3, v11

    if-eqz v3, :cond_1

    .line 135
    const-string v3, " RE_sensor["

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->RESensorAttitudes:[[D

    aget-object v3, v3, v11

    aget-wide v8, v3, v15

    .line 136
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->RESensorAttitudes:[[D

    aget-object v3, v3, v11

    aget-wide v8, v3, v4

    .line 137
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->RESensorAttitudes:[[D

    aget-object v3, v3, v11

    aget-wide v8, v3, v13

    .line 138
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v16

    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_2
    move-object/from16 v16, v4

    const/4 v15, 0x0

    .line 141
    aget-object v3, v16, v15

    invoke-virtual {v3}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v3

    iput-object v3, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->RE_world_from_device:Lcom/sun/jna/Pointer;

    .line 142
    iget-object v3, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->REDeviceAttitudes:[[D

    array-length v3, v3

    iput v3, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->RE_amount:I

    .line 144
    iget-object v15, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->A_world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v3, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->ADeviceRoll:D

    iget-wide v7, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->ADevicePitch:D

    iget-wide v11, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->ADeviceHeading:D

    move-wide/from16 v16, v3

    move-wide/from16 v18, v7

    move-wide/from16 v20, v11

    invoke-static/range {v15 .. v21}, Lcom/qh/libexcavator/GeoQuaternion;->fillPointFromAngleZyx(Lcom/qh/libexcavator/nativelib/LibExcavator$Point;DDD)V

    .line 146
    iget-object v3, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->B_world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v7, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->BDeviceRoll:D

    iget-wide v11, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->BDevicePitch:D

    move-wide/from16 v19, v11

    iget-wide v10, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->BDeviceHeading:D

    move-object/from16 v16, v3

    move-wide/from16 v17, v7

    move-wide/from16 v21, v10

    invoke-static/range {v16 .. v22}, Lcom/qh/libexcavator/GeoQuaternion;->fillPointFromAngleZyx(Lcom/qh/libexcavator/nativelib/LibExcavator$Point;DDD)V

    .line 147
    iget-object v3, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->B_world_from_sensor:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v7, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->BSensorRoll:D

    iget-wide v9, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->BSensorPitch:D

    iget-wide v11, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->BSensorHeading:D

    move-object/from16 v21, v3

    move-wide/from16 v22, v7

    move-wide/from16 v24, v9

    move-wide/from16 v26, v11

    invoke-static/range {v21 .. v27}, Lcom/qh/libexcavator/GeoQuaternion;->fillPointFromAngleZyx(Lcom/qh/libexcavator/nativelib/LibExcavator$Point;DDD)V

    .line 149
    iget-object v15, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->dc_world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v7, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->dcDeviceRoll:D

    iget-wide v9, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->dcDevicePitch:D

    iget-wide v11, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->dcDeviceHeading:D

    move-wide/from16 v16, v7

    move-wide/from16 v18, v9

    move-wide/from16 v20, v11

    invoke-static/range {v15 .. v21}, Lcom/qh/libexcavator/GeoQuaternion;->fillPointFromAngleZyx(Lcom/qh/libexcavator/nativelib/LibExcavator$Point;DDD)V

    .line 150
    iget-object v3, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->dc_world_from_sensor:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v7, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->dcSensorRoll:D

    iget-wide v9, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->dcSensorPitch:D

    iget-wide v11, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->dcSensorHeading:D

    move-object/from16 v16, v3

    move-wide/from16 v17, v7

    move-wide/from16 v19, v9

    move-wide/from16 v21, v11

    invoke-static/range {v16 .. v22}, Lcom/qh/libexcavator/GeoQuaternion;->fillPointFromAngleZyx(Lcom/qh/libexcavator/nativelib/LibExcavator$Point;DDD)V

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u6a21\u5f0f2_1\u6807\u5b9a\u53c2\u6570\uff1aCalibrationMode2_1.apply phaseToHang="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->phaseToHang:D

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " HA="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->HA:D

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " Hy="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->Hy:D

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " Dx="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->Dx:D

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " AD="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->AD:D

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " CD="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->CD:D

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " BC="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->BC:D

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " toolAB="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->toolAB:D

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " RE_amount="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->REDeviceAttitudes:[[D

    array-length v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ADevice rpy=("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->ADeviceRoll:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->ADevicePitch:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->ADeviceHeading:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->A_world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v5, v2, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->A_world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v5, v2, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->A_world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v5, v2, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ") BDevice rpy=("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->BDeviceRoll:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->BDevicePitch:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->BDeviceHeading:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->B_world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v5, v2, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->B_world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v5, v2, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->B_world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v5, v2, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ") BSensor rpy=("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->BSensorRoll:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->BSensorPitch:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->BSensorHeading:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->B_world_from_sensor:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v5, v2, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->B_world_from_sensor:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v5, v2, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->B_world_from_sensor:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v5, v2, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ") dcDevice rpy=("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->dcDeviceRoll:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->dcDevicePitch:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->dcDeviceHeading:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->dc_world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v5, v2, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->dc_world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v5, v2, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->dc_world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v5, v2, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ") dcSensor rpy=("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->dcSensorRoll:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->dcSensorPitch:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->dcSensorHeading:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->dc_world_from_sensor:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v5, v2, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->dc_world_from_sensor:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v5, v2, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;->dc_world_from_sensor:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v4, v2, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/qh/libexcavator/Excavator;->raw()Lcom/qh/libexcavator/nativelib/LibExcavator;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/qh/libexcavator/Excavator;->handle()Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/qh/libexcavator/nativelib/LibExcavator;->libexcavator_cali_mode_2_1(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;)I

    move-result v1

    return v1

    .line 96
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "REDeviceAttitudes must contain at least 1 attitude"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
