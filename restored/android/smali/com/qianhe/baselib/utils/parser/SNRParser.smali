.class public abstract Lcom/qianhe/baselib/utils/parser/SNRParser;
.super Ljava/lang/Object;
.source "SNRParser.java"


# direct methods
.method public static getStarId(I)I
    .locals 2

    .line 0
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x20

    if-gt p0, v0, :cond_0

    return p0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x60

    if-gt p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x40

    return p0

    :cond_1
    const/16 v0, 0x78

    const/16 v1, 0xa0

    if-lt p0, v0, :cond_2

    if-gt p0, v1, :cond_2

    add-int/lit8 p0, p0, -0x77

    return p0

    :cond_2
    const/16 v0, 0xa1

    if-lt p0, v0, :cond_3

    const/16 v0, 0xe0

    if-gt p0, v0, :cond_3

    sub-int/2addr p0, v1

    return p0

    :cond_3
    const/16 v0, 0x106

    if-lt p0, v0, :cond_4

    const/16 v0, 0x12b

    if-gt p0, v0, :cond_4

    add-int/lit16 p0, p0, -0x105

    return p0

    :cond_4
    const/16 v0, 0x14b

    const/16 v1, 0x168

    if-lt p0, v0, :cond_5

    if-gt p0, v1, :cond_5

    add-int/lit16 p0, p0, -0x14a

    return p0

    :cond_5
    const/16 v0, 0x169

    if-lt p0, v0, :cond_6

    const/16 v0, 0x18f

    if-gt p0, v0, :cond_6

    sub-int/2addr p0, v1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static getStarType(I)I
    .locals 1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x20

    if-gt p0, v0, :cond_0

    .line 61
    sget-object p0, Lcom/qianhe/baselib/enums/StarTypeEnum;->GPS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {p0}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result p0

    return p0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x60

    if-gt p0, v0, :cond_1

    .line 63
    sget-object p0, Lcom/qianhe/baselib/enums/StarTypeEnum;->GLN:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {p0}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result p0

    return p0

    :cond_1
    const/16 v0, 0x78

    if-lt p0, v0, :cond_2

    const/16 v0, 0xa0

    if-gt p0, v0, :cond_2

    .line 65
    sget-object p0, Lcom/qianhe/baselib/enums/StarTypeEnum;->SBAS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {p0}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result p0

    return p0

    :cond_2
    const/16 v0, 0xa1

    if-lt p0, v0, :cond_3

    const/16 v0, 0xe0

    if-gt p0, v0, :cond_3

    .line 67
    sget-object p0, Lcom/qianhe/baselib/enums/StarTypeEnum;->BDS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {p0}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result p0

    return p0

    :cond_3
    const/16 v0, 0x106

    if-lt p0, v0, :cond_4

    const/16 v0, 0x12b

    if-gt p0, v0, :cond_4

    .line 69
    sget-object p0, Lcom/qianhe/baselib/enums/StarTypeEnum;->GAL:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {p0}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result p0

    return p0

    :cond_4
    const/16 v0, 0x14b

    if-lt p0, v0, :cond_5

    const/16 v0, 0x168

    if-gt p0, v0, :cond_5

    .line 71
    sget-object p0, Lcom/qianhe/baselib/enums/StarTypeEnum;->QZSS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {p0}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result p0

    return p0

    :cond_5
    const/16 v0, 0x169

    if-lt p0, v0, :cond_6

    const/16 v0, 0x18f

    if-gt p0, v0, :cond_6

    .line 73
    sget-object p0, Lcom/qianhe/baselib/enums/StarTypeEnum;->IRNSS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {p0}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result p0

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static parser(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/SNREntity;",
            ">;"
        }
    .end annotation

    .line 26
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    const/4 v2, 0x0

    .line 30
    :try_start_0
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 32
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    .line 34
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_6

    .line 35
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 36
    invoke-static {v2}, Lcom/qianhe/baselib/utils/parser/SNRParser;->getStarId(I)I

    move-result v3

    .line 37
    invoke-static {v2}, Lcom/qianhe/baselib/utils/parser/SNRParser;->getStarType(I)I

    move-result v4

    .line 38
    new-instance v5, Lcom/qianhe/baselib/bean/SNREntity;

    invoke-direct {v5}, Lcom/qianhe/baselib/bean/SNREntity;-><init>()V

    .line 39
    iput v2, v5, Lcom/qianhe/baselib/bean/SNREntity;->PNR:I

    .line 40
    iput v3, v5, Lcom/qianhe/baselib/bean/SNREntity;->id:I

    .line 41
    iput v4, v5, Lcom/qianhe/baselib/bean/SNREntity;->type:I

    add-int/lit8 v2, v0, 0x1

    .line 42
    array-length v3, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    if-ge v2, v3, :cond_0

    :try_start_1
    aget-object v2, p0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    move-object v2, v4

    :goto_1
    add-int/lit8 v3, v0, 0x2

    .line 43
    array-length v6, p0

    if-ge v3, v6, :cond_1

    aget-object v3, p0, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_1
    move-object v3, v4

    :goto_2
    add-int/lit8 v6, v0, 0x3

    .line 44
    array-length v7, p0

    if-ge v6, v7, :cond_2

    aget-object v4, p0, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 45
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v5, Lcom/qianhe/baselib/bean/SNREntity;->L1:F

    .line 46
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v5, Lcom/qianhe/baselib/bean/SNREntity;->L2:F

    .line 47
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v5, Lcom/qianhe/baselib/bean/SNREntity;->L5:F

    .line 48
    :cond_5
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 50
    :cond_6
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 53
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SNRParser.parser"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_7
    return-object v1
.end method
