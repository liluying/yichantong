.class Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$7;
.super Ljava/lang/Object;
.source "CurvedSlopeWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/view/map/OnLoadMapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMapResult(Z)V
    .locals 11

    if-eqz p1, :cond_1

    .line 281
    iget-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->-$$Nest$fgetcurPositionWgs84(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)[D

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 284
    iget-object v3, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->-$$Nest$fgetmapController(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Lcom/qianhe/yct/view/map/MapController;

    move-result-object v3

    new-instance v4, Lcom/qianhe/yct/view/map/GeoPoint;

    aget-wide v5, p1, v2

    aget-wide v7, p1, v1

    aget-wide v9, p1, v0

    invoke-direct/range {v4 .. v10}, Lcom/qianhe/yct/view/map/GeoPoint;-><init>(DDD)V

    invoke-virtual {v3, v4, v2}, Lcom/qianhe/yct/view/map/MapController;->updateLocation(Lcom/qianhe/yct/view/map/GeoPoint;Z)V

    .line 290
    :cond_0
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object p1

    iget-object v3, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->-$$Nest$fgetmPointList(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    invoke-virtual {p1, v3}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertGAUSSXYToGeodetic([D)[D

    move-result-object p1

    .line 291
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToWGS84([D)[D

    move-result-object p1

    .line 293
    iget-object v3, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->-$$Nest$fgetmapController(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Lcom/qianhe/yct/view/map/MapController;

    move-result-object v3

    new-instance v4, Lcom/qianhe/yct/view/map/GeoPoint;

    aget-wide v5, p1, v2

    aget-wide v7, p1, v1

    aget-wide v9, p1, v0

    invoke-direct/range {v4 .. v10}, Lcom/qianhe/yct/view/map/GeoPoint;-><init>(DDD)V

    invoke-virtual {v3, v4}, Lcom/qianhe/yct/view/map/MapController;->addMarker(Lcom/qianhe/yct/view/map/GeoPoint;)V

    return-void

    .line 299
    :cond_1
    const-class p1, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "\u52a0\u8f7d\u5730\u56fe\u5931\u8d25!"

    nop

    nop

    nop

    return-void
.end method
