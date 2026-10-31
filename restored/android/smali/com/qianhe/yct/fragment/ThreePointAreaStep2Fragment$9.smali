.class Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment$9;
.super Ljava/lang/Object;
.source "ThreePointAreaStep2Fragment.java"

# interfaces
.implements Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment$9;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public goCollectCoordinates(I)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment$9;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;->-$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;)V

    .line 254
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment$9;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->goCollectCoordinates(I)V

    return-void
.end method

.method public goPointLibrary()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment$9;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;->-$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;)V

    .line 248
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment$9;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->goPointLibrary()V

    return-void
.end method

.method public synthetic onInstrumentCollectResult(Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler$-CC;->$default$onInstrumentCollectResult(Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;)V

    return-void
.end method

.method public onInstrumentCollectResult([D[D)V
    .locals 7

    .line 259
    iget-object p2, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment$9;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;

    invoke-static {p2}, Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;->-$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;)V

    if-eqz p1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment$9;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;

    const/4 p2, 0x0

    aget-wide v1, p1, p2

    const/4 p2, 0x1

    aget-wide v3, p1, p2

    const/4 p2, 0x2

    aget-wide v5, p1, p2

    invoke-static/range {v0 .. v6}, Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;->-$$Nest$mshowCoords(Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;DDD)V

    :cond_0
    return-void
.end method

.method public setShovelTipType(I)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment$9;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;

    invoke-static {v0, p1}, Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;->-$$Nest$fputmToothType(Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;I)V

    return-void
.end method
