.class Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$1;
.super Ljava/lang/Object;
.source "MultiPointAreaWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/view/map/OnLoadMapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$1;->this$0:Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMapResult(Z)V
    .locals 12

    if-eqz p1, :cond_2

    .line 164
    iget-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$1;->this$0:Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->-$$Nest$fgetcurPositionWgs84(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;)[D

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 167
    iget-object v3, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$1;->this$0:Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->-$$Nest$fgetmapController(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;)Lcom/qianhe/yct/view/map/MapController;

    move-result-object v3

    new-instance v4, Lcom/qianhe/yct/view/map/GeoPoint;

    aget-wide v5, p1, v2

    aget-wide v7, p1, v1

    aget-wide v9, p1, v0

    invoke-direct/range {v4 .. v10}, Lcom/qianhe/yct/view/map/GeoPoint;-><init>(DDD)V

    invoke-virtual {v3, v4, v2}, Lcom/qianhe/yct/view/map/MapController;->updateLocation(Lcom/qianhe/yct/view/map/GeoPoint;Z)V

    .line 174
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 175
    iget-object v3, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$1;->this$0:Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->-$$Nest$fgetpointsList(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    .line 176
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertGAUSSXYToGeodetic([D)[D

    move-result-object v4

    .line 177
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToWGS84([D)[D

    move-result-object v4

    .line 178
    new-instance v5, Lcom/qianhe/yct/view/map/GeoPoint;

    aget-wide v6, v4, v2

    aget-wide v8, v4, v1

    aget-wide v10, v4, v0

    invoke-direct/range {v5 .. v11}, Lcom/qianhe/yct/view/map/GeoPoint;-><init>(DDD)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$1;->this$0:Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->-$$Nest$fgetmapController(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;)Lcom/qianhe/yct/view/map/MapController;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/qianhe/yct/view/map/MapController;->addPolyline(Ljava/util/List;Z)V

    return-void

    .line 187
    :cond_2
    const-class p1, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "\u52a0\u8f7d\u5730\u56fe\u5931\u8d25!"

    nop

    nop

    nop

    return-void
.end method
