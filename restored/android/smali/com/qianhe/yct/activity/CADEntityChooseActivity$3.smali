.class Lcom/qianhe/yct/activity/CADEntityChooseActivity$3;
.super Ljava/lang/Object;
.source "CADEntityChooseActivity.java"

# interfaces
.implements Lcom/qh/xcad/XCadView$OnLoadCadFileListener;


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

    .line 406
    iput-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$3;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCadFileFinished(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 411
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$3;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->cad_failed_to_open_cad_file:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$3;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    sget v2, Lcom/qianhe/yct/R$string;->close:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/activity/CADEntityChooseActivity$3$1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$3$1;-><init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity$3;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 423
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$3;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$mapplyInitialChoosePoints(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V

    return-void
.end method
