.class Lcom/qh/xcad/XCadPathChunk;
.super Ljava/lang/Object;
.source "XCadPathChunk.java"


# instance fields
.field color:I

.field fill:Z

.field lodPathCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field maxX:D

.field maxY:D

.field minX:D

.field minY:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setBox(DDDD)V
    .locals 0

    .line 24
    iput-wide p1, p0, Lcom/qh/xcad/XCadPathChunk;->minX:D

    .line 25
    iput-wide p3, p0, Lcom/qh/xcad/XCadPathChunk;->minY:D

    .line 26
    iput-wide p1, p0, Lcom/qh/xcad/XCadPathChunk;->maxX:D

    .line 27
    iput-wide p7, p0, Lcom/qh/xcad/XCadPathChunk;->maxY:D

    return-void
.end method
