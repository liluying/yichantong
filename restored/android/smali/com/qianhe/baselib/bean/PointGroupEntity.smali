.class public Lcom/qianhe/baselib/bean/PointGroupEntity;
.super Ljava/lang/Object;
.source "PointGroupEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_GROUP_NAME:Ljava/lang/String; = "\u9ed8\u8ba4"


# instance fields
.field public belongEngineeringId:J

.field public belongUid:J

.field public createTime:J

.field public editState:I

.field public engineeringLocalId:J

.field public engineeringUuid:Ljava/lang/String;

.field public groupId:J

.field public groupLocalId:J

.field public groupUuid:Ljava/lang/String;

.field public localIds:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public remark:Ljava/lang/String;

.field public updateTime:J

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupUuid:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/qianhe/baselib/bean/PointGroupEntity;->name:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/qianhe/baselib/bean/PointGroupEntity;->remark:Ljava/lang/String;

    .line 20
    const-string v1, "[]"

    iput-object v1, p0, Lcom/qianhe/baselib/bean/PointGroupEntity;->localIds:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/qianhe/baselib/bean/PointGroupEntity;->engineeringUuid:Ljava/lang/String;

    return-void
.end method
