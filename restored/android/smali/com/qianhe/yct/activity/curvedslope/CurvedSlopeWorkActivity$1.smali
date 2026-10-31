.class Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$1;
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

    .line 195
    iput-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$1;->this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    .line 198
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v1

    iget-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$1;->this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->-$$Nest$fgetmINS(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v2

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    iget-object v4, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$1;->this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    invoke-static {v4}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->-$$Nest$fgetmINS(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v4

    iget-wide v4, v4, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    iget-object v6, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$1;->this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    invoke-static {v6}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->-$$Nest$fgetmINS(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v6

    iget-wide v6, v6, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    const/4 v8, 0x3

    new-array v8, v8, [D

    const/4 v9, 0x0

    aput-wide v2, v8, v9

    const/4 v2, 0x1

    aput-wide v4, v8, v2

    const/4 v3, 0x2

    aput-wide v6, v8, v3

    invoke-virtual {v1, v8}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToWGS84([D)[D

    move-result-object v1

    .line 199
    iget-object v4, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$1;->this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    invoke-static {v4}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->-$$Nest$fgetmapController(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Lcom/qianhe/yct/view/map/MapController;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 200
    iget-object v4, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$1;->this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    invoke-static {v4}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->-$$Nest$fgetmapController(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Lcom/qianhe/yct/view/map/MapController;

    move-result-object v4

    new-instance v10, Lcom/qianhe/yct/view/map/GeoPoint;

    aget-wide v11, v1, v2

    aget-wide v13, v1, v9

    aget-wide v15, v1, v3

    invoke-direct/range {v10 .. v16}, Lcom/qianhe/yct/view/map/GeoPoint;-><init>(DDD)V

    invoke-virtual {v4, v10}, Lcom/qianhe/yct/view/map/MapController;->centerLocation(Lcom/qianhe/yct/view/map/GeoPoint;)V

    .line 202
    :cond_0
    iget-object v1, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$1;->this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->-$$Nest$fgetcurvedSlopePreview(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Lcom/qianhe/yct/view/CurvedSlopePreview;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 203
    iget-object v1, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$1;->this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->-$$Nest$fgetcurvedSlopePreview(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Lcom/qianhe/yct/view/CurvedSlopePreview;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/view/CurvedSlopePreview;->locateToCurrentPoint()V

    :cond_1
    return-void
.end method
