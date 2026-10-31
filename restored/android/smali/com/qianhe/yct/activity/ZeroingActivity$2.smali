.class Lcom/qianhe/yct/activity/ZeroingActivity$2;
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

    .line 61
    iput-object p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity$2;->this$0:Lcom/qianhe/yct/activity/ZeroingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 64
    new-instance p1, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;-><init>()V

    .line 65
    iget-object v0, p0, Lcom/qianhe/yct/activity/ZeroingActivity$2;->this$0:Lcom/qianhe/yct/activity/ZeroingActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ChooseListDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    iget-object v1, p0, Lcom/qianhe/yct/activity/ZeroingActivity$2;->this$0:Lcom/qianhe/yct/activity/ZeroingActivity;

    sget v2, Lcom/qianhe/yct/R$string;->tilt_display_cut_fill:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    iget-object v2, p0, Lcom/qianhe/yct/activity/ZeroingActivity$2;->this$0:Lcom/qianhe/yct/activity/ZeroingActivity;

    sget v3, Lcom/qianhe/yct/R$string;->hide:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v2, p0, Lcom/qianhe/yct/activity/ZeroingActivity$2;->this$0:Lcom/qianhe/yct/activity/ZeroingActivity;

    sget v3, Lcom/qianhe/yct/R$string;->display:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    const-string v2, "list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 72
    iget-object v2, p0, Lcom/qianhe/yct/activity/ZeroingActivity$2;->this$0:Lcom/qianhe/yct/activity/ZeroingActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/ZeroingActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ZeroingActivity;)Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvTiltDisplay:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const-string v2, "currentIndex"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 73
    const-string v1, "requestKey"

    const-string/jumbo v2, "tiltdisplay"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
