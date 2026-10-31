.class public Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;
.super Ljava/lang/Object;
.source "GetBaseStationResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public PDOP:D

.field public antennaOrder:Ljava/lang/String;

.field public cutoffAngle:I

.field public dataformatList:Ljava/lang/String;

.field public deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field public diffFormat:Ljava/lang/String;

.field public elev:D

.field public id:Ljava/lang/String;

.field public lat:D

.field public lon:D

.field public startMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->startMode:Ljava/lang/String;

    return-void
.end method
