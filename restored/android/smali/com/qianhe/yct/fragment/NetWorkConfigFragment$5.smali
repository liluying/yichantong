.class Lcom/qianhe/yct/fragment/NetWorkConfigFragment$5;
.super Ljava/lang/Object;
.source "NetWorkConfigFragment.java"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;


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

    .line 186
    iput-object p1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$5;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 189
    const-string v0, "basewifirole"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 190
    const-string p1, "list"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 191
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    const-string v0, "index"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 193
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$5;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;)Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->tvWifiRole:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_0

    .line 195
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$5;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;)Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->lltWifiConfig:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$5;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;)Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->lltWifiConfig:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$5;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;)Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtWifiName:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$5;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;)Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtWifiPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$5;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;)Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtWifiPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$5;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    sget v2, Lcom/qianhe/yct/R$string;->password_empty:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 202
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$5;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->-$$Nest$mupdateScanWifiVisibility(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
