.class public Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;
.super Ljava/lang/Object;
.source "XCadItemAreaPoint.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/xcad/XCadItemAreaPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XCadItemPointInfo"
.end annotation


# instance fields
.field public info:Ljava/lang/String;

.field public infoVis:Z

.field public x:D

.field public y:D


# direct methods
.method public constructor <init>(DD)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->info:Ljava/lang/String;

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->infoVis:Z

    .line 61
    iput-wide p1, p0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->x:D

    .line 62
    iput-wide p3, p0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->y:D

    return-void
.end method

.method public constructor <init>(DDLjava/lang/String;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->infoVis:Z

    .line 55
    iput-wide p1, p0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->x:D

    .line 56
    iput-wide p3, p0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->y:D

    .line 57
    iput-object p5, p0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->info:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(DDLjava/lang/String;Z)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide p1, p0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->x:D

    .line 49
    iput-wide p3, p0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->y:D

    .line 50
    iput-object p5, p0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->info:Ljava/lang/String;

    .line 51
    iput-boolean p6, p0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->infoVis:Z

    return-void
.end method


# virtual methods
.method protected clone()Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;
    .locals 1

    .line 68
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->clone()Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    move-result-object v0

    return-object v0
.end method
