.class Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$2;
.super Ljava/lang/Object;
.source "ShuaPoWorkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$2;->this$0:Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 p1, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 219
    iget-object v2, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$2;->this$0:Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->-$$Nest$mhasCadPath(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$2;->this$0:Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 220
    iget-object p1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$2;->this$0:Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1}, Lcom/qh/xcad/XCadView;->centerXCadItemAreaPointLocation()V

    return-void

    .line 223
    :cond_0
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v2

    iget-object v3, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$2;->this$0:Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v3

    iget-wide v3, v3, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLon1:D

    iget-object v5, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$2;->this$0:Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;

    invoke-static {v5}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v5

    iget-wide v5, v5, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLat1:D

    iget-object v7, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$2;->this$0:Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;

    invoke-static {v7}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v7

    iget-wide v7, v7, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation1:D

    const/4 v9, 0x3

    new-array v9, v9, [D

    aput-wide v3, v9, v1

    aput-wide v5, v9, v0

    aput-wide v7, v9, p1

    invoke-virtual {v2, v9}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToWGS84([D)[D

    move-result-object v2

    .line 224
    iget-object v3, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$2;->this$0:Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->-$$Nest$fgetmapController(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)Lcom/qianhe/yct/view/map/MapController;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 225
    iget-object v3, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$2;->this$0:Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->-$$Nest$fgetmapController(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)Lcom/qianhe/yct/view/map/MapController;

    move-result-object v3

    new-instance v4, Lcom/qianhe/yct/view/map/GeoPoint;

    aget-wide v5, v2, v0

    aget-wide v7, v2, v1

    aget-wide v9, v2, p1

    invoke-direct/range {v4 .. v10}, Lcom/qianhe/yct/view/map/GeoPoint;-><init>(DDD)V

    invoke-virtual {v3, v4}, Lcom/qianhe/yct/view/map/MapController;->centerLocation(Lcom/qianhe/yct/view/map/GeoPoint;)V

    :cond_1
    return-void
.end method
