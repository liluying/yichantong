.class Lcom/qianhe/yct/activity/CollectCoordsActivity$2;
.super Ljava/lang/Object;
.source "CollectCoordsActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/CollectCoordsActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/CollectCoordsActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/CollectCoordsActivity;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity$2;->this$0:Lcom/qianhe/yct/activity/CollectCoordsActivity;

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

    .line 443
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity$2;->this$0:Lcom/qianhe/yct/activity/CollectCoordsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 444
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity$2;->this$0:Lcom/qianhe/yct/activity/CollectCoordsActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CollectCoordsActivity;->access$001(Lcom/qianhe/yct/activity/CollectCoordsActivity;)V

    return-void
.end method
