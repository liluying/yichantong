.class Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$3;
.super Ljava/lang/Object;
.source "PointGroupListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->showExportSuccessDialog(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 256
    iput-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$3;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    iput-object p2, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$3;->val$file:Ljava/io/File;

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

    .line 259
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$3;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$3;->val$file:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->access$000(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;Ljava/io/File;)V

    return-void
.end method
