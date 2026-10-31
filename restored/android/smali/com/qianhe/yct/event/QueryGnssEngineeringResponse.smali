.class public Lcom/qianhe/yct/event/QueryGnssEngineeringResponse;
.super Ljava/lang/Object;
.source "QueryGnssEngineeringResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;,
        Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$Projection;,
        Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;
    }
.end annotation


# instance fields
.field public errMsg:Ljava/lang/String;

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;",
            ">;"
        }
    .end annotation
.end field

.field public state:I

.field public totalCount:J


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse;->state:I

    .line 13
    iput-object p2, p0, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse;->errMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse;->state:I

    .line 18
    iput-object p2, p0, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse;->errMsg:Ljava/lang/String;

    .line 19
    iput-wide p3, p0, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse;->totalCount:J

    .line 20
    iput-object p5, p0, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse;->list:Ljava/util/List;

    return-void
.end method
