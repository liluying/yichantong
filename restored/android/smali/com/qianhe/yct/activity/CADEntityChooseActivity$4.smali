.class Lcom/qianhe/yct/activity/CADEntityChooseActivity$4;
.super Ljava/lang/Object;
.source "CADEntityChooseActivity.java"

# interfaces
.implements Lcom/qh/xcad/XCadView$OnEntityClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/CADEntityChooseActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$4;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntityCancel(ILcom/qh/xcad/XCadEntity;)V
    .locals 0

    .line 445
    iget-object p2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$4;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetselectCadEntity(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$4;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetselectCadEntity(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    move-result-object p2

    iget p2, p2, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->xCadEntityIndex:I

    if-ne p2, p1, :cond_0

    .line 446
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$4;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetinVisiblePointIndex(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 447
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$4;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fputcurCadUiPoint(Lcom/qianhe/yct/activity/CADEntityChooseActivity;Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;)V

    .line 448
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$4;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {p1, p2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fputselectCadEntity(Lcom/qianhe/yct/activity/CADEntityChooseActivity;Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;)V

    .line 449
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$4;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$mrefreshCollectedVisuals(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V

    .line 450
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$4;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$mnotifyLinePointTotalViewVis(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V

    :cond_0
    return-void
.end method

.method public onEntityClear()V
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$4;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetinVisiblePointIndex(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 457
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$4;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fputcurCadUiPoint(Lcom/qianhe/yct/activity/CADEntityChooseActivity;Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;)V

    .line 458
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$4;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetselectCadEntity(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$4;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fputselectCadEntity(Lcom/qianhe/yct/activity/CADEntityChooseActivity;Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;)V

    .line 460
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$4;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0}, Lcom/qh/xcad/XCadView;->clearSelectLightPoint()V

    .line 461
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$4;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$mnotifyLinePointTotalViewVis(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$4;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$mrefreshCollectedVisuals(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V

    return-void
.end method

.method public onEntityClick(ILcom/qh/xcad/XCadEntity;)V
    .locals 4

    if-eqz p2, :cond_1

    .line 430
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$4;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetselectCadEntity(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$4;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetselectCadEntity(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->xCadEntity:Lcom/qh/xcad/XCadEntity;

    if-eq v0, p2, :cond_1

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$4;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fputcurCadUiPoint(Lcom/qianhe/yct/activity/CADEntityChooseActivity;Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;)V

    .line 432
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$4;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0}, Lcom/qh/xcad/XCadView;->clearSelectLightPoint()V

    .line 433
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$4;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetinVisiblePointIndex(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 435
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$4;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    new-instance v2, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    .line 436
    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$mgetCheckedPointIndicesForEntity(Lcom/qianhe/yct/activity/CADEntityChooseActivity;I)Ljava/util/HashSet;

    move-result-object v3

    invoke-direct {v2, p1, p2, v1, v3}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;-><init>(ILcom/qh/xcad/XCadEntity;Ljava/util/HashSet;Ljava/util/HashSet;)V

    invoke-static {v0, v2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fputselectCadEntity(Lcom/qianhe/yct/activity/CADEntityChooseActivity;Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;)V

    .line 437
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$4;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$mrefreshCollectedVisuals(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V

    .line 438
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$4;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$mnotifyLinePointTotalViewVis(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V

    :cond_1
    return-void
.end method
