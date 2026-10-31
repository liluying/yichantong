.class public Lcom/qianhe/yct/event/PointSyncResponse;
.super Ljava/lang/Object;
.source "PointSyncResponse.java"


# instance fields
.field public entities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/PointlibEntity;",
            ">;"
        }
    .end annotation
.end field

.field public entity:Lcom/qianhe/baselib/bean/PointlibEntity;

.field public errMsg:Ljava/lang/String;

.field public ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public state:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/qianhe/yct/event/PointSyncResponse;->state:I

    .line 16
    iput-object p2, p0, Lcom/qianhe/yct/event/PointSyncResponse;->errMsg:Ljava/lang/String;

    return-void
.end method
