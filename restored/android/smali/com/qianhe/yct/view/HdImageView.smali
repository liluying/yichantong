.class public Lcom/qianhe/yct/view/HdImageView;
.super Landroid/view/View;
.source "HdImageView.java"


# static fields
.field private static final MAX_SOURCE_EDGE:I = 0x1000

.field private static final UNSPECIFIED_GRAVITY:I = -0x1


# instance fields
.field private cachedDrawableState:[I

.field private final destRect:Landroid/graphics/RectF;

.field private imageResId:I

.field private maxDisplayHeight:I

.field private final paint:Landroid/graphics/Paint;

.field private sourceBitmap:Landroid/graphics/Bitmap;

.field private srcHeight:I

.field private final srcRect:Landroid/graphics/Rect;

.field private srcWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/HdImageView;->paint:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/view/HdImageView;->srcRect:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/view/HdImageView;->destRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/view/HdImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/HdImageView;->paint:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/view/HdImageView;->srcRect:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/view/HdImageView;->destRect:Landroid/graphics/RectF;

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/view/HdImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x7

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/qianhe/yct/view/HdImageView;->paint:Landroid/graphics/Paint;

    .line 43
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/view/HdImageView;->srcRect:Landroid/graphics/Rect;

    .line 44
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/view/HdImageView;->destRect:Landroid/graphics/RectF;

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/view/HdImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static calculateFitCenterSize(IIII)[I
    .locals 0

    if-lez p0, :cond_1

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    if-gtz p3, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p2, p2

    int-to-float p0, p0

    div-float/2addr p2, p0

    int-to-float p3, p3

    int-to-float p1, p1

    div-float/2addr p3, p1

    .line 307
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    mul-float p0, p0, p2

    .line 308
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 305
    filled-new-array {p0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method private static calculateInSampleSize(IIII)I
    .locals 2

    const/4 v0, 0x1

    if-gt p1, p3, :cond_1

    if-le p0, p2, :cond_0

    goto :goto_0

    :cond_0
    return v0

    .line 314
    :cond_1
    :goto_0
    div-int/lit8 p1, p1, 0x2

    .line 315
    div-int/lit8 p0, p0, 0x2

    .line 316
    :goto_1
    div-int v1, p1, v0

    if-lt v1, p3, :cond_2

    div-int v1, p0, v0

    if-lt v1, p2, :cond_2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    return v0
.end method

.method private decodeSourceBitmap(I)Landroid/graphics/Bitmap;
    .locals 4

    .line 239
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 240
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 241
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 242
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v2, :cond_0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v0, :cond_0

    const/16 v1, 0x1000

    .line 243
    invoke-static {v2, v0, v1, v1}, Lcom/qianhe/yct/view/HdImageView;->calculateInSampleSize(IIII)I

    move-result v0

    .line 245
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 246
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x0

    .line 247
    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 248
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 249
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 252
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 256
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 257
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 258
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 259
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 260
    iget v2, p0, Lcom/qianhe/yct/view/HdImageView;->srcWidth:I

    if-lez v2, :cond_2

    iget v3, p0, Lcom/qianhe/yct/view/HdImageView;->srcHeight:I

    if-lez v3, :cond_2

    move v0, v2

    move v1, v3

    .line 264
    :cond_2
    invoke-static {p1, v0, v1}, Lcom/qianhe/yct/view/HdImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 3

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 297
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    .line 298
    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 299
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static ensureDefaultLayoutGravity(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4

    .line 134
    instance-of v0, p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x1

    const/16 v2, 0x11

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    .line 135
    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 136
    iget v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v0, v3, :cond_1

    .line 137
    iput v2, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return v1

    .line 140
    :cond_0
    instance-of v0, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 141
    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 142
    iget v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-ne v0, v3, :cond_1

    .line 143
    iput v2, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private ensureSourceBitmapLoaded()V
    .locals 2

    .line 221
    iget v0, p0, Lcom/qianhe/yct/view/HdImageView;->imageResId:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/qianhe/yct/view/HdImageView;->sourceBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/view/HdImageView;->cachedDrawableState:[I

    if-eqz v1, :cond_1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 228
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/view/HdImageView;->recycleSourceBitmap()V

    .line 229
    iget v1, p0, Lcom/qianhe/yct/view/HdImageView;->imageResId:I

    invoke-direct {p0, v1}, Lcom/qianhe/yct/view/HdImageView;->decodeSourceBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/view/HdImageView;->sourceBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 231
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/qianhe/yct/view/HdImageView;->cachedDrawableState:[I

    .line 232
    iget-object v0, p0, Lcom/qianhe/yct/view/HdImageView;->sourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/view/HdImageView;->srcWidth:I

    .line 233
    iget-object v0, p0, Lcom/qianhe/yct/view/HdImageView;->sourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/view/HdImageView;->srcHeight:I

    :cond_2
    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 63
    sget-object v0, Lcom/qianhe/yct/R$styleable;->HdImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 65
    :try_start_0
    sget p2, Lcom/qianhe/yct/R$styleable;->HdImageView_maxDisplayHeight:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qianhe/yct/view/HdImageView;->maxDisplayHeight:I

    .line 66
    sget p2, Lcom/qianhe/yct/R$styleable;->HdImageView_src:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p0, p2}, Lcom/qianhe/yct/view/HdImageView;->setImageResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 71
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    throw p2

    :cond_1
    return-void
.end method

.method private recycleSourceBitmap()V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/qianhe/yct/view/HdImageView;->sourceBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/qianhe/yct/view/HdImageView;->sourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 327
    iput-object v0, p0, Lcom/qianhe/yct/view/HdImageView;->sourceBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private resolveSourceSize(I)V
    .locals 3

    .line 268
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 269
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 270
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 271
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v1, :cond_0

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v2, :cond_0

    .line 272
    iput v1, p0, Lcom/qianhe/yct/view/HdImageView;->srcWidth:I

    .line 273
    iput v2, p0, Lcom/qianhe/yct/view/HdImageView;->srcHeight:I

    .line 274
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-lez p1, :cond_1

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v2, :cond_1

    int-to-float v2, v2

    int-to-float p1, p1

    div-float/2addr v2, p1

    int-to-float p1, v1

    mul-float p1, p1, v2

    .line 276
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/view/HdImageView;->srcWidth:I

    .line 277
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float p1, p1

    mul-float p1, p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/view/HdImageView;->srcHeight:I

    return-void

    .line 281
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_1
    return-void

    .line 285
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 286
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 287
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/view/HdImageView;->srcWidth:I

    .line 288
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/view/HdImageView;->srcHeight:I

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 107
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 108
    iget v0, p0, Lcom/qianhe/yct/view/HdImageView;->imageResId:I

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/view/HdImageView;->ensureSourceBitmapLoaded()V

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 123
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {v0}, Lcom/qianhe/yct/view/HdImageView;->ensureDefaultLayoutGravity(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 128
    :cond_0
    iget v0, p0, Lcom/qianhe/yct/view/HdImageView;->imageResId:I

    if-eqz v0, :cond_1

    .line 129
    invoke-direct {p0}, Lcom/qianhe/yct/view/HdImageView;->ensureSourceBitmapLoaded()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 216
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 217
    invoke-direct {p0}, Lcom/qianhe/yct/view/HdImageView;->recycleSourceBitmap()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 188
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 189
    iget-object v0, p0, Lcom/qianhe/yct/view/HdImageView;->sourceBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 194
    iget-object v2, p0, Lcom/qianhe/yct/view/HdImageView;->sourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 195
    iget-object v3, p0, Lcom/qianhe/yct/view/HdImageView;->sourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-lez v0, :cond_3

    if-lez v1, :cond_3

    if-lez v2, :cond_3

    if-gtz v3, :cond_1

    goto :goto_0

    .line 200
    :cond_1
    invoke-static {v2, v3, v0, v1}, Lcom/qianhe/yct/view/HdImageView;->calculateFitCenterSize(IIII)[I

    move-result-object v4

    const/4 v5, 0x0

    .line 201
    aget v6, v4, v5

    const/4 v7, 0x1

    .line 202
    aget v4, v4, v7

    if-lez v6, :cond_3

    if-gtz v4, :cond_2

    goto :goto_0

    :cond_2
    sub-int/2addr v0, v6

    int-to-float v0, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v0, v7

    sub-int/2addr v1, v4

    int-to-float v1, v1

    div-float/2addr v1, v7

    .line 209
    iget-object v7, p0, Lcom/qianhe/yct/view/HdImageView;->srcRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 210
    iget-object v2, p0, Lcom/qianhe/yct/view/HdImageView;->destRect:Landroid/graphics/RectF;

    int-to-float v3, v6

    add-float/2addr v3, v0

    int-to-float v4, v4

    add-float/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 211
    iget-object v0, p0, Lcom/qianhe/yct/view/HdImageView;->sourceBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/qianhe/yct/view/HdImageView;->srcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/qianhe/yct/view/HdImageView;->destRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/qianhe/yct/view/HdImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 152
    iget-object v0, p0, Lcom/qianhe/yct/view/HdImageView;->sourceBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/qianhe/yct/view/HdImageView;->srcWidth:I

    .line 153
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/view/HdImageView;->sourceBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/qianhe/yct/view/HdImageView;->srcHeight:I

    :goto_1
    const/4 v2, 0x0

    if-lez v0, :cond_8

    if-gtz v1, :cond_2

    goto :goto_2

    .line 159
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 160
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-eqz v4, :cond_3

    if-gtz v3, :cond_4

    :cond_3
    move v3, v0

    :cond_4
    int-to-float v5, v3

    int-to-float v1, v1

    mul-float v5, v5, v1

    int-to-float v0, v0

    div-float/2addr v5, v0

    .line 165
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 166
    iget v6, p0, Lcom/qianhe/yct/view/HdImageView;->maxDisplayHeight:I

    if-lez v6, :cond_5

    if-le v5, v6, :cond_5

    int-to-float v3, v6

    mul-float v3, v3, v0

    div-float/2addr v3, v1

    .line 168
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move v5, v6

    .line 171
    :cond_5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 172
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-eqz p2, :cond_6

    if-lez v6, :cond_6

    if-le v5, v6, :cond_6

    int-to-float p2, v6

    mul-float p2, p2, v0

    div-float/2addr p2, v1

    .line 175
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v3

    move v5, v6

    :cond_6
    const/high16 p2, -0x80000000

    if-ne v4, p2, :cond_7

    .line 178
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-le v3, p2, :cond_7

    .line 179
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float p1, v3

    mul-float p1, p1, v1

    div-float/2addr p1, v0

    .line 180
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 183
    :cond_7
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    .line 155
    :cond_8
    :goto_2
    invoke-virtual {p0, v2, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 86
    iget v0, p0, Lcom/qianhe/yct/view/HdImageView;->imageResId:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/view/HdImageView;->sourceBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-void

    .line 89
    :cond_0
    iput p1, p0, Lcom/qianhe/yct/view/HdImageView;->imageResId:I

    .line 90
    invoke-direct {p0}, Lcom/qianhe/yct/view/HdImageView;->recycleSourceBitmap()V

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/qianhe/yct/view/HdImageView;->cachedDrawableState:[I

    const/4 v0, 0x0

    .line 92
    iput v0, p0, Lcom/qianhe/yct/view/HdImageView;->srcWidth:I

    .line 93
    iput v0, p0, Lcom/qianhe/yct/view/HdImageView;->srcHeight:I

    if-nez p1, :cond_1

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 99
    :cond_1
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/HdImageView;->resolveSourceSize(I)V

    .line 100
    invoke-direct {p0}, Lcom/qianhe/yct/view/HdImageView;->ensureSourceBitmapLoaded()V

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 117
    invoke-static {p1}, Lcom/qianhe/yct/view/HdImageView;->ensureDefaultLayoutGravity(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 118
    invoke-super {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setMaxDisplayHeight(I)V
    .locals 1

    .line 77
    iget v0, p0, Lcom/qianhe/yct/view/HdImageView;->maxDisplayHeight:I

    if-ne v0, p1, :cond_0

    return-void

    .line 80
    :cond_0
    iput p1, p0, Lcom/qianhe/yct/view/HdImageView;->maxDisplayHeight:I

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
