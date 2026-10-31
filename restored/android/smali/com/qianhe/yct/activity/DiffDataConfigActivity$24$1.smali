.class Lcom/qianhe/yct/activity/DiffDataConfigActivity$24$1;
.super Ljava/lang/Object;
.source "DiffDataConfigActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/DiffDataConfigActivity$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/DiffDataConfigActivity$24;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity$24;)V
    .locals 0

    .line 1109
    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$24$1;->this$1:Lcom/qianhe/yct/activity/DiffDataConfigActivity$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 0

    .line 1117
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$24$1;->this$1:Lcom/qianhe/yct/activity/DiffDataConfigActivity$24;

    iget-object p1, p1, Lcom/qianhe/yct/activity/DiffDataConfigActivity$24;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 1112
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$24$1;->this$1:Lcom/qianhe/yct/activity/DiffDataConfigActivity$24;

    iget-object v0, v0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$24;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
