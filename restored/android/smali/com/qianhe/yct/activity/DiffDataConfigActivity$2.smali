.class Lcom/qianhe/yct/activity/DiffDataConfigActivity$2;
.super Ljava/lang/Object;
.source "DiffDataConfigActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/DiffDataConfigActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

.field final synthetic val$sourcelist:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$2;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    iput-object p2, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$2;->val$sourcelist:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 195
    new-instance p1, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;-><init>()V

    .line 196
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 197
    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$2;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v2, Lcom/qianhe/yct/R$string;->difference_source:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v1, "list"

    iget-object v2, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$2;->val$sourcelist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 199
    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$2;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    iget-object v2, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$2;->val$sourcelist:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$mresolveDiffSourceCurrentIndex(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Ljava/util/ArrayList;)I

    move-result v1

    const-string v2, "currentIndex"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 200
    const-string v1, "requestKey"

    const-string v2, "DIFF_SOURCE"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 202
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$2;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ChooseListDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
