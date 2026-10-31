.class Lcom/qianhe/yct/activity/DiffDataConfigActivity$7;
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


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$7;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 269
    new-instance p1, Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment;-><init>()V

    .line 270
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$7;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ChooseCorsPortDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 271
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 272
    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$7;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v2, Lcom/qianhe/yct/R$string;->select_coordinates_system:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$7;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtHost:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 275
    new-instance v0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$7$1;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity$7$1;-><init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity$7;Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment$OnConfirmListener;)V

    return-void
.end method
