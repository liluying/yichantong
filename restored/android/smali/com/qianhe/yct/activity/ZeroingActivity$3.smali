.class Lcom/qianhe/yct/activity/ZeroingActivity$3;
.super Ljava/lang/Object;
.source "ZeroingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/ZeroingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/ZeroingActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/ZeroingActivity;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity$3;->this$0:Lcom/qianhe/yct/activity/ZeroingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 80
    new-instance p1, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;-><init>()V

    .line 81
    iget-object v0, p0, Lcom/qianhe/yct/activity/ZeroingActivity$3;->this$0:Lcom/qianhe/yct/activity/ZeroingActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ChooseListDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/qianhe/yct/activity/ZeroingActivity$3;->this$0:Lcom/qianhe/yct/activity/ZeroingActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/ZeroingActivity;->-$$Nest$fgetrangeCurrentIndex(Lcom/qianhe/yct/activity/ZeroingActivity;)I

    move-result v1

    const-string v2, "currentIndex"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 84
    iget-object v1, p0, Lcom/qianhe/yct/activity/ZeroingActivity$3;->this$0:Lcom/qianhe/yct/activity/ZeroingActivity;

    sget v2, Lcom/qianhe/yct/R$string;->select_error_range:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/qianhe/yct/activity/ZeroingActivity$3;->this$0:Lcom/qianhe/yct/activity/ZeroingActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/ZeroingActivity;->-$$Nest$fgetlist(Lcom/qianhe/yct/activity/ZeroingActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 86
    const-string v1, "requestKey"

    const-string/jumbo v2, "zerolist"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
