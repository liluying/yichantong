.class Lcom/qianhe/yct/activity/ShareListActivity$4;
.super Ljava/lang/Object;
.source "ShareListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/ShareListActivity;->onEventMessage(Lcom/qianhe/yct/event/QueryProjectResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/ShareListActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/ShareListActivity;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity$4;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

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
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity$4;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    sget v1, Lcom/qianhe/yct/R$string;->loading:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 466
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryProjectByType(Ljava/lang/Integer;)V

    return-void
.end method
