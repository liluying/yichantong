.class public abstract Lcom/qianhe/yct/activity/cad/CadEntityChooseContract;
.super Ljava/lang/Object;
.source "CadEntityChooseContract.java"


# direct methods
.method public static parsePickResult(Landroid/content/Intent;)[D
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 19
    :cond_0
    const-string v1, "cad_result_choose_point"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object p0

    if-eqz p0, :cond_4

    .line 20
    array-length v1, p0

    if-eqz v1, :cond_4

    array-length v1, p0

    rem-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_1

    goto :goto_1

    .line 23
    :cond_1
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-wide v3, p0, v2

    .line 24
    invoke-static {v3, v4}, Lcom/qh/xcad/XCadView$$ExternalSyntheticBackport0;->m(D)Z

    move-result v3

    if-nez v3, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object p0

    :cond_4
    :goto_1
    return-object v0
.end method
