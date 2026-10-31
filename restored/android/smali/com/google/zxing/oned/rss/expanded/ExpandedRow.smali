.class final Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
.super Ljava/lang/Object;
.source "ExpandedRow.java"


# instance fields
.field private final pairs:Ljava/util/List;

.field private final rowNumber:I


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->pairs:Ljava/util/List;

    .line 32
    iput p2, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->rowNumber:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 57
    instance-of v0, p1, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 60
    :cond_0
    check-cast p1, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 61
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->pairs:Ljava/util/List;

    iget-object p1, p1, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->pairs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method getPairs()Ljava/util/List;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->pairs:Ljava/util/List;

    return-object v0
.end method

.method getRowNumber()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->rowNumber:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method isEquivalent(Ljava/util/List;)Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->pairs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->pairs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
