.class Lcom/qianhe/yct/fragment/PointCreateFragment$4;
.super Ljava/lang/Object;
.source "PointCreateFragment.java"

# interfaces
.implements Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/PointCreateFragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/PointCreateFragment;)V
    .locals 0

    .line 803
    iput-object p1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public goCollectCoordinates(I)V
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->goCollectCoordinates(I)V

    return-void
.end method

.method public goPointLibrary()V
    .locals 0

    .line 0
    return-void
.end method

.method public onInstrumentCollectResult(Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 816
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;

    iget v1, p1, Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;->quality:I

    iget-wide v2, p1, Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;->hdop:D

    iget-wide v4, p1, Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;->vdop:D

    invoke-static/range {v0 .. v5}, Lcom/qianhe/yct/fragment/PointCreateFragment;->-$$Nest$mapplyCollectedGnssQuality(Lcom/qianhe/yct/fragment/PointCreateFragment;IDD)V

    .line 817
    iget-object v0, p1, Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;->coords:[D

    iget-object p1, p1, Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;->geodetic:[D

    invoke-virtual {p0, v0, p1}, Lcom/qianhe/yct/fragment/PointCreateFragment$4;->onInstrumentCollectResult([D[D)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 819
    invoke-virtual {p0, p1, p1}, Lcom/qianhe/yct/fragment/PointCreateFragment$4;->onInstrumentCollectResult([D[D)V

    return-void
.end method

.method public onInstrumentCollectResult([D[D)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;

    invoke-static {v0, p2}, Lcom/qianhe/yct/fragment/PointCreateFragment;->access$000(Lcom/qianhe/yct/fragment/PointCreateFragment;[D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 827
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;

    invoke-static {v0, p2}, Lcom/qianhe/yct/fragment/PointCreateFragment;->-$$Nest$mapplyGeodetic(Lcom/qianhe/yct/fragment/PointCreateFragment;[D)V

    .line 829
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;

    const/4 p2, 0x0

    aget-wide v2, p1, p2

    const/4 p2, 0x1

    aget-wide v4, p1, p2

    const/4 p2, 0x2

    aget-wide v6, p1, p2

    invoke-static/range {v1 .. v7}, Lcom/qianhe/yct/fragment/PointCreateFragment;->-$$Nest$mshowCoords(Lcom/qianhe/yct/fragment/PointCreateFragment;DDD)V

    return-void
.end method

.method public setShovelTipType(I)V
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;

    invoke-static {v0, p1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->-$$Nest$fputmToothType(Lcom/qianhe/yct/fragment/PointCreateFragment;I)V

    return-void
.end method
