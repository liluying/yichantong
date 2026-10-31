.class Lcom/qianhe/yct/activity/CADEntityChooseActivity$13$1;
.super Ljava/lang/Object;
.source "CADEntityChooseActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/CADEntityChooseActivity$13;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$13;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity$13;)V
    .locals 0

    .line 615
    iput-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$13$1;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$13;

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

    .line 618
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$13$1;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$13;

    iget-object v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$13;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$mbuildCollectedResult(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)[D

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 622
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 623
    const-string v2, "cad_result_choose_point"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    .line 624
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$13$1;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$13;

    iget-object v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$13;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 625
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$13$1;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$13;

    iget-object v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$13;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
