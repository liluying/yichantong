.class Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1$1;
.super Ljava/lang/Object;
.source "CADEntityChooseActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;)V
    .locals 0

    .line 1199
    iput-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1$1;->this$2:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;

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

    .line 1203
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1$1;->this$2:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;

    iget-object v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    iget-object v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fputuseMaxDistancePosi(Lcom/qianhe/yct/activity/CADEntityChooseActivity;Z)V

    .line 1205
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1$1;->this$2:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;

    iget-object v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    iget-object v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$mclearRadioButtonClickStatus(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V

    .line 1207
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1$1;->this$2:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;

    iget-object v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    iget-object v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetselectCadEntity(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    move-result-object v1

    iget v1, v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->xCadEntityIndex:I

    iget-object v2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1$1;->this$2:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;

    iget v2, v2, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;->val$position:I

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$mcheckPoint(Lcom/qianhe/yct/activity/CADEntityChooseActivity;II)V

    .line 1209
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1$1;->this$2:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;

    iget-object v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
