.class public Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ArcTransition;
.super Ljava/lang/Object;
.source "CurvedSlopeChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArcTransition"
.end annotation


# instance fields
.field public final corner:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

.field public final edgeNext:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

.field public final edgePrev:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ArcTransition;->corner:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    .line 54
    iput-object p2, p0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ArcTransition;->edgePrev:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    .line 55
    iput-object p3, p0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ArcTransition;->edgeNext:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    return-void
.end method
