.class public Lcom/github/mikephil/charting/data/PieEntry;
.super Lcom/github/mikephil/charting/data/Entry;
.source "PieEntry.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# virtual methods
.method public getX()F
    .locals 2

    .line 78
    const-string v0, "DEPRECATED"

    const-string v1, "Pie entries do not have x values"

    nop

    nop

    nop

    .line 79
    invoke-super {p0}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v0

    return v0
.end method

.method public setX(F)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/data/Entry;->setX(F)V

    .line 72
    const-string p1, "DEPRECATED"

    const-string v0, "Pie entries do not have x values"

    nop

    nop

    nop

    return-void
.end method
