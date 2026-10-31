.class Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;
.super Ljava/lang/Object;
.source "CADEntityChooseActivity.java"

# interfaces
.implements Lcom/qh/xcad/XCadView$OnMarkerClickListener;


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

    .line 467
    iput-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerClick(II)V
    .locals 4

    .line 471
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0, p1, p2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$mfindCurrentEntityPoint(Lcom/qianhe/yct/activity/CADEntityChooseActivity;II)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    iget-boolean v1, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->check:Z

    goto :goto_0

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v1, p1, p2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$misCollected(Lcom/qianhe/yct/activity/CADEntityChooseActivity;II)Z

    move-result v1

    :goto_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    if-gez p2, :cond_2

    goto :goto_2

    :cond_2
    if-nez v1, :cond_4

    .line 483
    iget-object v2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$misRadioButton(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 484
    iget-object v2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgettotalGetCount(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetcollectedPoints(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    iget-object v3, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgettotalGetCount(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 485
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    sget p2, Lcom/qianhe/yct/R$string;->cad_out_of_the_capture_range:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 490
    :cond_3
    iget-object v2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    new-instance v3, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5$1;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5$1;-><init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;IILcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;)V

    invoke-static {v2, p1, p2, v3}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$mcheckMaxDisPointTips(Lcom/qianhe/yct/activity/CADEntityChooseActivity;IILcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    .line 519
    iget-object v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$mclearRadioButtonClickStatus(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V

    .line 520
    iget-object v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v1, p1, p2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$mcheckPoint(Lcom/qianhe/yct/activity/CADEntityChooseActivity;II)V

    goto :goto_1

    .line 522
    :cond_5
    iget-object v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v1, p1, p2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$muncheckPoint(Lcom/qianhe/yct/activity/CADEntityChooseActivity;II)V

    .line 524
    :goto_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetshowPointAdapter(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    if-eqz v0, :cond_6

    .line 527
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->rvShowEntityPoints:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_6
    :goto_2
    return-void
.end method
