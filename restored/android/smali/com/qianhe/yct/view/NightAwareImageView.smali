.class public Lcom/qianhe/yct/view/NightAwareImageView;
.super Lpl/droidsonroids/gif/GifImageView;
.source "NightAwareImageView.java"


# instance fields
.field private buffer:Landroid/graphics/Bitmap;

.field private remapKey:I

.field private shouldRemap:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lpl/droidsonroids/gif/GifImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lpl/droidsonroids/gif/GifImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private ensureBuffer(II)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/qianhe/yct/view/NightAwareImageView;->buffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/view/NightAwareImageView;->buffer:Landroid/graphics/Bitmap;

    .line 115
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/view/NightAwareImageView;->buffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/view/NightAwareImageView;->recycleBuffer()V

    .line 119
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/view/NightAwareImageView;->buffer:Landroid/graphics/Bitmap;

    return-void
.end method

.method private recycleBuffer()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/qianhe/yct/view/NightAwareImageView;->buffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/qianhe/yct/view/NightAwareImageView;->buffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/qianhe/yct/view/NightAwareImageView;->buffer:Landroid/graphics/Bitmap;

    .line 127
    iput-object v0, p0, Lcom/qianhe/yct/view/NightAwareImageView;->shouldRemap:Ljava/lang/Boolean;

    return-void
.end method

.method private remapCacheKey()I
    .locals 6

    .line 101
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 103
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    if-eqz v2, :cond_2

    .line 106
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget v5, v2, v1

    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v4

    :cond_2
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/qianhe/yct/view/NightAwareImageView;->shouldRemap:Ljava/lang/Boolean;

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 96
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 97
    invoke-direct {p0}, Lcom/qianhe/yct/view/NightAwareImageView;->recycleBuffer()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/utils/NightImageBackgroundHelper;->isNight(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 68
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v0, :cond_6

    if-gtz v1, :cond_1

    goto :goto_0

    .line 74
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/view/NightAwareImageView;->remapCacheKey()I

    move-result v2

    .line 75
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/qianhe/yct/view/NightAwareImageView;->shouldRemap:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/qianhe/yct/view/NightAwareImageView;->remapKey:I

    if-ne v2, v3, :cond_2

    .line 76
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 79
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/view/NightAwareImageView;->ensureBuffer(II)V

    .line 80
    iget-object v0, p0, Lcom/qianhe/yct/view/NightAwareImageView;->buffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 81
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/qianhe/yct/view/NightAwareImageView;->buffer:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 82
    iget-object v0, p0, Lcom/qianhe/yct/view/NightAwareImageView;->shouldRemap:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/qianhe/yct/view/NightAwareImageView;->remapKey:I

    if-eq v2, v0, :cond_4

    .line 83
    :cond_3
    iput v2, p0, Lcom/qianhe/yct/view/NightAwareImageView;->remapKey:I

    .line 84
    iget-object v0, p0, Lcom/qianhe/yct/view/NightAwareImageView;->buffer:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NightImageBackgroundHelper;->isWhiteBackground(Landroid/graphics/Bitmap;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/view/NightAwareImageView;->shouldRemap:Ljava/lang/Boolean;

    .line 86
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/qianhe/yct/view/NightAwareImageView;->shouldRemap:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/view/NightAwareImageView;->buffer:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/NightImageBackgroundHelper;->remap(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 88
    iget-object v0, p0, Lcom/qianhe/yct/view/NightAwareImageView;->buffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void

    .line 90
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 71
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/qianhe/yct/view/NightAwareImageView;->shouldRemap:Ljava/lang/Boolean;

    .line 52
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/qianhe/yct/view/NightAwareImageView;->shouldRemap:Ljava/lang/Boolean;

    .line 40
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/qianhe/yct/view/NightAwareImageView;->shouldRemap:Ljava/lang/Boolean;

    .line 46
    invoke-super {p0, p1}, Lpl/droidsonroids/gif/GifImageView;->setImageResource(I)V

    return-void
.end method
