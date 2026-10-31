.class Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$2;
.super Ljava/lang/Object;
.source "DebugUpgradefmwActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$2;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 77
    new-instance p1, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;-><init>()V

    .line 78
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$2;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ChooseListDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 80
    const-string/jumbo v1, "title"

    const-string/jumbo v2, "\u8bf7\u9009\u62e9\u8bbe\u5907"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    iget-object v2, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$2;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;

    sget v3, Lcom/qianhe/yct/R$string;->level:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v2, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$2;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;

    sget v3, Lcom/qianhe/yct/R$string;->base:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    const-string v2, "list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 85
    const-string v1, "currentIndex"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 86
    const-string v1, "requestKey"

    const-string v2, "debug_upgrade_fmw"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
