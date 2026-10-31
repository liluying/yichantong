.class public abstract Landroidx/compose/ui/text/style/Hyphens;
.super Ljava/lang/Object;
.source "Hyphens.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/style/Hyphens$Companion;
    }
.end annotation


# static fields
.field private static final Auto:I

.field public static final Companion:Landroidx/compose/ui/text/style/Hyphens$Companion;

.field private static final None:I

.field private static final Unspecified:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/style/Hyphens$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/Hyphens$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/Hyphens;->Companion:Landroidx/compose/ui/text/style/Hyphens$Companion;

    const/4 v0, 0x1

    .line 62
    invoke-static {v0}, Landroidx/compose/ui/text/style/Hyphens;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/Hyphens;->None:I

    const/4 v0, 0x2

    .line 77
    invoke-static {v0}, Landroidx/compose/ui/text/style/Hyphens;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/Hyphens;->Auto:I

    const/high16 v0, -0x80000000

    .line 83
    invoke-static {v0}, Landroidx/compose/ui/text/style/Hyphens;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/Hyphens;->Unspecified:I

    return-void
.end method

.method public static final synthetic access$getUnspecified$cp()I
    .locals 1

    .line 44
    sget v0, Landroidx/compose/ui/text/style/Hyphens;->Unspecified:I

    return v0
.end method

.method private static constructor-impl(I)I
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

.method public static hashCode-impl(I)I
    .locals 0

    .line 0
    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 1

    .line 87
    sget v0, Landroidx/compose/ui/text/style/Hyphens;->None:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/Hyphens;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Hyphens.None"

    return-object p0

    .line 88
    :cond_0
    sget v0, Landroidx/compose/ui/text/style/Hyphens;->Auto:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/Hyphens;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Hyphens.Auto"

    return-object p0

    .line 89
    :cond_1
    sget v0, Landroidx/compose/ui/text/style/Hyphens;->Unspecified:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/Hyphens;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Hyphens.Unspecified"

    return-object p0

    .line 90
    :cond_2
    const-string p0, "Invalid"

    return-object p0
.end method
