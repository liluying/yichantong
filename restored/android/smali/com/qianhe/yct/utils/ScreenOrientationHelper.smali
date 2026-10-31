.class public abstract Lcom/qianhe/yct/utils/ScreenOrientationHelper;
.super Ljava/lang/Object;
.source "ScreenOrientationHelper.java"


# direct methods
.method public static apply(Landroid/app/Activity;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SourceLockedOrientationActivity"
        }
    .end annotation

    if-nez p0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 35
    :cond_1
    instance-of v1, p0, Lcom/qianhe/yct/SplashActivity;

    .line 36
    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isAutoAdaptation()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x4

    .line 37
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    if-eqz v1, :cond_3

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 40
    invoke-static {p0}, Lcom/qianhe/yct/utils/ScreenOrientationHelper;->applyFullscreen(Landroid/app/Activity;)V

    return-void

    .line 42
    :cond_2
    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isPad()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    if-eqz v1, :cond_3

    .line 45
    invoke-static {p0}, Lcom/qianhe/yct/utils/ScreenOrientationHelper;->applyFullscreen(Landroid/app/Activity;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/4 v0, 0x1

    .line 48
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method private static applyFullscreen(Landroid/app/Activity;)V
    .locals 1

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x400

    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    return-void
.end method

.method public static applyTabletNavigationBar(Landroid/app/Activity;)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 65
    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isPad()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isAutoAdaptation()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/high16 v0, -0x1000000

    .line 72
    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_3

    .line 74
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightNavigationBars(Z)V

    :cond_3
    :goto_0
    return-void
.end method
