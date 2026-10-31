.class public final Lcom/qh/xcad/XCadScene;
.super Ljava/lang/Object;
.source "XCadScene.java"


# instance fields
.field public final bbox:[D

.field public final entities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qh/xcad/XCadEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final pointPoolBase:J

.field public final textPoolBase:J

.field public final version:I


# direct methods
.method public constructor <init>(I[DLjava/util/List;Ljava/util/List;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[D",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/qh/xcad/XCadEntity;",
            ">;JJ)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/qh/xcad/XCadScene;->version:I

    .line 30
    iput-object p2, p0, Lcom/qh/xcad/XCadScene;->bbox:[D

    .line 31
    iput-object p3, p0, Lcom/qh/xcad/XCadScene;->layers:Ljava/util/List;

    .line 32
    iput-object p4, p0, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    .line 33
    iput-wide p5, p0, Lcom/qh/xcad/XCadScene;->pointPoolBase:J

    .line 34
    iput-wide p7, p0, Lcom/qh/xcad/XCadScene;->textPoolBase:J

    return-void
.end method


# virtual methods
.method public entityCount()I
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
