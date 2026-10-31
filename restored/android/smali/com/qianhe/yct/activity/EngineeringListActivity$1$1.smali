.class Lcom/qianhe/yct/activity/EngineeringListActivity$1$1;
.super Ljava/lang/Object;
.source "EngineeringListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/EngineeringListActivity$1;->onExecuteClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/EngineeringListActivity$1;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/EngineeringListActivity$1;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$1$1;->this$1:Lcom/qianhe/yct/activity/EngineeringListActivity$1;

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

    .line 98
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$1$1;->this$1:Lcom/qianhe/yct/activity/EngineeringListActivity$1;

    iget-object v0, v0, Lcom/qianhe/yct/activity/EngineeringListActivity$1;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/EngineeringListActivity;->-$$Nest$mdeleteNextEngineering(Lcom/qianhe/yct/activity/EngineeringListActivity;I)V

    return-void
.end method
