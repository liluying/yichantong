.class Lcom/qianhe/yct/activity/DiffDataConfigActivity$4;
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

    .line 222
    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$4;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 225
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$4;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetprotocolArray(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 226
    :cond_0
    new-instance p1, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;-><init>()V

    .line 227
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$4;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ChooseListDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 228
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 229
    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$4;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v2, Lcom/qianhe/yct/R$string;->please_select_radio_protocol:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$4;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$mgetSelectableProtocolArray(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/utils/RadioProtocolUtils;->buildProtocolNameList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 231
    const-string v2, "list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 232
    iget-object v2, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$4;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvProtocol:Landroidx/appcompat/widget/AppCompatTextView;

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

    .line 233
    const-string v1, "requestKey"

    sget-object v2, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;->RADIO_PROTOCOL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
