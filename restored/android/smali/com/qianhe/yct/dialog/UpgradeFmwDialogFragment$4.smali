.class Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$4;
.super Ljava/lang/Object;
.source "UpgradeFmwDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 184
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fputmanual(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;I)V

    .line 186
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetmodel(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/application/YCTApplication;->isGnssFmw(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 187
    const-string p1, "ignoreFmwVersion_gnss"

    goto :goto_0

    .line 186
    :cond_0
    const-string p1, "ignoreFmwVersion"

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->access$000(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v2}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetdeviceType(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetversionNew(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 190
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$OnActionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetcurrentStep(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)I

    move-result p1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgettotalStep(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$OnActionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetcurrentStep(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$OnActionListener;->next(I)V

    .line 191
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_2
    return-void
.end method
