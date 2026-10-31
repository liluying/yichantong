.class public abstract Lcom/qianhe/yct/utils/AboutAppIconHelper;
.super Ljava/lang/Object;
.source "AboutAppIconHelper.java"


# direct methods
.method public static resolve(Landroid/content/Context;)I
    .locals 2

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.qianhe.xfix"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    sget p0, Lcom/qianhe/yct/R$drawable;->icon_about_app_xfix:I

    return p0

    .line 25
    :cond_0
    invoke-static {p0}, Lcom/qianhe/baselib/utils/LanguagePrefs;->isZH(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget p0, Lcom/qianhe/yct/R$drawable;->icon_about_app_zh:I

    return p0

    :cond_1
    sget p0, Lcom/qianhe/yct/R$drawable;->icon_about_app_yct:I

    return p0
.end method
