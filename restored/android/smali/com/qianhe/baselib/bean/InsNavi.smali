.class public Lcom/qianhe/baselib/bean/InsNavi;
.super Ljava/lang/Object;
.source "InsNavi.java"


# instance fields
.field public deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field public east:D

.field public eastM:D

.field public eastR:D

.field public elevation:D

.field public elevationM:D

.field public elevationR:D

.field public geodeticElev:D

.field public geodeticElevM:D

.field public geodeticElevR:D

.field public geodeticLat:D

.field public geodeticLatM:D

.field public geodeticLatR:D

.field public geodeticLon:D

.field public geodeticLonM:D

.field public geodeticLonR:D

.field public headingDegrees:D

.field public insStaus:I

.field public insStausHex:Ljava/lang/String;

.field public latitude:D

.field public latitudeM:D

.field public latitudeR:D

.field public longitude:D

.field public longitudeM:D

.field public longitudeR:D

.field public north:D

.field public northM:D

.field public northR:D

.field public pitchDegrees:D

.field public rollDegrees:D

.field public utc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/InsNavi;->latitudeM:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/InsNavi;->latitudeR:D

    .line 23
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/InsNavi;->longitudeM:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/InsNavi;->longitudeR:D

    .line 24
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/InsNavi;->east:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/InsNavi;->eastM:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/InsNavi;->eastR:D

    .line 25
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/InsNavi;->north:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/InsNavi;->northM:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/InsNavi;->northR:D

    .line 27
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    .line 29
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLon:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLonM:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLonR:D

    .line 30
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLat:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLatM:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLatR:D

    .line 31
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/InsNavi;->geodeticElev:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/InsNavi;->geodeticElevM:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/InsNavi;->geodeticElevR:D

    return-void
.end method
