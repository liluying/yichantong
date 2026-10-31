.class public abstract Lcom/qianhe/baselib/utils/parser/BestPosParser;
.super Ljava/lang/Object;
.source "BestPosParser.java"


# direct methods
.method public static parse(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)Lcom/qianhe/baselib/bean/BestPosEntity;
    .locals 6

    .line 22
    const-string v0, ";"

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 24
    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x9

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 26
    array-length v1, v0

    const/16 v2, 0x17

    if-le v1, v2, :cond_0

    .line 27
    new-instance v1, Lcom/qianhe/baselib/bean/BestPosEntity;

    invoke-direct {v1}, Lcom/qianhe/baselib/bean/BestPosEntity;-><init>()V

    .line 28
    iput-object p1, v1, Lcom/qianhe/baselib/bean/BestPosEntity;->line:Ljava/lang/String;

    const/16 p1, 0xb

    .line 29
    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    float-to-double v3, p1

    iput-wide v3, v1, Lcom/qianhe/baselib/bean/BestPosEntity;->lat:D

    const/16 p1, 0xc

    .line 30
    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    float-to-double v3, p1

    iput-wide v3, v1, Lcom/qianhe/baselib/bean/BestPosEntity;->lon:D

    const/16 p1, 0xd

    .line 31
    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/16 v3, 0xe

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    add-float/2addr p1, v4

    float-to-double v4, p1

    iput-wide v4, v1, Lcom/qianhe/baselib/bean/BestPosEntity;->elve:D

    .line 32
    aget-object p1, v0, v3

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    float-to-double v3, p1

    iput-wide v3, v1, Lcom/qianhe/baselib/bean/BestPosEntity;->elveDiff:D

    const/16 p1, 0x16

    .line 33
    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Lcom/qianhe/baselib/bean/BestPosEntity;->trackStar:I

    .line 34
    aget-object p1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Lcom/qianhe/baselib/bean/BestPosEntity;->useStar:I

    .line 35
    iput-object p0, v1, Lcom/qianhe/baselib/bean/BestPosEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 36
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BestPosParser.parse\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
