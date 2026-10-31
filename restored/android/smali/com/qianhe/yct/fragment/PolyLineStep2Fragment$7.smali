.class Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$7;
.super Ljava/lang/Object;
.source "PolyLineStep2Fragment.java"

# interfaces
.implements Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)V
    .locals 0

    .line 744
    iput-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public goCollectCoordinates(I)V
    .locals 1

    .line 754
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)V

    .line 755
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$fgetpolyLineEntity(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Lcom/qianhe/baselib/bean/PolyLineEntity;

    move-result-object v0

    iput p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    .line 756
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/polyline/PolyLineCreateActivity;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/activity/polyline/PolyLineCreateActivity;->goCollectCoordinates(I)V

    return-void
.end method

.method public goPointLibrary()V
    .locals 2

    .line 747
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)V

    .line 748
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$fgetpolyLineEntity(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Lcom/qianhe/baselib/bean/PolyLineEntity;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    .line 749
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/polyline/PolyLineCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/polyline/PolyLineCreateActivity;->goPointLibrary()V

    return-void
.end method

.method public synthetic onInstrumentCollectResult(Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler$-CC;->$default$onInstrumentCollectResult(Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;)V

    return-void
.end method

.method public onInstrumentCollectResult([D[D)V
    .locals 1

    .line 761
    iget-object p2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {p2}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)V

    if-eqz p1, :cond_0

    .line 762
    iget-object p2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    const/4 v0, 0x1

    invoke-static {p2, p1, v0, v0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$maddPoint(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;[DZZ)V

    :cond_0
    return-void
.end method

.method public setShovelTipType(I)V
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$fgetpolyLineEntity(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Lcom/qianhe/baselib/bean/PolyLineEntity;

    move-result-object v0

    iput p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    return-void
.end method
