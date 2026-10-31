.class public Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;
.super Ljava/lang/Object;
.source "ShovelAutoGenerateParams.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public AB:D

.field public T0x:D

.field public T0y:D

.field public T0z:D

.field public T1x:D

.field public T1y:D

.field public T1z:D

.field public T2x:D

.field public T2y:D

.field public T2z:D

.field public T3x:D

.field public T3y:D

.field public T3z:D

.field public useDistanceMeasure:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromClearParameters(Ljava/lang/String;)Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;
    .locals 3

    .line 24
    new-instance v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;-><init>()V

    if-eqz p0, :cond_d

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 26
    :cond_0
    const-string v1, ","

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 27
    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->AB:D

    .line 28
    :cond_1
    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    aget-object v1, p0, v2

    invoke-static {v1}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0x:D

    .line 29
    :cond_2
    array-length v1, p0

    const/4 v2, 0x2

    if-le v1, v2, :cond_3

    aget-object v1, p0, v2

    invoke-static {v1}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0y:D

    .line 30
    :cond_3
    array-length v1, p0

    const/4 v2, 0x3

    if-le v1, v2, :cond_4

    aget-object v1, p0, v2

    invoke-static {v1}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0z:D

    .line 31
    :cond_4
    array-length v1, p0

    const/4 v2, 0x4

    if-le v1, v2, :cond_5

    aget-object v1, p0, v2

    invoke-static {v1}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1x:D

    .line 32
    :cond_5
    array-length v1, p0

    const/4 v2, 0x5

    if-le v1, v2, :cond_6

    aget-object v1, p0, v2

    invoke-static {v1}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1y:D

    .line 33
    :cond_6
    array-length v1, p0

    const/4 v2, 0x6

    if-le v1, v2, :cond_7

    aget-object v1, p0, v2

    invoke-static {v1}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1z:D

    .line 34
    :cond_7
    array-length v1, p0

    const/4 v2, 0x7

    if-le v1, v2, :cond_8

    aget-object v1, p0, v2

    invoke-static {v1}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2x:D

    .line 35
    :cond_8
    array-length v1, p0

    const/16 v2, 0x8

    if-le v1, v2, :cond_9

    aget-object v1, p0, v2

    invoke-static {v1}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2y:D

    .line 36
    :cond_9
    array-length v1, p0

    const/16 v2, 0x9

    if-le v1, v2, :cond_a

    aget-object v1, p0, v2

    invoke-static {v1}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2z:D

    .line 37
    :cond_a
    array-length v1, p0

    const/16 v2, 0xa

    if-le v1, v2, :cond_b

    aget-object v1, p0, v2

    invoke-static {v1}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3x:D

    .line 38
    :cond_b
    array-length v1, p0

    const/16 v2, 0xb

    if-le v1, v2, :cond_c

    aget-object v1, p0, v2

    invoke-static {v1}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3y:D

    .line 39
    :cond_c
    array-length v1, p0

    const/16 v2, 0xc

    if-le v1, v2, :cond_d

    aget-object p0, p0, v2

    invoke-static {p0}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3z:D

    :cond_d
    :goto_0
    return-object v0
.end method

.method private static parseDouble(Ljava/lang/String;)D
    .locals 2

    .line 45
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static round3(D)D
    .locals 2

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double p0, p0, v0

    .line 68
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-double p0, p0

    div-double/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public isEmpty()Z
    .locals 5

    .line 17
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->AB:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0x:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0y:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0z:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1x:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1y:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1z:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2x:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2y:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2z:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3x:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3y:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3z:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toMeasureParams(Lcom/qianhe/baselib/bean/ShovelMeasureParams;)Lcom/qianhe/baselib/bean/ShovelMeasureParams;
    .locals 7

    .line 56
    new-instance v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/ShovelMeasureParams;-><init>()V

    .line 57
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->AB:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->AB:D

    .line 58
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0y:D

    neg-double v3, v1

    iput-wide v3, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ly:D

    neg-double v1, v1

    .line 59
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ry:D

    const-wide v1, 0x3fa70a3d70a3d70aL    # 0.045

    if-eqz p1, :cond_0

    .line 60
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G2:D

    const-wide/16 v5, 0x0

    cmpl-double p1, v3, v5

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0z:D

    add-double/2addr v3, v1

    .line 61
    :goto_0
    invoke-static {v3, v4}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->round3(D)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G2:D

    .line 62
    iget-wide v5, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0z:D

    sub-double/2addr v3, v5

    sub-double/2addr v3, v1

    invoke-static {v3, v4}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->round3(D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G3:D

    .line 63
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G2:D

    iget-wide v3, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0x:D

    sub-double/2addr v1, v3

    const-wide v3, 0x3fac28f5c28f5c29L    # 0.055

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->round3(D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G1:D

    return-object v0
.end method
