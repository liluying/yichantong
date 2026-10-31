.class public abstract Lcom/qianhe/yct/utils/GifLoadHelper;
.super Ljava/lang/Object;
.source "GifLoadHelper.java"


# static fields
.field private static volatile sSampleSize:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public static recycle(Landroid/widget/ImageView;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 104
    instance-of v1, v0, Lpl/droidsonroids/gif/GifDrawable;

    if-eqz v1, :cond_1

    .line 105
    check-cast v0, Lpl/droidsonroids/gif/GifDrawable;

    .line 106
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->recycle()V

    :cond_1
    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    sget v1, Lcom/qianhe/yct/R$id;->tag_gif_res_id:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method static resolveSampleSize(Landroid/content/Context;)I
    .locals 8

    .line 115
    sget v0, Lcom/qianhe/yct/utils/GifLoadHelper;->sSampleSize:I

    if-lez v0, :cond_0

    .line 116
    sget p0, Lcom/qianhe/yct/utils/GifLoadHelper;->sSampleSize:I

    return p0

    .line 119
    :cond_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 122
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x3

    .line 125
    :cond_1
    new-instance v4, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 126
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 127
    iget-wide v4, v4, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/32 v6, 0x100000

    div-long/2addr v4, v6

    const-wide/16 v6, 0xc00

    cmp-long v0, v4, v6

    if-gtz v0, :cond_2

    if-ge v3, v2, :cond_2

    const/4 v3, 0x2

    :cond_2
    const-wide/16 v6, 0x800

    cmp-long v0, v4, v6

    if-gtz v0, :cond_4

    if-ge v3, v1, :cond_4

    const/4 v3, 0x3

    goto :goto_0

    :cond_3
    const-wide v4, 0x7fffffffffffffffL

    .line 136
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 138
    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v6, 0xf0

    if-gt v0, v6, :cond_5

    if-ge v3, v2, :cond_5

    const/4 v3, 0x2

    :cond_5
    const/16 v6, 0xa0

    if-gt v0, v6, :cond_6

    if-ge v3, v1, :cond_6

    const/4 v3, 0x3

    .line 145
    :cond_6
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lez p0, :cond_7

    const/16 v0, 0x384

    if-ge p0, v0, :cond_7

    if-ge v3, v2, :cond_7

    const/4 v3, 0x2

    :cond_7
    if-lez p0, :cond_8

    const/16 v0, 0x2d0

    if-ge p0, v0, :cond_8

    if-ge v3, v1, :cond_8

    goto :goto_1

    :cond_8
    move v1, v3

    .line 152
    :goto_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_9

    const-wide/16 v6, 0x1000

    cmp-long p0, v4, v6

    if-gtz p0, :cond_9

    if-ge v1, v2, :cond_9

    goto :goto_2

    :cond_9
    move v2, v1

    .line 155
    :goto_2
    sput v2, Lcom/qianhe/yct/utils/GifLoadHelper;->sSampleSize:I

    return v2
.end method

.method public static setGif(Landroid/widget/ImageView;I)V
    .locals 5

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 32
    :cond_0
    sget v0, Lcom/qianhe/yct/R$id;->tag_gif_res_id:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 34
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    instance-of v0, v1, Lpl/droidsonroids/gif/GifDrawable;

    if-eqz v0, :cond_1

    .line 35
    check-cast v1, Lpl/droidsonroids/gif/GifDrawable;

    .line 36
    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifDrawable;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifDrawable;->isRunning()Z

    move-result p0

    if-nez p0, :cond_6

    .line 37
    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifDrawable;->start()V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 45
    :try_start_0
    new-instance v2, Lpl/droidsonroids/gif/GifOptions;

    invoke-direct {v2}, Lpl/droidsonroids/gif/GifOptions;-><init>()V

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qianhe/yct/utils/GifLoadHelper;->resolveSampleSize(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Lpl/droidsonroids/gif/GifOptions;->setInSampleSize(I)V

    .line 47
    new-instance v3, Lpl/droidsonroids/gif/GifDrawableBuilder;

    invoke-direct {v3}, Lpl/droidsonroids/gif/GifDrawableBuilder;-><init>()V

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lpl/droidsonroids/gif/GifDrawableInit;->from(Landroid/content/res/Resources;I)Lpl/droidsonroids/gif/GifDrawableInit;

    move-result-object v3

    check-cast v3, Lpl/droidsonroids/gif/GifDrawableBuilder;

    .line 49
    invoke-virtual {v3, v2}, Lpl/droidsonroids/gif/GifDrawableInit;->options(Lpl/droidsonroids/gif/GifOptions;)Lpl/droidsonroids/gif/GifDrawableInit;

    move-result-object v2

    check-cast v2, Lpl/droidsonroids/gif/GifDrawableBuilder;

    .line 50
    invoke-virtual {v2}, Lpl/droidsonroids/gif/GifDrawableInit;->build()Lpl/droidsonroids/gif/GifDrawable;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    :try_start_1
    instance-of v3, v1, Lpl/droidsonroids/gif/GifDrawable;

    if-eqz v3, :cond_2

    if-eq v1, v2, :cond_2

    .line 52
    move-object v3, v1

    check-cast v3, Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v3}, Lpl/droidsonroids/gif/GifDrawable;->recycle()V

    goto :goto_0

    :catchall_0
    nop

    goto :goto_1

    .line 54
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    sget v3, Lcom/qianhe/yct/R$id;->tag_gif_res_id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_1
    nop

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_3

    .line 59
    invoke-virtual {v2}, Lpl/droidsonroids/gif/GifDrawable;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 60
    invoke-virtual {v2}, Lpl/droidsonroids/gif/GifDrawable;->recycle()V

    .line 64
    :cond_3
    :try_start_2
    instance-of v2, v1, Lpl/droidsonroids/gif/GifDrawable;

    if-eqz v2, :cond_4

    .line 65
    move-object v2, v1

    check-cast v2, Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v2}, Lpl/droidsonroids/gif/GifDrawable;->recycle()V

    goto :goto_2

    :catchall_2
    nop

    goto :goto_3

    .line 67
    :cond_4
    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    sget v2, Lcom/qianhe/yct/R$id;->tag_gif_res_id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :goto_3
    if-eqz v1, :cond_5

    .line 70
    instance-of p1, v1, Lpl/droidsonroids/gif/GifDrawable;

    if-nez p1, :cond_5

    .line 71
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    :cond_5
    sget p1, Lcom/qianhe/yct/R$id;->tag_gif_res_id:I

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public static setPlaying(Landroid/widget/ImageView;Z)V
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 83
    instance-of v0, p0, Lpl/droidsonroids/gif/GifDrawable;

    if-nez v0, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    check-cast p0, Lpl/droidsonroids/gif/GifDrawable;

    .line 87
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 91
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->isRunning()Z

    move-result p1

    if-nez p1, :cond_4

    .line 92
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->start()V

    return-void

    .line 94
    :cond_3
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 95
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->pause()V

    :cond_4
    :goto_0
    return-void
.end method
