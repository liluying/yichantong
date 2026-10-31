.class Lcom/qianhe/yct/activity/CorsRenewActivity$2;
.super Ljava/lang/Object;
.source "CorsRenewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/CorsRenewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/CorsRenewActivity;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$2;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 99
    iget-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$2;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CorsRenewActivity;->-$$Nest$fgetqrPayDialogFragment(Lcom/qianhe/yct/activity/CorsRenewActivity;)Lcom/qianhe/yct/dialog/QRPayDialogFragment;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$2;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    new-instance v0, Lcom/qianhe/yct/dialog/QRPayDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/QRPayDialogFragment;-><init>()V

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/CorsRenewActivity;->-$$Nest$fputqrPayDialogFragment(Lcom/qianhe/yct/activity/CorsRenewActivity;Lcom/qianhe/yct/dialog/QRPayDialogFragment;)V

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$2;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CorsRenewActivity;->-$$Nest$fgetqrPayDialogFragment(Lcom/qianhe/yct/activity/CorsRenewActivity;)Lcom/qianhe/yct/dialog/QRPayDialogFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$2;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CorsRenewActivity;->-$$Nest$fgetqrPayDialogFragment(Lcom/qianhe/yct/activity/CorsRenewActivity;)Lcom/qianhe/yct/dialog/QRPayDialogFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$2;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CorsRenewActivity;->-$$Nest$fgetqrPayDialogFragment(Lcom/qianhe/yct/activity/CorsRenewActivity;)Lcom/qianhe/yct/dialog/QRPayDialogFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$2;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CorsRenewActivity;->-$$Nest$fgetqrPayDialogFragment(Lcom/qianhe/yct/activity/CorsRenewActivity;)Lcom/qianhe/yct/dialog/QRPayDialogFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 101
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$2;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CorsRenewActivity;->-$$Nest$fgetqrPayDialogFragment(Lcom/qianhe/yct/activity/CorsRenewActivity;)Lcom/qianhe/yct/dialog/QRPayDialogFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$2;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "QRPayDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 102
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 103
    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$2;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CorsRenewActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CorsRenewActivity;)Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->tvHostNum:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceNo"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$2;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CorsRenewActivity;->-$$Nest$fgetmPriceBean(Lcom/qianhe/yct/activity/CorsRenewActivity;)Lcom/qianhe/yct/bean/RenewPriceBean;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/yct/bean/RenewPriceBean;->id:J

    const-string v2, "priceId"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 105
    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$2;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CorsRenewActivity;->-$$Nest$fgetqrPayDialogFragment(Lcom/qianhe/yct/activity/CorsRenewActivity;)Lcom/qianhe/yct/dialog/QRPayDialogFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
