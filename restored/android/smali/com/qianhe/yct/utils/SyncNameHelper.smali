.class public abstract Lcom/qianhe/yct/utils/SyncNameHelper;
.super Ljava/lang/Object;
.source "SyncNameHelper.java"


# static fields
.field private static final CREATE_TIME_SUFFIX_FORMAT:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHmmss"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/qianhe/yct/utils/SyncNameHelper;->CREATE_TIME_SUFFIX_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static hasNonLatinScript(Ljava/lang/String;)Z
    .locals 4

    .line 58
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 59
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 61
    invoke-static {v2}, Lcom/qianhe/yct/utils/SyncNameHelper;->isNonLatinScript(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    .line 62
    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static isNonLatinScript(I)Z
    .locals 2

    .line 0
    const/16 v0, 0x1100

    const/4 v1, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x11ff

    if-gt p0, v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x3130

    if-lt p0, v0, :cond_1

    const/16 v0, 0x318f

    if-gt p0, v0, :cond_1

    return v1

    :cond_1
    const v0, 0xac00

    if-lt p0, v0, :cond_2

    const v0, 0xd7a3

    if-gt p0, v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x3400

    if-lt p0, v0, :cond_3

    const v0, 0x9fff

    if-gt p0, v0, :cond_3

    return v1

    :cond_3
    const v0, 0xf900

    if-lt p0, v0, :cond_4

    const v0, 0xfaff

    if-gt p0, v0, :cond_4

    return v1

    :cond_4
    const/16 v0, 0x3040

    if-lt p0, v0, :cond_5

    const/16 v0, 0x30ff

    if-gt p0, v0, :cond_5

    return v1

    :cond_5
    const/16 v0, 0x600

    if-lt p0, v0, :cond_6

    const/16 v0, 0x6ff

    if-gt p0, v0, :cond_6

    return v1

    :cond_6
    const/16 v0, 0x400

    if-lt p0, v0, :cond_7

    const/16 v0, 0x4ff

    if-gt p0, v0, :cond_7

    return v1

    :cond_7
    const/16 v0, 0xe00

    if-lt p0, v0, :cond_8

    const/16 v0, 0xe7f

    if-gt p0, v0, :cond_8

    return v1

    :cond_8
    const/16 v0, 0x900

    if-lt p0, v0, :cond_9

    const/16 v0, 0x97f

    if-gt p0, v0, :cond_9

    return v1

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static looksLikeMojibake(Ljava/lang/String;)Z
    .locals 8

    .line 92
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 96
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    const/16 v7, 0xc0

    if-lt v6, v7, :cond_1

    const/16 v7, 0x24f

    if-gt v6, v7, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 100
    :cond_1
    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 103
    :cond_2
    :goto_1
    invoke-static {v6}, Lcom/qianhe/yct/utils/SyncNameHelper;->isNonLatinScript(I)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 104
    :cond_3
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_0

    :cond_4
    if-lez v3, :cond_5

    return v1

    :cond_5
    if-lt v4, v2, :cond_6

    if-lt v4, v5, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_2
    return v1
.end method

.method public static resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    return-object p0

    .line 42
    :cond_0
    const-string p0, ""

    return-object p0

    .line 44
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 47
    :cond_2
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 50
    :cond_3
    invoke-static {p0}, Lcom/qianhe/yct/utils/SyncNameHelper;->hasNonLatinScript(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/qianhe/yct/utils/SyncNameHelper;->hasNonLatinScript(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/qianhe/yct/utils/SyncNameHelper;->looksLikeMojibake(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    return-object p0

    :cond_5
    :goto_0
    return-object p1
.end method

.method public static withCreateTimeSuffix(Ljava/lang/String;J)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x3e8

    cmp-long v4, p1, v0

    if-lez v4, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    div-long/2addr p1, v2

    .line 26
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    .line 27
    div-long/2addr p1, v2

    .line 30
    :cond_1
    sget-object v0, Lcom/qianhe/yct/utils/SyncNameHelper;->CREATE_TIME_SUFFIX_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v0

    .line 31
    :try_start_0
    new-instance v1, Ljava/util/Date;

    mul-long p1, p1, v2

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, ""

    :goto_1
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 32
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
