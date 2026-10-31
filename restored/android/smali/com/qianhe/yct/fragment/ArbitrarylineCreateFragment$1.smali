.class Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;
.super Ljava/lang/Object;
.source "ArbitrarylineCreateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 102
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    sget v1, Lcom/qianhe/yct/R$string;->reset_data:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    sget v2, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1$1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1$1;-><init>(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method
