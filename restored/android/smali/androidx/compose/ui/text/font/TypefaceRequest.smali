.class public abstract Landroidx/compose/ui/text/font/TypefaceRequest;
.super Ljava/lang/Object;
.source "FontFamilyResolver.kt"


# instance fields
.field private final fontStyle:I

.field private final fontSynthesis:I

.field private final fontWeight:Landroidx/compose/ui/text/font/FontWeight;

.field private final resourceLoaderCacheKey:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic copy-e1PVR60$default(Landroidx/compose/ui/text/font/TypefaceRequest;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;IILjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/ui/text/font/TypefaceRequest;
    .locals 0

    .line 0
    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Landroidx/compose/ui/text/font/TypefaceRequest;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget p3, p0, Landroidx/compose/ui/text/font/TypefaceRequest;->fontStyle:I

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget p4, p0, Landroidx/compose/ui/text/font/TypefaceRequest;->fontSynthesis:I

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Landroidx/compose/ui/text/font/TypefaceRequest;->resourceLoaderCacheKey:Ljava/lang/Object;

    :cond_4
    move p6, p4

    move-object p7, p5

    move-object p4, p2

    move p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Landroidx/compose/ui/text/font/TypefaceRequest;->copy-e1PVR60(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;IILjava/lang/Object;)Landroidx/compose/ui/text/font/TypefaceRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract copy-e1PVR60(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;IILjava/lang/Object;)Landroidx/compose/ui/text/font/TypefaceRequest;
.end method

.method public abstract getFontFamily()Landroidx/compose/ui/text/font/FontFamily;
.end method

.method public abstract getFontStyle-_-LCdwA()I
.end method

.method public abstract getFontWeight()Landroidx/compose/ui/text/font/FontWeight;
.end method
