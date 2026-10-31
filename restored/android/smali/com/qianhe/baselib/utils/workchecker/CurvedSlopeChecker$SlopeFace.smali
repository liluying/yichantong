.class public Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeFace;
.super Ljava/lang/Object;
.source "CurvedSlopeChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlopeFace"
.end annotation


# instance fields
.field public final far0:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

.field public final far1:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

.field public final opening0:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

.field public final opening1:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeFace;->opening0:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    .line 35
    iput-object p2, p0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeFace;->opening1:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    .line 36
    iput-object p3, p0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeFace;->far0:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    .line 37
    iput-object p4, p0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeFace;->far1:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    return-void
.end method
