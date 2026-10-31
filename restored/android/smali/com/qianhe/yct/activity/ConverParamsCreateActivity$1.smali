.class Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;
.super Ljava/lang/Object;
.source "ConverParamsCreateActivity.java"

# interfaces
.implements Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->initControlPoints()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddPoint()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->-$$Nest$fgetpointList(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;

    invoke-direct {v1}, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->-$$Nest$fgetpointList(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 321
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->-$$Nest$mclearCalculatedResult(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V

    .line 322
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->-$$Nest$mscrollToLastControlPointItem(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V

    return-void
.end method

.method public onCollectDst(I)V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->-$$Nest$fputpendingCollectPosition(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;I)V

    .line 286
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->-$$Nest$fputpendingPickTarget(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;I)V

    .line 287
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->-$$Nest$mshowCollectMethodDialog(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V

    return-void
.end method

.method public onDataChanged()V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->-$$Nest$mclearCalculatedResult(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V

    return-void
.end method

.method public onDelete(I)V
    .locals 8

    .line 300
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->-$$Nest$fgetpointList(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->getMinPointCount()I

    move-result v1

    if-gt v0, v1, :cond_0

    return-void

    .line 301
    :cond_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    sget v0, Lcom/qianhe/yct/R$string;->delete_control_point_confirm:I

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    sget v1, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    sget v1, Lcom/qianhe/yct/R$string;->cancel:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1$1;

    invoke-direct {v7, p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1$1;-><init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;I)V

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onPickKnownPoint(I)V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->-$$Nest$fputpendingCollectPosition(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;I)V

    .line 293
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->-$$Nest$fputpendingPickTarget(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;I)V

    .line 295
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->-$$Nest$fgetcollectLauncher(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    const/4 v1, 0x1

    invoke-static {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->-$$Nest$misSevenParam(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/activity/pointlib/PointLibraryIntent;->pickPoint(Landroid/content/Context;ZZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method
