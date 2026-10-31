.class Lcom/qianhe/yct/activity/ProjectListActivity$4;
.super Ljava/lang/Object;
.source "ProjectListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/ProjectListActivity;->openSharePage(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/ProjectListActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/ProjectListActivity;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity$4;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

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

    .line 411
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity$4;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    const-class v2, Lcom/qianhe/yct/activity/UserLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 412
    iget-object v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity$4;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
