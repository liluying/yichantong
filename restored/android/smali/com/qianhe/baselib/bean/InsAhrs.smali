.class public Lcom/qianhe/baselib/bean/InsAhrs;
.super Ljava/lang/Object;
.source "InsAhrs.java"


# instance fields
.field public deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field public headingDegrees:D

.field public headingDegreesError:D

.field public pitchDegrees:D

.field public pitchDegreesError:D

.field public rollDegrees:D

.field public rollDegreesError:D

.field public utc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V
    .locals 4

    .line 38
    const-string v0, "*"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/qianhe/baselib/bean/InsAhrs;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 41
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_2

    .line 42
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    move-object p1, p2

    .line 43
    :goto_0
    const-string v0, ","

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 44
    array-length v0, p1

    const/4 v1, 0x7

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    .line 45
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/qianhe/baselib/bean/InsAhrs;->utc:Ljava/lang/String;

    const/4 v0, 0x2

    .line 46
    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/qianhe/baselib/bean/InsAhrs;->parseDegree(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/qianhe/baselib/bean/InsAhrs;->headingDegrees:D

    const/4 v0, 0x3

    .line 47
    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/qianhe/baselib/bean/InsAhrs;->parseDegree(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/qianhe/baselib/bean/InsAhrs;->pitchDegrees:D

    const/4 v0, 0x4

    .line 48
    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/qianhe/baselib/bean/InsAhrs;->parseDegree(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/qianhe/baselib/bean/InsAhrs;->rollDegrees:D

    const/4 v0, 0x5

    .line 49
    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/qianhe/baselib/bean/InsAhrs;->parseDegree(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/qianhe/baselib/bean/InsAhrs;->headingDegreesError:D

    const/4 v0, 0x6

    .line 50
    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/qianhe/baselib/bean/InsAhrs;->parseDegree(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/qianhe/baselib/bean/InsAhrs;->pitchDegreesError:D

    .line 51
    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/qianhe/baselib/bean/InsAhrs;->parseDegree(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/InsAhrs;->rollDegreesError:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 54
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INS.AHRS\u89e3\u6790\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private static parseDegree(Ljava/lang/String;)D
    .locals 2

    .line 60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 61
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method
