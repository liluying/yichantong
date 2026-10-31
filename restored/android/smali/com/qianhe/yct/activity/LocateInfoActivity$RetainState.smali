.class public Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;
.super Ljava/lang/Object;
.source "LocateInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/activity/LocateInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetainState"
.end annotation


# instance fields
.field public baseInited:Z

.field public baseStation:Lcom/qianhe/baselib/bean/BaseStationEntity;

.field public bestPos:Lcom/qianhe/baselib/bean/BestPosEntity;

.field public dop:Lcom/qianhe/baselib/bean/GPDOPEntity;

.field public gga:Lcom/qianhe/baselib/bean/GGAEntity;

.field public gst:Lcom/qianhe/baselib/bean/GSTEntity;

.field public ins:Lcom/qianhe/baselib/bean/InsNavi;

.field public locationInited:Z

.field public final sauPRNList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final savEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/SAVEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final savPRNList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final snrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/SNREntity;",
            ">;"
        }
    .end annotation
.end field

.field public snrStreamInited:Z

.field public starMapInited:Z

.field public final starSauPRN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final starSavPRN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field tabIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->snrList:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->savPRNList:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->sauPRNList:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->savEntities:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->starSavPRN:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->starSauPRN:Ljava/util/List;

    return-void
.end method
