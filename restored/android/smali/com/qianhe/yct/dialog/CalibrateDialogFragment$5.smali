.class Lcom/qianhe/yct/dialog/CalibrateDialogFragment$5;
.super Ljava/lang/Object;
.source "CalibrateDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/dialog/CalibrateDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$5;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$5;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$5;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;)Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$5;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;)Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvContent:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->data_unavailable:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method
