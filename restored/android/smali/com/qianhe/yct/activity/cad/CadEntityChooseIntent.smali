.class public abstract Lcom/qianhe/yct/activity/cad/CadEntityChooseIntent;
.super Ljava/lang/Object;
.source "CadEntityChooseIntent.java"


# direct methods
.method public static create(Landroid/content/Context;Ljava/lang/String;I[D)Landroid/content/Intent;
    .locals 2

    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    const-string p0, "cad_file_path"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string p0, "cad_choose_max_count"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_0

    .line 34
    array-length p0, p3

    const/4 p1, 0x3

    if-lt p0, p1, :cond_0

    .line 35
    const-string p0, "cad_initial_points"

    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public static flattenPoints(Ljava/util/List;)[D
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[D>;)[D"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 57
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 60
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    mul-int/lit8 v1, v1, 0x3

    new-array v3, v1, [D

    .line 62
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    if-eqz v6, :cond_1

    .line 63
    array-length v7, v6

    if-ge v7, v2, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v7, v5, 0x1

    .line 66
    aget-wide v8, v6, v4

    aput-wide v8, v3, v5

    add-int/lit8 v8, v5, 0x2

    const/4 v9, 0x1

    .line 67
    aget-wide v9, v6, v9

    aput-wide v9, v3, v7

    add-int/lit8 v5, v5, 0x3

    const/4 v7, 0x2

    .line 68
    aget-wide v9, v6, v7

    aput-wide v9, v3, v8

    goto :goto_0

    :cond_3
    if-ge v5, v2, :cond_4

    return-object v0

    :cond_4
    if-ne v5, v1, :cond_5

    return-object v3

    .line 76
    :cond_5
    new-array p0, v5, [D

    .line 77
    invoke-static {v3, v4, p0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_6
    :goto_1
    return-object v0
.end method

.method public static isCadFileAvailable(Ljava/lang/String;)Z
    .locals 1

    .line 42
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static singlePoint(DDD)[D
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x3

    .line 51
    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    const/4 p0, 0x1

    aput-wide p2, v0, p0

    const/4 p0, 0x2

    aput-wide p4, v0, p0

    return-object v0
.end method
