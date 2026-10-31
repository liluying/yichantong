.class public Lorg/locationtech/proj4j/io/Proj4FileReader;
.super Ljava/lang/Object;
.source "Proj4FileReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addParam(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 97
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 103
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createTokenizer(Ljava/io/BufferedReader;)Ljava/io/StreamTokenizer;
    .locals 5

    .line 59
    new-instance v0, Ljava/io/StreamTokenizer;

    invoke-direct {v0, p1}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    const/16 p1, 0x23

    .line 60
    invoke-virtual {v0, p1}, Ljava/io/StreamTokenizer;->commentChar(I)V

    const/16 p1, 0x30

    const/16 v1, 0x39

    .line 61
    invoke-virtual {v0, p1, v1}, Ljava/io/StreamTokenizer;->ordinaryChars(II)V

    const/16 v2, 0x2e

    .line 62
    invoke-virtual {v0, v2, v2}, Ljava/io/StreamTokenizer;->ordinaryChars(II)V

    const/16 v3, 0x2d

    .line 63
    invoke-virtual {v0, v3, v3}, Ljava/io/StreamTokenizer;->ordinaryChars(II)V

    const/16 v4, 0x2b

    .line 64
    invoke-virtual {v0, v4, v4}, Ljava/io/StreamTokenizer;->ordinaryChars(II)V

    .line 65
    invoke-virtual {v0, p1, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 p1, 0x27

    .line 66
    invoke-virtual {v0, p1, p1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 p1, 0x22

    .line 67
    invoke-virtual {v0, p1, p1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 p1, 0x5f

    .line 68
    invoke-virtual {v0, p1, p1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 69
    invoke-virtual {v0, v2, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 70
    invoke-virtual {v0, v3, v3}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 71
    invoke-virtual {v0, v4, v4}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 p1, 0x2c

    .line 72
    invoke-virtual {v0, p1, p1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 p1, 0x40

    .line 73
    invoke-virtual {v0, p1, p1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    return-object v0
.end method

.method private static parseTokenizer(Ljava/io/StreamTokenizer;)Lorg/locationtech/proj4j/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/StreamTokenizer;",
            ")",
            "Lorg/locationtech/proj4j/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 152
    iget v0, p0, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_6

    .line 154
    iget-object v0, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 156
    iget v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_5

    .line 158
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 159
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 161
    :goto_0
    iget v4, p0, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_0

    .line 163
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 164
    :cond_0
    iget v4, p0, Ljava/io/StreamTokenizer;->ttype:I

    if-ne v4, v1, :cond_2

    .line 166
    iget-object v4, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 167
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 171
    iget v5, p0, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_1

    .line 172
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 176
    iget-object v5, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 177
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 178
    invoke-static {v2, v4, v5}, Lorg/locationtech/proj4j/io/Proj4FileReader;->addParam(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 181
    invoke-static {v2, v4, v5}, Lorg/locationtech/proj4j/io/Proj4FileReader;->addParam(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->lineno()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": Word expected after \'+\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_3
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 185
    iget v1, p0, Ljava/io/StreamTokenizer;->ttype:I

    if-ne v1, v3, :cond_4

    .line 187
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 189
    invoke-static {v0, v2}, Lorg/locationtech/proj4j/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lorg/locationtech/proj4j/util/Pair;

    move-result-object p0

    return-object p0

    .line 186
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->lineno()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": \'<>\' expected"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->lineno()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": \'>\' expected"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->lineno()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": Word expected after \'<\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readFile(Ljava/io/BufferedReader;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 78
    invoke-direct {p0, p1}, Lorg/locationtech/proj4j/io/Proj4FileReader;->createTokenizer(Ljava/io/BufferedReader;)Ljava/io/StreamTokenizer;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 81
    :cond_0
    iget v0, p1, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_1

    .line 82
    invoke-static {p1}, Lorg/locationtech/proj4j/io/Proj4FileReader;->parseTokenizer(Ljava/io/StreamTokenizer;)Lorg/locationtech/proj4j/util/Pair;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lorg/locationtech/proj4j/util/Pair;->fst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 84
    invoke-virtual {v0}, Lorg/locationtech/proj4j/util/Pair;->snd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 87
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 88
    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getParameters(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3a

    .line 115
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    .line 117
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-virtual {p0, v1, p1}, Lorg/locationtech/proj4j/io/Proj4FileReader;->readParametersFromFile(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 122
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public readEpsgCodeFromFile([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 128
    const-class v0, Lorg/locationtech/proj4j/io/Proj4FileReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "proj4/nad/epsg"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 133
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 135
    invoke-direct {p0, v1}, Lorg/locationtech/proj4j/io/Proj4FileReader;->createTokenizer(Ljava/io/BufferedReader;)Ljava/io/StreamTokenizer;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 138
    :cond_0
    iget v1, v0, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_1

    .line 139
    invoke-static {v0}, Lorg/locationtech/proj4j/io/Proj4FileReader;->parseTokenizer(Ljava/io/StreamTokenizer;)Lorg/locationtech/proj4j/util/Pair;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Lorg/locationtech/proj4j/util/Pair;->fst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 141
    invoke-virtual {v1}, Lorg/locationtech/proj4j/util/Pair;->snd()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    .line 143
    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 145
    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 131
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to access CRS file: EPSG"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readParametersFromFile(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "proj4/nad/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 42
    const-class v0, Lorg/locationtech/proj4j/io/Proj4FileReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 50
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/locationtech/proj4j/io/Proj4FileReader;->readFile(Ljava/io/BufferedReader;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 54
    throw p2

    .line 44
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to access CRS file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
