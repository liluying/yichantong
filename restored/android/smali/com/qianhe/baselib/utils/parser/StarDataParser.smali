.class public abstract Lcom/qianhe/baselib/utils/parser/StarDataParser;
.super Ljava/lang/Object;
.source "StarDataParser.java"


# direct methods
.method private static getStartId(I)I
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

.method private static getStartType(I)I
    .locals 1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x20

    if-gt p0, v0, :cond_0

    .line 73
    sget-object p0, Lcom/qianhe/baselib/enums/StarTypeEnum;->GPS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {p0}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result p0

    return p0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x60

    if-gt p0, v0, :cond_1

    .line 75
    sget-object p0, Lcom/qianhe/baselib/enums/StarTypeEnum;->GLN:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {p0}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result p0

    return p0

    :cond_1
    const/16 v0, 0x78

    if-lt p0, v0, :cond_2

    const/16 v0, 0xa0

    if-gt p0, v0, :cond_2

    .line 77
    sget-object p0, Lcom/qianhe/baselib/enums/StarTypeEnum;->SBAS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {p0}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result p0

    return p0

    :cond_2
    const/16 v0, 0xa1

    if-lt p0, v0, :cond_3

    const/16 v0, 0xe0

    if-gt p0, v0, :cond_3

    .line 79
    sget-object p0, Lcom/qianhe/baselib/enums/StarTypeEnum;->BDS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {p0}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result p0

    return p0

    :cond_3
    const/16 v0, 0x106

    if-lt p0, v0, :cond_4

    const/16 v0, 0x12b

    if-gt p0, v0, :cond_4

    .line 81
    sget-object p0, Lcom/qianhe/baselib/enums/StarTypeEnum;->GAL:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {p0}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result p0

    return p0

    :cond_4
    const/16 v0, 0x14b

    if-lt p0, v0, :cond_5

    const/16 v0, 0x168

    if-gt p0, v0, :cond_5

    .line 83
    sget-object p0, Lcom/qianhe/baselib/enums/StarTypeEnum;->QZSS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {p0}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result p0

    return p0

    :cond_5
    const/16 v0, 0x169

    if-lt p0, v0, :cond_6

    const/16 v0, 0x18f

    if-gt p0, v0, :cond_6

    .line 85
    sget-object p0, Lcom/qianhe/baselib/enums/StarTypeEnum;->IRNSS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {p0}, Lcom/qianhe/baselib/enums/StarTypeEnum;->getType()I

    move-result p0

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static parseSAU(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 55
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 57
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x4

    .line 61
    :goto_0
    :try_start_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 62
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StarDataParser.parseSAU():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static parseSAV(Ljava/lang/String;)Lcom/qianhe/baselib/bean/SAVListEntity;
    .locals 10

    .line 18
    new-instance v0, Lcom/qianhe/baselib/bean/SAVListEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/SAVListEntity;-><init>()V

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    :try_start_0
    const-string v3, "*"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    .line 23
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 25
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x4

    .line 27
    :goto_0
    array-length v5, p0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v3, v5, :cond_0

    .line 28
    new-instance v5, Lcom/qianhe/baselib/bean/SAVEntity;

    invoke-direct {v5}, Lcom/qianhe/baselib/bean/SAVEntity;-><init>()V

    .line 31
    aget-object v7, p0, v3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v8, v3, 0x1

    .line 32
    aget-object v8, p0, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v9, v3, 0x2

    .line 33
    aget-object v9, p0, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    filled-new-array {v7, v8, v9}, [I

    move-result-object v7

    .line 34
    aget v8, v7, v4

    iput v8, v5, Lcom/qianhe/baselib/bean/SAVEntity;->PRN:I

    .line 35
    invoke-static {v8}, Lcom/qianhe/baselib/utils/parser/StarDataParser;->getStartId(I)I

    move-result v8

    iput v8, v5, Lcom/qianhe/baselib/bean/SAVEntity;->starId:I

    .line 36
    aget v8, v7, v4

    invoke-static {v8}, Lcom/qianhe/baselib/utils/parser/StarDataParser;->getStartType(I)I

    move-result v8

    iput v8, v5, Lcom/qianhe/baselib/bean/SAVEntity;->type:I

    .line 37
    aget v6, v7, v6

    iput v6, v5, Lcom/qianhe/baselib/bean/SAVEntity;->elevationAngle:I

    const/4 v6, 0x2

    .line 38
    aget v6, v7, v6

    iput v6, v5, Lcom/qianhe/baselib/bean/SAVEntity;->azimuthAngle:I

    .line 39
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    aget v5, v7, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 42
    :cond_0
    iput-object v1, v0, Lcom/qianhe/baselib/bean/SAVListEntity;->entityList:Ljava/util/List;

    .line 43
    iput-object v2, v0, Lcom/qianhe/baselib/bean/SAVListEntity;->prnList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 45
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StarDataParser.parseSAV():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-object v0
.end method
