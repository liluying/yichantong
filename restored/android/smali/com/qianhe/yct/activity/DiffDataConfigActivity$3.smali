.class Lcom/qianhe/yct/activity/DiffDataConfigActivity$3;
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

    .line 206
    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$3;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 209
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$3;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetchannelArray(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 210
    :cond_0
    new-instance p1, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;-><init>()V

    .line 211
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$3;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ChooseListDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 212
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 213
    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$3;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v2, Lcom/qianhe/yct/R$string;->please_select_channel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$3;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetchannelArray(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qianhe/yct/utils/RadioChannelUtils;->buildChannelLabelList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 215
    const-string v2, "list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 216
    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$3;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvChannel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$3;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetchannelArray(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/qianhe/yct/utils/RadioChannelUtils;->getChannelIndex(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const-string v2, "currentIndex"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 217
    const-string v1, "requestKey"

    const-string v2, "radio_channel"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
