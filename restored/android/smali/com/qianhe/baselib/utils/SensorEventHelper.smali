.class public Lcom/qianhe/baselib/utils/SensorEventHelper;
.super Ljava/lang/Object;
.source "SensorEventHelper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private final TIME_SENSOR:I

.field private lastTime:J

.field private mAngle:F

.field private mContext:Landroid/content/Context;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/qianhe/baselib/utils/SensorEventHelper;->lastTime:J

    const/16 v0, 0x64

    .line 18
    iput v0, p0, Lcom/qianhe/baselib/utils/SensorEventHelper;->TIME_SENSOR:I

    .line 23
    iput-object p1, p0, Lcom/qianhe/baselib/utils/SensorEventHelper;->mContext:Landroid/content/Context;

    .line 24
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/qianhe/baselib/utils/SensorEventHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x3

    .line 25
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/baselib/utils/SensorEventHelper;->mSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method public static getScreenRotationOnPhone(Landroid/content/Context;)I
    .locals 1

    .line 78
    const-string/jumbo v0, "window"

    .line 79
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 81
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, -0x5a

    return p0

    :cond_1
    const/16 p0, 0xb4

    return p0

    :cond_2
    const/16 p0, 0x5a

    return p0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/qianhe/baselib/utils/SensorEventHelper;->lastTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_1

    .line 54
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 56
    :cond_1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 57
    iget-object v0, p0, Lcom/qianhe/baselib/utils/SensorEventHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qianhe/baselib/utils/SensorEventHelper;->getScreenRotationOnPhone(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_2
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    add-float/2addr p1, v0

    .line 64
    :cond_3
    :goto_0
    iget v0, p0, Lcom/qianhe/baselib/utils/SensorEventHelper;->mAngle:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    :goto_1
    return-void

    .line 67
    :cond_4
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p1, 0x0

    :cond_5
    iput p1, p0, Lcom/qianhe/baselib/utils/SensorEventHelper;->mAngle:F

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/baselib/utils/SensorEventHelper;->lastTime:J

    return-void
.end method

.method public registerSensorListener()V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/qianhe/baselib/utils/SensorEventHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/qianhe/baselib/utils/SensorEventHelper;->mSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public unRegisterSensorListener()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/qianhe/baselib/utils/SensorEventHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/qianhe/baselib/utils/SensorEventHelper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method
