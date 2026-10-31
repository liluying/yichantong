.class public final Lcom/qianhe/baselib/coord/EngineeringEllipsoidProjDef$EllipsoidParams;
.super Ljava/lang/Object;
.source "EngineeringEllipsoidProjDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/baselib/coord/EngineeringEllipsoidProjDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EllipsoidParams"
.end annotation


# instance fields
.field public final a:D

.field public final f:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-wide p1, p0, Lcom/qianhe/baselib/coord/EngineeringEllipsoidProjDef$EllipsoidParams;->a:D

    .line 143
    iput-wide p3, p0, Lcom/qianhe/baselib/coord/EngineeringEllipsoidProjDef$EllipsoidParams;->f:D

    return-void
.end method
