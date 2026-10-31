.class Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$8;
.super Ljava/lang/Object;
.source "ZhaoPingCreateFragment.java"

# interfaces
.implements Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$8;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public goCollectCoordinates(I)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$8;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)V

    .line 330
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$8;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$fgetzhaoPingEntity(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    move-result-object v0

    iput p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    .line 331
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$8;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->goCollectCoordinates(I)V

    return-void
.end method

.method public goPointLibrary()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$8;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)V

    .line 323
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$8;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$fgetzhaoPingEntity(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    .line 324
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$8;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->goPointLibrary()V

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

    .line 336
    iget-object p2, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$8;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {p2}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)V

    if-eqz p1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$8;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    const/4 p2, 0x0

    aget-wide v1, p1, p2

    const/4 p2, 0x1

    aget-wide v3, p1, p2

    const/4 p2, 0x2

    aget-wide v5, p1, p2

    invoke-static/range {v0 .. v6}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$mshowCoords(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;DDD)V

    :cond_0
    return-void
.end method

.method public setShovelTipType(I)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$8;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$fgetzhaoPingEntity(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    move-result-object v0

    iput p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    return-void
.end method
