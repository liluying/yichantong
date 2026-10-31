.class Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment$1;
.super Ljava/lang/Object;
.source "ChooseLanguageDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 55
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
