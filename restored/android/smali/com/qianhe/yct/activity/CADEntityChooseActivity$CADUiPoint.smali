.class Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;
.super Ljava/lang/Object;
.source "CADEntityChooseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/activity/CADEntityChooseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CADUiPoint"
.end annotation


# instance fields
.field check:Z

.field select:Z

.field vis:Z

.field xCadPoint:Lcom/qh/xcad/XCadPoint;

.field xPointIndex:I


# direct methods
.method public constructor <init>(ILcom/qh/xcad/XCadPoint;ZZ)V
    .locals 1

    .line 1075
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1070
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->select:Z

    .line 1076
    iput p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->xPointIndex:I

    .line 1077
    iput-object p2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->xCadPoint:Lcom/qh/xcad/XCadPoint;

    .line 1078
    iput-boolean p3, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->vis:Z

    .line 1079
    iput-boolean p4, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->check:Z

    return-void
.end method
