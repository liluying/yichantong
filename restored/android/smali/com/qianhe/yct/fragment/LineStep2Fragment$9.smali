.class Lcom/qianhe/yct/fragment/LineStep2Fragment$9;
.super Ljava/lang/Object;
.source "LineStep2Fragment.java"

# interfaces
.implements Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/LineStep2Fragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/LineStep2Fragment;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$9;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public goCollectCoordinates(I)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$9;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/LineStep2Fragment;)V

    .line 269
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$9;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$fgetlineEntity(Lcom/qianhe/yct/fragment/LineStep2Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v0

    iput p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    .line 270
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$9;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/line/LineCreateActivity;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/activity/line/LineCreateActivity;->goCollectCoordinates(I)V

    return-void
.end method

.method public goPointLibrary()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$9;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/LineStep2Fragment;)V

    .line 262
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$9;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$fgetlineEntity(Lcom/qianhe/yct/fragment/LineStep2Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    .line 263
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$9;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/line/LineCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/line/LineCreateActivity;->goPointLibrary()V

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

    .line 275
    iget-object p2, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$9;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {p2}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/LineStep2Fragment;)V

    if-eqz p1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$9;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    const/4 p2, 0x0

    aget-wide v1, p1, p2

    const/4 p2, 0x1

    aget-wide v3, p1, p2

    const/4 p2, 0x2

    aget-wide v5, p1, p2

    invoke-static/range {v0 .. v6}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$mshowCoords(Lcom/qianhe/yct/fragment/LineStep2Fragment;DDD)V

    :cond_0
    return-void
.end method

.method public setShovelTipType(I)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$9;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$fgetlineEntity(Lcom/qianhe/yct/fragment/LineStep2Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v0

    iput p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    return-void
.end method
