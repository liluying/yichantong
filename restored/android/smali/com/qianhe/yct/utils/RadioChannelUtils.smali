.class public abstract Lcom/qianhe/yct/utils/RadioChannelUtils;
.super Ljava/lang/Object;
.source "RadioChannelUtils.java"


# direct methods
.method public static buildChannelLabelList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 17
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 19
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 20
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 21
    invoke-static {p0, v1, p1}, Lcom/qianhe/yct/utils/RadioChannelUtils;->getChannelLabel(Landroid/content/Context;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getChannelIndex(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-nez p2, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x0

    .line 41
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_2

    .line 42
    invoke-static {p0, v3, p2}, Lcom/qianhe/yct/utils/RadioChannelUtils;->getChannelLabel(Landroid/content/Context;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    :cond_1
    add-int/2addr v3, v1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 46
    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_4

    .line 47
    sget v4, Lcom/qianhe/yct/R$string;->channel_number:I

    add-int/lit8 v5, v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v6, v7, v0

    invoke-static {p0, v4, v7}, Lcom/qianhe/baselib/utils/LanguagePrefs;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v3

    :cond_3
    move v3, v5

    goto :goto_1

    :cond_4
    return v2
.end method

.method public static getChannelLabel(Landroid/content/Context;I[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 27
    sget v0, Lcom/qianhe/yct/R$string;->channel_number:I

    const/4 v1, 0x1

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/qianhe/baselib/utils/LanguagePrefs;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_0

    if-ltz p1, :cond_0

    .line 28
    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 29
    aget-object p1, p2, p1

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method
