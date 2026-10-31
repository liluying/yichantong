.class Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$4;
.super Ljava/lang/Object;
.source "MultiPointAreaStep1Fragment.java"

# interfaces
.implements Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public goCollectCoordinates(I)V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->-$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)V

    .line 294
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaCreateActivity;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaCreateActivity;->goCollectCoordinates(I)V

    return-void
.end method

.method public goPointLibrary()V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->-$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)V

    .line 288
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaCreateActivity;->goPointLibrary()V

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

    .line 299
    iget-object p2, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;

    invoke-static {p2}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->-$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)V

    if-eqz p1, :cond_0

    .line 300
    iget-object p2, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->-$$Nest$maddPoint(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;[DZ)V

    :cond_0
    return-void
.end method

.method public setShovelTipType(I)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;

    invoke-static {v0, p1}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->-$$Nest$fputmToothType(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;I)V

    .line 306
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->-$$Nest$fgetmultiPointAreaEntity(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    move-result-object v0

    iput p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    return-void
.end method
