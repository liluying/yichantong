.class public Lcom/qianhe/baselib/base/BaseProEntity;
.super Ljava/lang/Object;
.source "BaseProEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public baseStationElev:D

.field public baseStationLat:D

.field public baseStationLon:D

.field public belongEngineeringId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "belong_engineering_id"
    .end annotation
.end field

.field public transient belongUid:J

.field public cadPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "cad_path"
        }
        value = "cadPath"
    .end annotation
.end field

.field public coordinateSystem:Ljava/lang/String;

.field public corsHost:Ljava/lang/String;

.field public corsMount:Ljava/lang/String;

.field public corsName:Ljava/lang/String;

.field public corsPassword:Ljava/lang/String;

.field public corsPort:I

.field public corsUserName:Ljava/lang/String;

.field public transient createTime:J

.field public editState:I

.field public engineeringLocalId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "engineering_local_id"
    .end annotation
.end field

.field public engineeringUuid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "engineering_uuid"
    .end annotation
.end field

.field public transient id:J

.field public transient name:Ljava/lang/String;

.field public transient projectId:J

.field public transient projectUUid:Ljava/lang/String;

.field public shovelTipType:I

.field public showUnit:I

.field public subType:I

.field public transient type:I

.field public transient updateTime:J

.field public transient version:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/qianhe/baselib/base/BaseProEntity;->corsHost:Ljava/lang/String;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    return-void
.end method
