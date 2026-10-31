.class Lcom/qianhe/yct/activity/CADEntityChooseActivity$13;
.super Ljava/lang/Object;
.source "CADEntityChooseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 601
    iput-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$13;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 605
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$13;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgettotalGetCount(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$13;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetcollectedPoints(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Ljava/util/LinkedHashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$13;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgettotalGetCount(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 606
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$13;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->cad_not_enough_coordinate_points_were_selected:I

    .line 607
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 606
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 609
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 613
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$13;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->cad_has_site_selection_been_completed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$13;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    sget v2, Lcom/qianhe/yct/R$string;->cad_done:I

    .line 614
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/activity/CADEntityChooseActivity$13$1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$13$1;-><init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity$13;)V

    .line 613
    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method
