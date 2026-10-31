.class final Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;
.super Ljava/lang/Object;
.source "CADEntityChooseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/activity/CADEntityChooseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CollectedPointRef"
.end annotation


# instance fields
.field final entityIndex:I

.field final pointIndex:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    iput p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->entityIndex:I

    .line 1019
    iput p2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->pointIndex:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1027
    :cond_0
    instance-of v1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1030
    :cond_1
    check-cast p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;

    .line 1031
    iget v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->entityIndex:I

    iget v3, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->entityIndex:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->pointIndex:I

    iget p1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->pointIndex:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1036
    iget v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->entityIndex:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->pointIndex:I

    add-int/2addr v0, v1

    return v0
.end method
