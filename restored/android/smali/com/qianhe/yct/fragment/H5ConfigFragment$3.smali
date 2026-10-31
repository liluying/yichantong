.class Lcom/qianhe/yct/fragment/H5ConfigFragment$3;
.super Ljava/lang/Object;
.source "H5ConfigFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/H5ConfigFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$3;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 123
    new-instance p1, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;-><init>()V

    .line 124
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$3;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ChooseLanguageDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 125
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 126
    const-string v1, "requestKey"

    const-string v2, "changelanguage"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
