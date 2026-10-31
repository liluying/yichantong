.class Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$7;
.super Ljava/lang/Object;
.source "ArbitrarylineWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/view/map/OnLoadMapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMapResult(Z)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    .line 278
    iget-object p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->-$$Nest$fgetcurPositionWgs84(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)[D

    move-result-object p1

    if-eqz p1, :cond_0

    .line 281
    iget-object v3, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->-$$Nest$fgetmapController(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)Lcom/qianhe/yct/view/map/MapController;

    move-result-object v3

    new-instance v4, Lcom/qianhe/yct/view/map/GeoPoint;

    aget-wide v5, p1, v0

    aget-wide v7, p1, v1

    aget-wide v9, p1, v2

    invoke-direct/range {v4 .. v10}, Lcom/qianhe/yct/view/map/GeoPoint;-><init>(DDD)V

    invoke-virtual {v3, v4, v0}, Lcom/qianhe/yct/view/map/MapController;->updateLocation(Lcom/qianhe/yct/view/map/GeoPoint;Z)V

    .line 287
    :cond_0
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object p1

    iget-object v3, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->-$$Nest$fgetarbitraryLineEntity(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-result-object v3

    iget-wide v3, v3, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->lon:D

    iget-object v5, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    invoke-static {v5}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->-$$Nest$fgetarbitraryLineEntity(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-result-object v5

    iget-wide v5, v5, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->lat:D

    iget-object v7, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    invoke-static {v7}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->-$$Nest$fgetarbitraryLineEntity(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-result-object v7

    iget-wide v7, v7, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->elev:D

    iget-object v9, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    invoke-static {v9}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->-$$Nest$fgetarbitraryLineEntity(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-result-object v9

    iget-wide v9, v9, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->depth:D

    add-double/2addr v7, v9

    const/4 v9, 0x3

    new-array v9, v9, [D

    aput-wide v3, v9, v1

    aput-wide v5, v9, v0

    aput-wide v7, v9, v2

    invoke-virtual {p1, v9}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToWGS84([D)[D

    move-result-object p1

    .line 289
    iget-object v3, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->-$$Nest$fgetmapController(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)Lcom/qianhe/yct/view/map/MapController;

    move-result-object v3

    new-instance v4, Lcom/qianhe/yct/view/map/GeoPoint;

    aget-wide v5, p1, v0

    aget-wide v7, p1, v1

    aget-wide v9, p1, v2

    invoke-direct/range {v4 .. v10}, Lcom/qianhe/yct/view/map/GeoPoint;-><init>(DDD)V

    invoke-virtual {v3, v4}, Lcom/qianhe/yct/view/map/MapController;->addMarker(Lcom/qianhe/yct/view/map/GeoPoint;)V

    return-void

    .line 295
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
