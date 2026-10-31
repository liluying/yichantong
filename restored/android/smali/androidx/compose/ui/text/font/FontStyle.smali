.class public abstract Landroidx/compose/ui/text/font/FontStyle;
.super Ljava/lang/Object;
.source "FontStyle.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/font/FontStyle$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

.field private static final Italic:I

.field private static final Normal:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/font/FontStyle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/font/FontStyle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    const/4 v0, 0x0

    .line 43
    invoke-static {v0}, Landroidx/compose/ui/text/font/FontStyle;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/font/FontStyle;->Normal:I

    const/4 v0, 0x1

    .line 47
    invoke-static {v0}, Landroidx/compose/ui/text/font/FontStyle;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/font/FontStyle;->Italic:I

    return-void
.end method

.method public static final synthetic access$getItalic$cp()I
    .locals 1

    .line 24
    sget v0, Landroidx/compose/ui/text/font/FontStyle;->Italic:I

    return v0
.end method

.method public static final synthetic access$getNormal$cp()I
    .locals 1

    .line 24
    sget v0, Landroidx/compose/ui/text/font/FontStyle;->Normal:I

    return v0
.end method

.method public static constructor-impl(I)I
    .locals 0

    .line 0
    return p0
.end method

.method public static final equals-impl0(II)Z
    .locals 0

    .line 0
    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
