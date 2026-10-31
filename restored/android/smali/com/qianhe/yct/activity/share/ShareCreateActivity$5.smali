.class Lcom/qianhe/yct/activity/share/ShareCreateActivity$5;
.super Ljava/lang/Object;
.source "ShareCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/share/ShareCreateActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$5;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 458
    new-instance p1, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;-><init>()V

    .line 459
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$5;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ShareMultipleProjectDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 460
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 461
    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$5;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    sget v2, Lcom/qianhe/yct/R$string;->please_select_project:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$5;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetselectedProjectIds(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "selectedProjectIds"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 463
    const-string v1, "requestKey"

    const-string v2, "selectedproject"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
