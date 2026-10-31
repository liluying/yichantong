.class Lcom/qianhe/yct/activity/polyline/PolyLineCreateActivity$3;
.super Ljava/lang/Object;
.source "PolyLineCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/polyline/PolyLineCreateActivity;->ivBackClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/polyline/PolyLineCreateActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/polyline/PolyLineCreateActivity;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineCreateActivity$3;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 265
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineCreateActivity$3;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/PolyLineCreateActivity;->-$$Nest$fgetpagePosition(Lcom/qianhe/yct/activity/polyline/PolyLineCreateActivity;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 266
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineCreateActivity$3;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineCreateActivity;

    sget v0, Lcom/qianhe/yct/R$string;->exit_editing:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineCreateActivity$3;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineCreateActivity;

    sget v2, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "back"

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineCreateActivity$3;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineCreateActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
