.class Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;
.super Ljava/lang/Object;
.source "CADEntityChooseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->onBindViewHolder(Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

.field final synthetic val$cadUiPoint:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1184
    iput-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;->val$cadUiPoint:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    iput p3, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1188
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;->val$cadUiPoint:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    iget-boolean p1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->check:Z

    if-nez p1, :cond_1

    .line 1190
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    iget-object p1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$misRadioButton(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1191
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    iget-object p1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgettotalGetCount(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    iget-object p1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetcollectedPoints(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Ljava/util/LinkedHashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    iget-object v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgettotalGetCount(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1192
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    iget-object p1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->cad_out_of_the_capture_range:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1197
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    iget-object p1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetselectCadEntity(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    move-result-object v0

    iget v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->xCadEntityIndex:I

    iget v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;->val$position:I

    new-instance v2, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1$1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1$1;-><init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;)V

    invoke-static {p1, v0, v1, v2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$mcheckMaxDisPointTips(Lcom/qianhe/yct/activity/CADEntityChooseActivity;IILcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 1222
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;->val$cadUiPoint:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    iget-boolean p1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->check:Z

    if-eqz p1, :cond_2

    .line 1223
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    iget-object p1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetselectCadEntity(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    move-result-object v0

    iget v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->xCadEntityIndex:I

    iget v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;->val$position:I

    invoke-static {p1, v0, v1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$muncheckPoint(Lcom/qianhe/yct/activity/CADEntityChooseActivity;II)V

    goto :goto_0

    .line 1226
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    iget-object p1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$mclearRadioButtonClickStatus(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V

    .line 1227
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    iget-object p1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetselectCadEntity(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    move-result-object v0

    iget v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->xCadEntityIndex:I

    iget v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;->val$position:I

    invoke-static {p1, v0, v1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$mcheckPoint(Lcom/qianhe/yct/activity/CADEntityChooseActivity;II)V

    .line 1230
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
