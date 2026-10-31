.class Lcom/qianhe/yct/activity/dike/DikeWorkActivity$9;
.super Ljava/lang/Object;
.source "DikeWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/view/map/OnLoadMapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$9;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMapResult(Z)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p1, :cond_1

    .line 304
    iget-object v5, v0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$9;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {v5}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetcurPositionWgs84(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)[D

    move-result-object v5

    if-eqz v5, :cond_0

    .line 307
    iget-object v6, v0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$9;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {v6}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetmapController(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/view/map/MapController;

    move-result-object v6

    new-instance v7, Lcom/qianhe/yct/view/map/GeoPoint;

    aget-wide v8, v5, v2

    aget-wide v10, v5, v3

    aget-wide v12, v5, v4

    invoke-direct/range {v7 .. v13}, Lcom/qianhe/yct/view/map/GeoPoint;-><init>(DDD)V

    invoke-virtual {v6, v7, v2}, Lcom/qianhe/yct/view/map/MapController;->updateLocation(Lcom/qianhe/yct/view/map/GeoPoint;Z)V

    .line 314
    :cond_0
    iget-object v5, v0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$9;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {v5}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetdikeEntity(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/baselib/bean/DikeEntity;

    move-result-object v5

    iget-wide v5, v5, Lcom/qianhe/baselib/bean/DikeEntity;->targetLon1:D

    iget-object v7, v0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$9;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {v7}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetdikeEntity(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/baselib/bean/DikeEntity;

    move-result-object v7

    iget-wide v7, v7, Lcom/qianhe/baselib/bean/DikeEntity;->targetLat1:D

    iget-object v9, v0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$9;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {v9}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetdikeEntity(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/baselib/bean/DikeEntity;

    move-result-object v9

    iget-wide v9, v9, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation1:D

    new-array v11, v1, [D

    aput-wide v5, v11, v3

    aput-wide v7, v11, v2

    aput-wide v9, v11, v4

    .line 315
    iget-object v5, v0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$9;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {v5}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetdikeEntity(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/baselib/bean/DikeEntity;

    move-result-object v5

    iget-wide v5, v5, Lcom/qianhe/baselib/bean/DikeEntity;->targetLon2:D

    iget-object v7, v0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$9;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {v7}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetdikeEntity(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/baselib/bean/DikeEntity;

    move-result-object v7

    iget-wide v7, v7, Lcom/qianhe/baselib/bean/DikeEntity;->targetLat2:D

    iget-object v9, v0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$9;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {v9}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetdikeEntity(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/baselib/bean/DikeEntity;

    move-result-object v9

    iget-wide v9, v9, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation2:D

    new-array v1, v1, [D

    aput-wide v5, v1, v3

    aput-wide v7, v1, v2

    aput-wide v9, v1, v4

    .line 317
    iget-object v5, v0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$9;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {v5}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetdikeEntity(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/baselib/bean/DikeEntity;

    move-result-object v5

    iget-wide v5, v5, Lcom/qianhe/baselib/bean/DikeEntity;->ratio:D

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    div-double/2addr v5, v7

    .line 319
    iget-object v7, v0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$9;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {v7}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetdikeEntity(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/baselib/bean/DikeEntity;

    move-result-object v7

    iget-wide v7, v7, Lcom/qianhe/baselib/bean/DikeEntity;->length:D

    mul-double v5, v5, v7

    .line 321
    iget-object v7, v0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$9;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {v7}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetdikeEntity(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/baselib/bean/DikeEntity;

    move-result-object v7

    iget-wide v7, v7, Lcom/qianhe/baselib/bean/DikeEntity;->length:D

    invoke-static {v5, v6, v7, v8}, Lcom/qianhe/baselib/utils/TrianglefunctionUtils;->calculateHypotenuse(DD)D

    move-result-wide v5

    .line 322
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToWGS84([D)[D

    move-result-object v7

    .line 323
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v8

    invoke-static {v11, v1, v5, v6}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculatePointOnLineDirection([D[DD)[D

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToWGS84([D)[D

    move-result-object v1

    .line 325
    iget-object v5, v0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$9;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {v5}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetmapController(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/view/map/MapController;

    move-result-object v5

    new-instance v8, Lcom/qianhe/yct/view/map/GeoPoint;

    aget-wide v9, v7, v2

    aget-wide v11, v7, v3

    aget-wide v13, v7, v4

    invoke-direct/range {v8 .. v14}, Lcom/qianhe/yct/view/map/GeoPoint;-><init>(DDD)V

    new-instance v9, Lcom/qianhe/yct/view/map/GeoPoint;

    aget-wide v10, v1, v2

    aget-wide v12, v1, v3

    aget-wide v14, v1, v4

    invoke-direct/range {v9 .. v15}, Lcom/qianhe/yct/view/map/GeoPoint;-><init>(DDD)V

    invoke-virtual {v5, v8, v9}, Lcom/qianhe/yct/view/map/MapController;->addMarkerOrRoute(Lcom/qianhe/yct/view/map/GeoPoint;Lcom/qianhe/yct/view/map/GeoPoint;)V

    return-void

    .line 336
    :cond_1
    const-class v1, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u52a0\u8f7d\u5730\u56fe\u5931\u8d25!"

    nop

    nop

    nop

    return-void
.end method
