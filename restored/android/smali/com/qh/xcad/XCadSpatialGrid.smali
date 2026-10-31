.class public Lcom/qh/xcad/XCadSpatialGrid;
.super Ljava/lang/Object;
.source "XCadSpatialGrid.java"


# instance fields
.field cellSize:D

.field cells:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lcom/qh/xcad/XCadPathChunk;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    .line 14
    iput-wide v0, p0, Lcom/qh/xcad/XCadSpatialGrid;->cellSize:D

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qh/xcad/XCadSpatialGrid;->cells:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/qh/xcad/XCadSpatialGrid;->cells:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public insert(Lcom/qh/xcad/XCadPathChunk;)V
    .locals 9

    .line 24
    iget-wide v0, p1, Lcom/qh/xcad/XCadPathChunk;->minX:D

    iget-wide v2, p0, Lcom/qh/xcad/XCadSpatialGrid;->cellSize:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 25
    iget-wide v4, p1, Lcom/qh/xcad/XCadPathChunk;->minY:D

    div-double/2addr v4, v2

    double-to-int v1, v4

    .line 26
    iget-wide v4, p1, Lcom/qh/xcad/XCadPathChunk;->maxX:D

    div-double/2addr v4, v2

    double-to-int v4, v4

    .line 27
    iget-wide v5, p1, Lcom/qh/xcad/XCadPathChunk;->maxY:D

    div-double/2addr v5, v2

    double-to-int v2, v5

    :goto_0
    if-gt v0, v4, :cond_2

    move v3, v1

    :goto_1
    if-gt v3, v2, :cond_1

    .line 31
    invoke-virtual {p0, v0, v3}, Lcom/qh/xcad/XCadSpatialGrid;->key(II)J

    move-result-wide v5

    .line 35
    iget-object v7, p0, Lcom/qh/xcad/XCadSpatialGrid;->cells:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_0

    .line 37
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iget-object v8, p0, Lcom/qh/xcad/XCadSpatialGrid;->cells:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v8, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_0
    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method key(II)J
    .locals 4

    .line 0
    int-to-long v0, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    int-to-long p1, p2

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public query(DDDD)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDD)",
            "Ljava/util/List<",
            "Lcom/qh/xcad/XCadPathChunk;",
            ">;"
        }
    .end annotation

    .line 47
    iget-wide v0, p0, Lcom/qh/xcad/XCadSpatialGrid;->cellSize:D

    div-double/2addr p1, v0

    double-to-int p1, p1

    div-double/2addr p3, v0

    double-to-int p2, p3

    div-double/2addr p5, v0

    double-to-int p3, p5

    div-double/2addr p7, v0

    double-to-int p4, p7

    .line 52
    new-instance p5, Ljava/util/HashSet;

    invoke-direct {p5}, Ljava/util/HashSet;-><init>()V

    :goto_0
    if-gt p1, p3, :cond_2

    move p6, p2

    :goto_1
    if-gt p6, p4, :cond_1

    .line 56
    iget-object p7, p0, Lcom/qh/xcad/XCadSpatialGrid;->cells:Ljava/util/Map;

    invoke-virtual {p0, p1, p6}, Lcom/qh/xcad/XCadSpatialGrid;->key(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p8

    invoke-interface {p7, p8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/util/List;

    if-eqz p7, :cond_0

    .line 57
    invoke-interface {p5, p7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 p6, p6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 61
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method
