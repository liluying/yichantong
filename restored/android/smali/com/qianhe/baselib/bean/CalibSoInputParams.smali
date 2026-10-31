.class public Lcom/qianhe/baselib/bean/CalibSoInputParams;
.super Ljava/lang/Object;
.source "CalibSoInputParams.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public aDeviceHeading:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "a_device_heading"
    .end annotation
.end field

.field public aDevicePitch:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "a_device_pitch"
    .end annotation
.end field

.field public aDeviceRoll:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "a_device_roll"
    .end annotation
.end field

.field public algo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "algo"
    .end annotation
.end field

.field public bDeviceHeading:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "b_device_heading"
    .end annotation
.end field

.field public bDevicePitch:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "b_device_pitch"
    .end annotation
.end field

.field public bDeviceRoll:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "b_device_roll"
    .end annotation
.end field

.field public bSensorHeading:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "b_sensor_heading"
    .end annotation
.end field

.field public bSensorPitch:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "b_sensor_pitch"
    .end annotation
.end field

.field public bSensorRoll:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "b_sensor_roll"
    .end annotation
.end field

.field public captured:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "captured"
    .end annotation
.end field

.field public dcDeviceHeading:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dc_device_heading"
    .end annotation
.end field

.field public dcDevicePitch:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dc_device_pitch"
    .end annotation
.end field

.field public dcDeviceRoll:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dc_device_roll"
    .end annotation
.end field

.field public dcSensorHeading:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dc_sensor_heading"
    .end annotation
.end field

.field public dcSensorPitch:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dc_sensor_pitch"
    .end annotation
.end field

.field public dcSensorRoll:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dc_sensor_roll"
    .end annotation
.end field

.field public deviceHeading:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device_heading"
    .end annotation
.end field

.field public devicePitch:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device_pitch"
    .end annotation
.end field

.field public deviceRoll:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device_roll"
    .end annotation
.end field

.field public phaseToHang:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phase_to_hang"
    .end annotation
.end field

