.class Lcom/qianhe/yct/fragment/NetWorkConfigFragment$1;
.super Ljava/lang/Object;
.source "NetWorkConfigFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$1;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 107
    new-instance p1, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;-><init>()V

    .line 108
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$1;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ChooseListDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    iget-object v1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$1;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    sget v2, Lcom/qianhe/yct/R$string;->please_select_wifi_mode:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$1;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    sget v3, Lcom/qianhe/yct/R$string;->disable:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$1;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    sget v4, Lcom/qianhe/yct/R$string;->client:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$1$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 112
    const-string v2, "list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 113
    iget-object v2, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$1;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;)Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->tvWifiRole:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 114
    const-string v2, "currentIndex"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 115
    const-string v1, "requestKey"

    const-string v2, "basewifirole"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
