.class Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment$3;
.super Ljava/lang/Object;
.source "RTKFeatureCodeDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 73
    iget-object p1, p0, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;)Lcom/qianhe/yct/databinding/DialogRtkFeatureCodeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogRtkFeatureCodeBinding;->edtCode:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object p1, p0, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;)Lcom/qianhe/yct/databinding/DialogRtkFeatureCodeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogRtkFeatureCodeBinding;->tvError:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