.field public reDeviceAttitudes:[[D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "re_device_attitudes"
    .end annotation
.end field

.field public reSensorAttitudes:[[D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "re_sensor_attitudes"
    .end annotation
.end field

.field public sensorHeading:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sensor_heading"
    .end annotation
.end field

.field public sensorPitch:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sensor_pitch"
    .end annotation
.end field

.field public sensorRoll:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sensor_roll"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyAttitudes([[D)[[D
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 215
    :cond_0
    array-length v0, p0

    new-array v0, v0, [[D

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 216
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 217
    aget-object v3, p0, v2

    if-nez v3, :cond_1

    goto :goto_1

    .line 220
    :cond_1
    array-length v3, v3

    new-array v3, v3, [D

    aput-object v3, v0, v2

    .line 221
    aget-object v4, p0, v2

    array-length v5, v4

    invoke-static {v4, v1, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static fromEntity(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/CalibSoInputParams;
    .locals 3

    .line 76
    new-instance v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/CalibSoInputParams;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 80
    :cond_0
    invoke-static {p0}, Lcom/qianhe/baselib/bean/CalibSoInputParams;->resolveAlgo(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->algo:Ljava/lang/String;

    .line 81
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceRoll:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->deviceRoll:D

    .line 82
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->devicePitch:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->devicePitch:D

    .line 83
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeading:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->deviceHeading:D

    .line 84
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->sensorRoll:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->sensorRoll:D

    .line 85
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->sensorPitch:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->sensorPitch:D

    .line 86
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->sensorHeading:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->sensorHeading:D

    .line 87
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->phaseToHang:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->phaseToHang:D

    .line 88
    iget-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    invoke-static {v1}, Lcom/qianhe/baselib/bean/CalibSoInputParams;->copyAttitudes([[D)[[D

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->reDeviceAttitudes:[[D

    .line 89
    iget-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reSensorAttitudes:[[D

    invoke-static {v1}, Lcom/qianhe/baselib/bean/CalibSoInputParams;->copyAttitudes([[D)[[D

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->reSensorAttitudes:[[D

    .line 90
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDeviceRoll:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->aDeviceRoll:D

    .line 91
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDevicePitch:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->aDevicePitch:D

    .line 92
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDeviceHeading:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->aDeviceHeading:D

    .line 93
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDeviceRoll:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->bDeviceRoll:D

    .line 94
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDevicePitch:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->bDevicePitch:D

    .line 95
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDeviceHeading:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->bDeviceHeading:D

    .line 96
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorRoll:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->bSensorRoll:D

    .line 97
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorPitch:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->bSensorPitch:D

    .line 98
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorHeading:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->bSensorHeading:D

    .line 99
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDeviceRoll:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->dcDeviceRoll:D

    .line 100
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDevicePitch:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->dcDevicePitch:D

    .line 101
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDeviceHeading:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->dcDeviceHeading:D

    .line 102
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorRoll:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->dcSensorRoll:D

    .line 103
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorPitch:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->dcSensorPitch:D

    .line 104
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorHeading:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->dcSensorHeading:D

    return-object v0
.end method

.method private static hasAttitudeRows([[D)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 204
    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isNonZero(DDD)Z
    .locals 3

    .line 0
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_1

    cmpl-double p0, p2, v0

    if-nez p0, :cond_1

    cmpl-double p0, p4, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static resolveAlgo(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 189
    const-string p0, ""

    return-object p0

    .line 191
    :cond_0
    iget v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 192
    const-string p0, "caliMode1"

    return-object p0

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesCalibrationMode21()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    const-string p0, "caliMode21"

    return-object p0

    .line 197
    :cond_2
    iget p0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 198
    const-string p0, "caliMode3"

    return-object p0

    .line 200
    :cond_3
    const-string p0, "caliMode2"

    return-object p0
.end method


# virtual methods
.method public applyTo(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->deviceRoll:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceRoll:D

    .line 126
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->devicePitch:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->devicePitch:D

    .line 127
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->deviceHeading:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeading:D

    .line 128
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->sensorRoll:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->sensorRoll:D

    .line 129
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->sensorPitch:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->sensorPitch:D

    .line 130
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->sensorHeading:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->sensorHeading:D

    .line 131
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->phaseToHang:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->phaseToHang:D

    .line 132
    iget-object v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->reDeviceAttitudes:[[D

    if-eqz v0, :cond_1

    .line 133
    invoke-static {v0}, Lcom/qianhe/baselib/bean/CalibSoInputParams;->copyAttitudes([[D)[[D

    move-result-object v0

    iput-object v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->reSensorAttitudes:[[D

    if-eqz v0, :cond_2

    .line 136
    invoke-static {v0}, Lcom/qianhe/baselib/bean/CalibSoInputParams;->copyAttitudes([[D)[[D

    move-result-object v0

    iput-object v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reSensorAttitudes:[[D

    .line 138
    :cond_2
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->aDeviceRoll:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDeviceRoll:D

    .line 139
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->aDevicePitch:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDevicePitch:D

    .line 140
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->aDeviceHeading:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDeviceHeading:D

    .line 141
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->bDeviceRoll:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDeviceRoll:D

    .line 142
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->bDevicePitch:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDevicePitch:D

    .line 143
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->bDeviceHeading:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDeviceHeading:D

    .line 144
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->bSensorRoll:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorRoll:D

    .line 145
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->bSensorPitch:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorPitch:D

    .line 146
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->bSensorHeading:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorHeading:D

    .line 147
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->dcDeviceRoll:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDeviceRoll:D

    .line 148
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->dcDevicePitch:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDevicePitch:D

    .line 149
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->dcDeviceHeading:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDeviceHeading:D

    .line 150
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->dcSensorRoll:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorRoll:D

    .line 151
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->dcSensorPitch:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorPitch:D

    .line 152
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->dcSensorHeading:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorHeading:D

    .line 153
    const-string v0, "caliMode21"

    iget-object v1, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->algo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->distanceBucketMeasure:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public clearSweepAttitudes()V
    .locals 2

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->reDeviceAttitudes:[[D

    .line 111
    iput-object v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->reSensorAttitudes:[[D

    const-wide/16 v0, 0x0

    .line 112
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->dcDeviceRoll:D

    .line 113
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->dcDevicePitch:D

    .line 114
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->dcDeviceHeading:D

    .line 115
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->dcSensorRoll:D

    .line 116
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->dcSensorPitch:D

    .line 117
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->dcSensorHeading:D

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->captured:Z

    return-void
.end method

.method public hasMeaningfulAttitudes()Z
    .locals 8

    .line 170
    iget-object v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->reDeviceAttitudes:[[D

    invoke-static {v0}, Lcom/qianhe/baselib/bean/CalibSoInputParams;->hasAttitudeRows([[D)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->reSensorAttitudes:[[D

    invoke-static {v0}, Lcom/qianhe/baselib/bean/CalibSoInputParams;->hasAttitudeRows([[D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    iget-wide v2, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->deviceRoll:D

    iget-wide v4, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->devicePitch:D

    iget-wide v6, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->deviceHeading:D

    invoke-static/range {v2 .. v7}, Lcom/qianhe/baselib/bean/CalibSoInputParams;->isNonZero(DDD)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->sensorRoll:D

    iget-wide v4, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->sensorPitch:D

    iget-wide v6, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->sensorHeading:D

    .line 174
    invoke-static/range {v2 .. v7}, Lcom/qianhe/baselib/bean/CalibSoInputParams;->isNonZero(DDD)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->aDeviceRoll:D

    iget-wide v4, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->aDevicePitch:D

    iget-wide v6, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->aDeviceHeading:D

    .line 175
    invoke-static/range {v2 .. v7}, Lcom/qianhe/baselib/bean/CalibSoInputParams;->isNonZero(DDD)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->bDeviceRoll:D

    iget-wide v4, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->bDevicePitch:D

    iget-wide v6, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->bDeviceHeading:D

    .line 176
    invoke-static/range {v2 .. v7}, Lcom/qianhe/baselib/bean/CalibSoInputParams;->isNonZero(DDD)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->bSensorRoll:D

    iget-wide v4, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->bSensorPitch:D

    iget-wide v6, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->bSensorHeading:D

    .line 177
    invoke-static/range {v2 .. v7}, Lcom/qianhe/baselib/bean/CalibSoInputParams;->isNonZero(DDD)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->dcDeviceRoll:D

    iget-wide v4, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->dcDevicePitch:D

    iget-wide v6, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->dcDeviceHeading:D

    .line 178
    invoke-static/range {v2 .. v7}, Lcom/qianhe/baselib/bean/CalibSoInputParams;->isNonZero(DDD)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->dcSensorRoll:D

    iget-wide v4, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->dcSensorPitch:D

    iget-wide v6, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->dcSensorHeading:D

    .line 179
    invoke-static/range {v2 .. v7}, Lcom/qianhe/baselib/bean/CalibSoInputParams;->isNonZero(DDD)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->phaseToHang:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public isPlaceholder()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->captured:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/CalibSoInputParams;->hasMeaningfulAttitudes()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isValidFor(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z
    .locals 2

    .line 159
    iget-boolean v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->captured:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 162
    :cond_0
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesCalibrationMode21()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "caliMode21"

    iget-object v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->algo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/CalibSoInputParams;->hasMeaningfulAttitudes()Z

    move-result p1

    return p1

    .line 163
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->reDeviceAttitudes:[[D

    if-eqz p1, :cond_3

    array-length p1, p1

    if-lez p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1
.end method
