.class Lcom/qianhe/yct/activity/CADEntityChooseActivity$5$1;
.super Ljava/lang/Object;
.source "CADEntityChooseActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;->onMarkerClick(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;

.field final synthetic val$cadUiPoint:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

.field final synthetic val$entityIndex:I

.field final synthetic val$pointIndex:I


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;IILcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 490
    iput-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5$1;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;

    iput p2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5$1;->val$entityIndex:I

    iput p3, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5$1;->val$pointIndex:I

    iput-object p4, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5$1;->val$cadUiPoint:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onConfirm()V
    .locals 3

    .line 494
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5$1;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;

    iget-object v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fputuseMaxDistancePosi(Lcom/qianhe/yct/activity/CADEntityChooseActivity;Z)V

    .line 496
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5$1;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;

    iget-object v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$mclearRadioButtonClickStatus(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V

    .line 498
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5$1;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;

    iget-object v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    iget v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5$1;->val$entityIndex:I

    iget v2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5$1;->val$pointIndex:I

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$mcheckPoint(Lcom/qianhe/yct/activity/CADEntityChooseActivity;II)V

    .line 500
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5$1;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;

    iget-object v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetshowPointAdapter(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 502
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5$1;->val$cadUiPoint:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5$1;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;

    iget-object v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->rvShowEntityPoints:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5$1;->val$pointIndex:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method
