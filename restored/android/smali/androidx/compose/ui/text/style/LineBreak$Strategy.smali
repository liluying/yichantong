.class public abstract Landroidx/compose/ui/text/style/LineBreak$Strategy;
.super Ljava/lang/Object;
.source "LineBreak.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/style/LineBreak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Strategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/style/LineBreak$Strategy$Companion;
    }
.end annotation


# static fields
.field private static final Balanced:I

.field public static final Companion:Landroidx/compose/ui/text/style/LineBreak$Strategy$Companion;

.field private static final HighQuality:I

.field private static final Simple:I

.field private static final Unspecified:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/style/LineBreak$Strategy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/LineBreak$Strategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/LineBreak$Strategy;->Companion:Landroidx/compose/ui/text/style/LineBreak$Strategy$Companion;

    const/4 v0, 0x1

    .line 197
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineBreak$Strategy;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/LineBreak$Strategy;->Simple:I

    const/4 v0, 0x2

    .line 212
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineBreak$Strategy;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/LineBreak$Strategy;->HighQuality:I

    const/4 v0, 0x3

    .line 225
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineBreak$Strategy;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/LineBreak$Strategy;->Balanced:I

    const/4 v0, 0x0

    .line 231
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineBreak$Strategy;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/LineBreak$Strategy;->Unspecified:I

    return-void
.end method

.method public static final synthetic access$getBalanced$cp()I
    .locals 1

    .line 181
    sget v0, Landroidx/compose/ui/text/style/LineBreak$Strategy;->Balanced:I

    return v0
.end method

.method public static final synthetic access$getHighQuality$cp()I
    .locals 1

    .line 181
    sget v0, Landroidx/compose/ui/text/style/LineBreak$Strategy;->HighQuality:I

    return v0
.end method

.method public static final synthetic access$getSimple$cp()I
    .locals 1

    .line 181
    sget v0, Landroidx/compose/ui/text/style/LineBreak$Strategy;->Simple:I

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

.method public static toString-impl(I)Ljava/lang/String;
    .locals 1

    .line 235
    sget v0, Landroidx/compose/ui/text/style/LineBreak$Strategy;->Simple:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/LineBreak$Strategy;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Strategy.Simple"

    return-object p0

    .line 236
    :cond_0
    sget v0, Landroidx/compose/ui/text/style/LineBreak$Strategy;->HighQuality:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/LineBreak$Strategy;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Strategy.HighQuality"

    return-object p0

    .line 237
    :cond_1
    sget v0, Landroidx/compose/ui/text/style/LineBreak$Strategy;->Balanced:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/LineBreak$Strategy;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Strategy.Balanced"

    return-object p0

    .line 238
    :cond_2
    sget v0, Landroidx/compose/ui/text/style/LineBreak$Strategy;->Unspecified:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/LineBreak$Strategy;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "Strategy.Unspecified"

    return-object p0

    .line 239
    :cond_3
    const-string p0, "Invalid"

    return-object p0
.end method
