.class public abstract Lcom/qianhe/yct/activity/pointlib/PointLibraryIntent;
.super Ljava/lang/Object;
.source "PointLibraryIntent.java"


# direct methods
.method public static openGroupList(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static pickPoint(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-static {p0, v0}, Lcom/qianhe/yct/activity/pointlib/PointLibraryIntent;->pickPoint(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static pickPoint(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-static {p0, p1, v0}, Lcom/qianhe/yct/activity/pointlib/PointLibraryIntent;->pickPoint(Landroid/content/Context;ZZ)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static pickPoint(Landroid/content/Context;ZZ)Landroid/content/Intent;
    .locals 2

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    const-string p0, "returnValue"

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 46
    const-string p0, "requireGeodetic"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    if-eqz p2, :cond_1

    .line 49
    const-string p0, "returnEcef"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method

.method public static pickPointForRawElev(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    const/4 v0, 0x0

    .line 56
    invoke-static {p0, v0}, Lcom/qianhe/yct/activity/pointlib/PointLibraryIntent;->pickPoint(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object p0

    .line 57
    const-string v0, "returnRawElev"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method
