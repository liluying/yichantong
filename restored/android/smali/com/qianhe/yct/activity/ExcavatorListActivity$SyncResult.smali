.class Lcom/qianhe/yct/activity/ExcavatorListActivity$SyncResult;
.super Ljava/lang/Object;
.source "ExcavatorListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/activity/ExcavatorListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncResult"
.end annotation


# instance fields
.field localList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ExcavatorEntity;",
            ">;"
        }
    .end annotation
.end field

.field final localToCreate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ExcavatorEntity;",
            ">;"
        }
    .end annotation
.end field

.field final platformToDelete:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ExcavatorEntity;",
            ">;"
        }
    .end annotation
.end field

.field final toModifyOnPlatform:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ExcavatorEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$SyncResult;->toModifyOnPlatform:Ljava/util/List;

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$SyncResult;->platformToDelete:Ljava/util/List;

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$SyncResult;->localToCreate:Ljava/util/List;

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$SyncResult;->localList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/qianhe/yct/activity/ExcavatorListActivity-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity$SyncResult;-><init>()V

    return-void
.end method
