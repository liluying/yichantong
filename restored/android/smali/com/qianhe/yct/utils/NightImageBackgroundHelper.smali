.class public abstract Lcom/qianhe/yct/utils/NightImageBackgroundHelper;
.super Ljava/lang/Object;
.source "NightImageBackgroundHelper.java"


# direct methods
.method private static isMostlyWhiteBackground([I)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 97
    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_4

    .line 98
    aget v5, p0, v1

    .line 99
    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    const/16 v7, 0x10

    if-ge v6, v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 103
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v6

    .line 104
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v7

    .line 105
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 106
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    sub-int/2addr v8, v9

    const/16 v9, 0x28

    if-le v8, v9, :cond_1

    goto :goto_1

    :cond_1
    mul-int/lit16 v6, v6, 0x12b

    mul-int/lit16 v7, v7, 0x24b

    add-int/2addr v6, v7

    mul-int/lit8 v5, v5, 0x72

    add-int/2addr v6, v5

    .line 110
    div-int/lit16 v6, v6, 0x3e8

    const/16 v5, 0xdc

    if-lt v6, v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-gt v6, v9, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x10

    goto :goto_0

    :cond_4
    if-lez v2, :cond_5

    .line 117
    div-int/lit8 v2, v2, 0x4

    if-le v3, v2, :cond_5

    if-le v3, v4, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    return v0
.end method

.method public static isNight(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 30
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v1, 0x20

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static isWhiteBackground(Landroid/graphics/Bitmap;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 46
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 50
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-lez v5, :cond_2

    if-gtz v9, :cond_1

    goto :goto_0

    :cond_1
    mul-int v0, v5, v9

    .line 54
    new-array v3, v0, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move v8, v5

    move-object v2, p0

    .line 55
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 56
    invoke-static {v3}, Lcom/qianhe/yct/utils/NightImageBackgroundHelper;->isMostlyWhiteBackground([I)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static remap(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 9

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/qianhe/yct/utils/NightImageBackgroundHelper;->isNight(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-lez v4, :cond_2

    if-gtz v8, :cond_1

    goto :goto_0

    :cond_1
    mul-int v0, v4, v8

    .line 68
    new-array v2, v0, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v7, v4

    move-object v1, p1

    .line 69
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 70
    sget p1, Lcom/qianhe/yct/R$color;->card_background:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 71
    sget v0, Lcom/qianhe/yct/R$color;->white:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    .line 72
    invoke-static {v2, p1, p0}, Lcom/qianhe/yct/utils/NightImageBackgroundHelper;->remapPixels([III)V

    .line 73
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static remapPixels([III)V
    .locals 11

    .line 121
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 122
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 123
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 124
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 125
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 126
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    const/4 v4, 0x0

    .line 127
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_2

    .line 128
    aget v5, p0, v4

    .line 129
    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 133
    :cond_0
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 134
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v8

    .line 135
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 136
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    sub-int/2addr v9, v10

    const/16 v10, 0x28

    if-le v9, v10, :cond_1

    goto :goto_1

    :cond_1
    mul-int/lit16 v7, v7, 0x12b

    mul-int/lit16 v8, v8, 0x24b

    add-int/2addr v7, v8

    mul-int/lit8 v5, v5, 0x72

    add-int/2addr v7, v5

    int-to-float v5, v7

    const v7, 0x48790600    # 255000.0f

    div-float/2addr v5, v7

    int-to-float v7, v2

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v5

    mul-float v7, v7, v8

    int-to-float v9, v0

    mul-float v9, v9, v5

    add-float/2addr v7, v9

    .line 141
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v9, v3

    mul-float v9, v9, v8

    int-to-float v10, v1

    mul-float v10, v10, v5

    add-float/2addr v9, v10

    .line 142
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v10, p2

    mul-float v10, v10, v8

    int-to-float v8, p1

    mul-float v8, v8, v5

    add-float/2addr v10, v8

    .line 143
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 144
    invoke-static {v6, v7, v9, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, p0, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
