.class public Lcom/qianhe/ntripclientlib/event/MountPointsEvent;
.super Ljava/lang/Object;
.source "MountPointsEvent.java"


# instance fields
.field public mountPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/qianhe/ntripclientlib/event/MountPointsEvent;->mountPoints:Ljava/util/ArrayList;

    return-void
.end method
