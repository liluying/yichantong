.class Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$7;
.super Ljava/lang/Object;
.source "ThreePointAreaWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/view/map/OnLoadMapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMapResult(Z)V
    .locals 9

    if-eqz p1, :cond_1

    .line 285
    iget-object p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->-$$Nest$fgetcurPositionWgs84(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)[D

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->-$$Nest$fgetmapController(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)Lcom/qianhe/yct/view/map/MapController;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/view/map/GeoPoint;

    aget-wide v3, p1, v0

    const/4 v5, 0x0

    aget-wide v5, p1, v5

    const/4 v7, 0x2

    aget-wide v7, p1, v7

    invoke-direct/range {v2 .. v8}, Lcom/qianhe/yct/view/map/GeoPoint;-><init>(DDD)V

    invoke-virtual {v1, v2, v0}, Lcom/qianhe/yct/view/map/MapController;->updateLocation(Lcom/qianhe/yct/view/map/GeoPoint;Z)V

    .line 294
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->-$$Nest$fgetmapController(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)Lcom/qianhe/yct/view/map/MapController;

    move-result-object p1

    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->-$$Nest$mbuildThreePointAreaMapPoints(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)Ljava/util/List;

    move-result-object v1

    const-string v2, "B"

    const-string v3, "C"

    const-string v4, "A"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lcom/qianhe/yct/view/map/MapController;->addPolyline(Ljava/util/List;ZLjava/util/List;)V

    return-void

    .line 297
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
