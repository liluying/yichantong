.class Lcom/qianhe/yct/fragment/NetWorkConfigFragment$3$1;
.super Ljava/lang/Object;
.source "NetWorkConfigFragment.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/ChooseListDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/NetWorkConfigFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/fragment/NetWorkConfigFragment$3;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/NetWorkConfigFragment$3;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$3$1;->this$1:Lcom/qianhe/yct/fragment/NetWorkConfigFragment$3;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$3$1;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(I)V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$3$1;->this$1:Lcom/qianhe/yct/fragment/NetWorkConfigFragment$3;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$3;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;)Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->tvMobileNet:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$3$1;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$3$1;->this$1:Lcom/qianhe/yct/fragment/NetWorkConfigFragment$3;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$3;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;)Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->lltMobileConfig:Landroid/widget/LinearLayout;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
