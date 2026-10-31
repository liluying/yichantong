.class public final Landroidx/compose/ui/node/TreeSet;
.super Ljava/util/TreeSet;
.source "JvmTreeSet.jvm.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/TreeSet<",
        "TE;>;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public bridge getSize()I
    .locals 1

    .line 20
    invoke-super {p0}, Ljava/util/TreeSet;->size()I

    move-result v0

    return v0
.end method

.method public final bridge size()I
    .locals 1

    .line 20
    invoke-virtual {p0}, Landroidx/compose/ui/node/TreeSet;->getSize()I

    move-result v0

    return v0
.end method
