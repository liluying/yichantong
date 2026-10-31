.class Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$2;
.super Ljava/lang/Object;
.source "CurvedSlopeWorkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 208
    iput-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$2;->this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 211
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$2;->this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->-$$Nest$fgetmPointList(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-virtual {p1, v0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertGAUSSXYToGeodetic([D)[D

    move-result-object p1

    .line 212
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToWGS84([D)[D

    move-result-object p1

    .line 213
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$2;->this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->-$$Nest$fgetmapController(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Lcom/qianhe/yct/view/map/MapController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$2;->this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->-$$Nest$fgetmapController(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Lcom/qianhe/yct/view/map/MapController;

    move-result-object v0

    new-instance v2, Lcom/qianhe/yct/view/map/GeoPoint;

    const/4 v3, 0x1

    aget-wide v3, p1, v3

    aget-wide v5, p1, v1

    const/4 v1, 0x2

    aget-wide v7, p1, v1

    invoke-direct/range {v2 .. v8}, Lcom/qianhe/yct/view/map/GeoPoint;-><init>(DDD)V

    invoke-virtual {v0, v2}, Lcom/qianhe/yct/view/map/MapController;->centerLocation(Lcom/qianhe/yct/view/map/GeoPoint;)V

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$2;->this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->-$$Nest$fgetcurvedSlopePreview(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Lcom/qianhe/yct/view/CurvedSlopePreview;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 217
    iget-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$2;->this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->-$$Nest$fgetcurvedSlopePreview(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Lcom/qianhe/yct/view/CurvedSlopePreview;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/view/CurvedSlopePreview;->locateToStartPoint()V

    :cond_1
    return-void
.end method
