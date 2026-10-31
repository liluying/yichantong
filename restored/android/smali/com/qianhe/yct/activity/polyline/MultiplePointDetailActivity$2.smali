.class Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2;
.super Ljava/lang/Object;
.source "MultiplePointDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 136
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    sget v0, Lcom/qianhe/yct/R$string;->reset_data:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    sget v2, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2$1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2$1;-><init>(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method
