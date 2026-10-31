.class Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment$3;
.super Ljava/lang/Object;
.source "ChooseLanguageDialogFragment.java"

# interfaces
.implements Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Ljava/lang/String;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 71
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LanguagePrefs;->getSavedLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;->-$$Nest$fgetonConfirmListener(Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;)Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment$OnConfirmListener;

    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    const-string v1, "languageCode"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;->access$000(Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
