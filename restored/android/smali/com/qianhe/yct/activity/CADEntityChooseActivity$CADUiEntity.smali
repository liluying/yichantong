.class Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;
.super Ljava/lang/Object;
.source "CADEntityChooseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/activity/CADEntityChooseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CADUiEntity"
.end annotation


# instance fields
.field points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;",
            ">;"
        }
    .end annotation
.end field

.field xCadEntity:Lcom/qh/xcad/XCadEntity;

.field xCadEntityIndex:I


# direct methods
.method public constructor <init>(ILcom/qh/xcad/XCadEntity;Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/qh/xcad/XCadEntity;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1042
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->points:Ljava/util/List;

    .line 1050
    iput-object p2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->xCadEntity:Lcom/qh/xcad/XCadEntity;

    .line 1051
    iput p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->xCadEntityIndex:I

    if-eqz p2, :cond_3

    .line 1053
    iget-object p1, p2, Lcom/qh/xcad/XCadEntity;->points:[D

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1055
    :goto_0
    invoke-virtual {p2}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1056
    new-instance v2, Lcom/qh/xcad/XCadPoint;

    invoke-virtual {p2, v0}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v3

    .line 1057
    invoke-virtual {p2, v0}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v5

    invoke-virtual {p2, v0}, Lcom/qh/xcad/XCadEntity;->pointZ(I)D

    move-result-wide v7

    invoke-direct/range {v2 .. v8}, Lcom/qh/xcad/XCadPoint;-><init>(DDD)V

    .line 1058
    iget-object v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->points:Ljava/util/List;

    new-instance v3, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    const/4 v4, 0x1

    if-eqz p3, :cond_1

    .line 1060
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz p4, :cond_2

    .line 1061
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    invoke-direct {v3, v0, v2, v5, v4}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;-><init>(ILcom/qh/xcad/XCadPoint;ZZ)V

    .line 1058
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
