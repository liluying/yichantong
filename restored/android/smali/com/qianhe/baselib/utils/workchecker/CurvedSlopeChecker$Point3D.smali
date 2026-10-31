.class public Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;
.super Ljava/lang/Object;
.source "CurvedSlopeChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point3D"
.end annotation


# instance fields
.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    .line 21
    iput-wide p3, p0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    .line 22
    iput-wide p5, p0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->z:D

    return-void
.end method
