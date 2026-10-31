.class final Lcom/qh/xcad/DxfTextSupplement;
.super Ljava/lang/Object;
.source "DxfTextSupplement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qh/xcad/DxfTextSupplement$ParsedText;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DxfTextSupplement"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static expandBBox(Lcom/qh/xcad/XCadScene;DD)V
    .locals 4

    .line 96
    iget-object p0, p0, Lcom/qh/xcad/XCadScene;->bbox:[D

    if-eqz p0, :cond_4

    array-length v0, p0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 99
    aget-wide v1, p0, v0

    cmpg-double v3, p1, v1

    if-gez v3, :cond_1

    .line 100
    aput-wide p1, p0, v0

    :cond_1
    const/4 v0, 0x1

    .line 102
    aget-wide v1, p0, v0

    cmpg-double v3, p3, v1

    if-gez v3, :cond_2

    .line 103
    aput-wide p3, p0, v0

    :cond_2
    const/4 v0, 0x3

    .line 105
    aget-wide v1, p0, v0

    cmpl-double v3, p1, v1

    if-lez v3, :cond_3

    .line 106
    aput-wide p1, p0, v0

    :cond_3
    const/4 p1, 0x4

    .line 108
    aget-wide v0, p0, p1

    cmpl-double p2, p3, v0

    if-lez p2, :cond_4

    .line 109
    aput-wide p3, p0, p1

    :cond_4
    :goto_0
    return-void
.end method

.method private static finishText(Ljava/util/List;Lcom/qh/xcad/DxfTextSupplement$ParsedText;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qh/xcad/DxfTextSupplement$ParsedText;",
            ">;",
            "Lcom/qh/xcad/DxfTextSupplement$ParsedText;",
            ")V"
        }
    .end annotation

    .line 318
    iget-boolean v0, p1, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->hasX:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p1, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->hasY:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 321
    :cond_0
    iget-object v0, p1, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->rawText:Ljava/lang/String;

    invoke-static {v0}, Lcom/qh/xcad/DxfTextSupplement;->stripMtextFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->content:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 322
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 325
    :cond_1
    iget-boolean v0, p1, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->hasHeight:Z

    if-eqz v0, :cond_2

    iget-wide v0, p1, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->height:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_3

    :cond_2
    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    .line 326
    iput-wide v0, p1, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->height:D

    .line 328
    :cond_3
    iget-boolean v0, p1, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->hasRotation:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->hasDirX:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->hasDirY:Z

    if-eqz v0, :cond_4

    .line 329
    iget-wide v2, p1, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->dirY:D

    iget-wide v4, p1, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->dirX:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    iput-wide v2, p1, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->rotation:D

    .line 330
    iput-boolean v1, p1, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->hasRotation:Z

    .line 332
    :cond_4
    iget v0, p1, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->color:I

    const/high16 v2, -0x80000000

    const/4 v3, 0x7

    if-ne v0, v2, :cond_5

    .line 333
    iput v3, p1, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->color:I

    .line 335
    :cond_5
    iget v0, p1, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->attachment:I

    if-lt v0, v1, :cond_6

    const/16 v2, 0x9

    if-le v0, v2, :cond_8

    .line 336
    :cond_6
    iget-boolean v0, p1, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->mtext:Z

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x7

    :goto_0
    iput v1, p1, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->attachment:I

    .line 338
    :cond_8
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_1
    return-void
.end method

.method static mergeMissingTexts(Lcom/qh/xcad/XCadScene;Ljava/lang/String;)V
    .locals 7

    if-eqz p0, :cond_6

    .line 27
    iget-object v0, p0, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    .line 30
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string v1, ".dxf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 34
    :cond_1
    invoke-static {p1}, Lcom/qh/xcad/DxfTextSupplement;->parseTopLevelTexts(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 39
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qh/xcad/DxfTextSupplement$ParsedText;

    .line 40
    iget-object v3, v2, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->content:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 44
    :cond_4
    iget-object v3, v2, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->content:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/qh/xcad/DxfTextSupplement;->removeByContent(Lcom/qh/xcad/XCadScene;Ljava/lang/String;)V

    .line 45
    iget-object v3, p0, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    invoke-static {p0, v2}, Lcom/qh/xcad/DxfTextSupplement;->toEntity(Lcom/qh/xcad/XCadScene;Lcom/qh/xcad/DxfTextSupplement$ParsedText;)Lcom/qh/xcad/XCadEntity;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-wide v3, v2, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->x:D

    iget-wide v5, v2, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->y:D

    invoke-static {p0, v3, v4, v5, v6}, Lcom/qh/xcad/DxfTextSupplement;->expandBBox(Lcom/qh/xcad/XCadScene;DD)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-lez v1, :cond_6

    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "supplemented "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " TEXT/MTEXT from "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DxfTextSupplement"

    nop

    nop

    nop

    :cond_6
    :goto_1
    return-void
.end method

.method private static normalizeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 114
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 117
    :cond_0
    invoke-static {p0}, Lcom/qh/xcad/DxfTextSupplement;->stripMtextFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\r"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static parseDouble(Ljava/lang/String;)D
    .locals 2

    .line 343
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static parseTopLevelTexts(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/qh/xcad/DxfTextSupplement$ParsedText;",
            ">;"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    const-string v1, "GBK"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/nio/charset/Charset;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    :goto_0
    if-ge v5, v2, :cond_1

    .line 163
    aget-object v1, v3, v5

    .line 165
    :try_start_0
    invoke-static {p0, v1}, Lcom/qh/xcad/DxfTextSupplement;->parseTopLevelTexts(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    :catch_0
    move-exception v6

    .line 170
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parse texts with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed: "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "DxfTextSupplement"

    nop

    nop

    nop

    :cond_0
    add-int/2addr v5, v4

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static parseTopLevelTexts(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List<",
            "Lcom/qh/xcad/DxfTextSupplement$ParsedText;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 p0, 0x0

    const/4 p1, 0x0

    move-object v3, p0

    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 184
    :catch_0
    :cond_0
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_19

    .line 185
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    goto/16 :goto_5

    .line 189
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    if-nez v2, :cond_2

    .line 193
    const-string v8, "2"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "ENTITIES"

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    .line 199
    :cond_2
    const-string v8, "0"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v3, :cond_3

    .line 201
    invoke-static {v0, v3}, Lcom/qh/xcad/DxfTextSupplement;->finishText(Ljava/util/List;Lcom/qh/xcad/DxfTextSupplement$ParsedText;)V

    .line 205
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 206
    const-string v4, "ENDSEC"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_6

    .line 209
    :cond_4
    const-string v4, "TEXT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "MTEXT"

    if-nez v4, :cond_6

    :try_start_1
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    move-object v3, p0

    goto :goto_1

    .line 210
    :cond_6
    :goto_2
    new-instance v4, Lcom/qh/xcad/DxfTextSupplement$ParsedText;

    invoke-direct {v4, p0}, Lcom/qh/xcad/DxfTextSupplement$ParsedText;-><init>(Lcom/qh/xcad/DxfTextSupplement-IA;)V

    .line 211
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v4, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->mtext:Z

    move-object v3, v4

    const/4 v4, 0x1

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_0

    if-nez v4, :cond_8

    goto :goto_1

    .line 222
    :cond_8
    const-string v8, "101"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_0

    .line 227
    :cond_9
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x31

    if-eq v8, v9, :cond_15

    const/16 v9, 0x33

    if-eq v8, v9, :cond_14

    const/16 v9, 0x38

    if-eq v8, v9, :cond_13

    const/16 v9, 0x65d

    if-eq v8, v9, :cond_12

    const/16 v9, 0x67c

    if-eq v8, v9, :cond_11

    const/16 v9, 0x69b

    if-eq v8, v9, :cond_10

    const/16 v9, 0x6bc

    if-eq v8, v9, :cond_f

    const/16 v9, 0x6da

    if-eq v8, v9, :cond_e

    const/16 v9, 0x61f

    if-eq v8, v9, :cond_d

    const/16 v9, 0x620

    if-eq v8, v9, :cond_c

    const/16 v9, 0x63e

    if-eq v8, v9, :cond_b

    const/16 v9, 0x63f

    if-eq v8, v9, :cond_a

    goto/16 :goto_3

    :cond_a
    const-string v8, "21"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    const/16 v5, 0x9

    goto/16 :goto_4

    :cond_b
    const-string v8, "20"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    const/4 v5, 0x3

    goto/16 :goto_4

    :cond_c
    const-string v8, "11"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    const/16 v5, 0x8

    goto :goto_4

    :cond_d
    const-string v8, "10"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    const/4 v5, 0x2

    goto :goto_4

    :cond_e
    const-string v8, "71"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    const/4 v5, 0x7

    goto :goto_4

    :cond_f
    const-string v8, "62"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    const/4 v5, 0x1

    goto :goto_4

    :cond_10
    const-string v8, "50"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    const/4 v5, 0x6

    goto :goto_4

    :cond_11
    const-string v8, "40"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    const/4 v5, 0x5

    goto :goto_4

    :cond_12
    const-string v8, "30"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    const/4 v5, 0x4

    goto :goto_4

    :cond_13
    const-string v8, "8"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    const/4 v5, 0x0

    goto :goto_4

    :cond_14
    const-string v8, "3"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    const/16 v5, 0xb

    goto :goto_4

    :cond_15
    const-string v8, "1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    const/16 v5, 0xa

    goto :goto_4

    :cond_16
    :goto_3
    const/4 v5, -0x1

    :goto_4
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    .line 300
    :pswitch_0
    iget-object v5, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->rawText:Ljava/lang/String;

    if-nez v5, :cond_17

    .line 301
    iput-object v6, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->rawText:Ljava/lang/String;

    goto/16 :goto_1

    .line 303
    :cond_17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->rawText:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->rawText:Ljava/lang/String;

    goto/16 :goto_1

    .line 292
    :pswitch_1
    iget-object v5, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->rawText:Ljava/lang/String;

    if-nez v5, :cond_18

    .line 293
    iput-object v6, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->rawText:Ljava/lang/String;

    goto/16 :goto_1

    .line 295
    :cond_18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->rawText:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->rawText:Ljava/lang/String;

    goto/16 :goto_1

    .line 286
    :pswitch_2
    iget-boolean v5, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->hasDirY:Z

    if-nez v5, :cond_0

    .line 287
    invoke-static {v6}, Lcom/qh/xcad/DxfTextSupplement;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->dirY:D

    .line 288
    iput-boolean v7, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->hasDirY:Z

    goto/16 :goto_1

    .line 280
    :pswitch_3
    iget-boolean v5, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->hasDirX:Z

    if-nez v5, :cond_0

    .line 281
    invoke-static {v6}, Lcom/qh/xcad/DxfTextSupplement;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->dirX:D

    .line 282
    iput-boolean v7, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->hasDirX:Z

    goto/16 :goto_1

    .line 272
    :pswitch_4
    iget-boolean v5, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->mtext:Z

    if-eqz v5, :cond_0

    iget v5, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->attachment:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_0

    .line 274
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->attachment:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 266
    :pswitch_5
    :try_start_3
    iget-boolean v5, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->hasRotation:Z

    if-nez v5, :cond_0

    .line 267
    invoke-static {v6}, Lcom/qh/xcad/DxfTextSupplement;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    iput-wide v5, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->rotation:D

    .line 268
    iput-boolean v7, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->hasRotation:Z

    goto/16 :goto_1

    .line 260
    :pswitch_6
    iget-boolean v5, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->hasHeight:Z

    if-nez v5, :cond_0

    .line 261
    invoke-static {v6}, Lcom/qh/xcad/DxfTextSupplement;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->height:D

    .line 262
    iput-boolean v7, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->hasHeight:Z

    goto/16 :goto_1

    .line 254
    :pswitch_7
    iget-boolean v5, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->hasZ:Z

    if-nez v5, :cond_0

    .line 255
    invoke-static {v6}, Lcom/qh/xcad/DxfTextSupplement;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->z:D

    .line 256
    iput-boolean v7, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->hasZ:Z

    goto/16 :goto_1

    .line 248
    :pswitch_8
    iget-boolean v5, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->hasY:Z

    if-nez v5, :cond_0

    .line 249
    invoke-static {v6}, Lcom/qh/xcad/DxfTextSupplement;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->y:D

    .line 250
    iput-boolean v7, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->hasY:Z

    goto/16 :goto_1

    .line 242
    :pswitch_9
    iget-boolean v5, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->hasX:Z

    if-nez v5, :cond_0

    .line 243
    invoke-static {v6}, Lcom/qh/xcad/DxfTextSupplement;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->x:D

    .line 244
    iput-boolean v7, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->hasX:Z

    goto/16 :goto_1

    .line 234
    :pswitch_a
    iget v5, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->color:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/high16 v7, -0x80000000

    if-ne v5, v7, :cond_0

    .line 236
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->color:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 229
    :pswitch_b
    :try_start_5
    iget-object v5, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->layer:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 230
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->layer:Ljava/lang/String;

    goto/16 :goto_1

    :cond_19
    :goto_5
    move-object p0, v3

    :goto_6
    if-eqz p0, :cond_1a

    .line 311
    invoke-static {v0, p0}, Lcom/qh/xcad/DxfTextSupplement;->finishText(Ljava/util/List;Lcom/qh/xcad/DxfTextSupplement$ParsedText;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 313
    :cond_1a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-object v0

    .line 178
    :goto_7
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static removeByContent(Lcom/qh/xcad/XCadScene;Ljava/lang/String;)V
    .locals 3

    .line 55
    invoke-static {p1}, Lcom/qh/xcad/DxfTextSupplement;->normalizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 56
    iget-object p0, p0, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 57
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qh/xcad/XCadEntity;

    .line 59
    iget v1, v0, Lcom/qh/xcad/XCadEntity;->type:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, v0, Lcom/qh/xcad/XCadEntity;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/qh/xcad/DxfTextSupplement;->normalizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static stripMtextFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p0, :cond_7

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 128
    :cond_0
    const-string v0, "\\P"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\p"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 130
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 131
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_5

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_4

    add-int/lit8 v3, v1, 0x1

    .line 135
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 136
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x66

    if-eq v4, v5, :cond_2

    const/16 v5, 0x46

    if-eq v4, v5, :cond_2

    const/16 v5, 0x43

    if-eq v4, v5, :cond_2

    const/16 v5, 0x63

    if-eq v4, v5, :cond_2

    const/16 v5, 0x48

    if-eq v4, v5, :cond_2

    const/16 v5, 0x68

    if-eq v4, v5, :cond_2

    const/16 v5, 0x54

    if-eq v4, v5, :cond_2

    const/16 v5, 0x74

    if-eq v4, v5, :cond_2

    const/16 v5, 0x51

    if-eq v4, v5, :cond_2

    const/16 v5, 0x71

    if-eq v4, v5, :cond_2

    const/16 v5, 0x57

    if-eq v4, v5, :cond_2

    const/16 v5, 0x77

    if-eq v4, v5, :cond_2

    const/16 v5, 0x41

    if-eq v4, v5, :cond_2

    const/16 v5, 0x61

    if-ne v4, v5, :cond_3

    :cond_2
    add-int/lit8 v5, v1, 0x2

    const/16 v6, 0x3b

    .line 142
    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ltz v5, :cond_3

    move v1, v5

    goto :goto_1

    :cond_3
    const/16 v5, 0x7e

    if-ne v4, v5, :cond_4

    const/16 v1, 0x20

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_1

    .line 155
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 126
    :cond_7
    :goto_2
    const-string p0, ""

    return-object p0
.end method

.method private static toEntity(Lcom/qh/xcad/XCadScene;Lcom/qh/xcad/DxfTextSupplement$ParsedText;)Lcom/qh/xcad/XCadEntity;
    .locals 27

    move-object/from16 v0, p1

    const/4 v1, 0x1

    .line 69
    iget-boolean v2, v0, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->mtext:Z

    if-eqz v2, :cond_0

    const/4 v3, 0x6

    const/4 v6, 0x6

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    const/4 v6, 0x5

    .line 70
    :goto_0
    iget v3, v0, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->color:I

    const/16 v4, 0x100

    const/4 v5, 0x7

    if-eq v3, v4, :cond_2

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    move v8, v3

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v8, 0x7

    .line 75
    :goto_2
    iget-wide v11, v0, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->x:D

    iget-wide v13, v0, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->y:D

    iget-wide v3, v0, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->z:D

    const/4 v7, 0x3

    new-array v10, v7, [D

    const/4 v7, 0x0

    aput-wide v11, v10, v7

    aput-wide v13, v10, v1

    const/4 v7, 0x2

    aput-wide v3, v10, v7

    .line 76
    iget v7, v0, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->attachment:I

    if-lt v7, v1, :cond_4

    const/16 v9, 0x9

    if-le v7, v9, :cond_3

    goto :goto_4

    :cond_3
    move/from16 v26, v7

    :goto_3
    move-wide v15, v3

    goto :goto_6

    :cond_4
    :goto_4
    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    const/4 v1, 0x7

    :goto_5
    move/from16 v26, v1

    goto :goto_3

    .line 80
    :goto_6
    new-instance v4, Lcom/qh/xcad/XCadEntity;

    iget-object v9, v0, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->layer:Ljava/lang/String;

    iget-object v1, v0, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->content:Ljava/lang/String;

    iget-wide v2, v0, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->height:D

    double-to-float v2, v2

    move-object/from16 v23, v1

    iget-wide v0, v0, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->rotation:D

    double-to-float v0, v0

    const/4 v7, 0x0

    move-wide/from16 v17, v11

    move-wide/from16 v19, v13

    move-wide/from16 v21, v15

    move-object/from16 v5, p0

    move/from16 v25, v0

    move/from16 v24, v2

    invoke-direct/range {v4 .. v26}, Lcom/qh/xcad/XCadEntity;-><init>(Lcom/qh/xcad/XCadScene;IIILjava/lang/String;[DDDDDDDLjava/lang/String;FFI)V

    return-object v4
.end method
