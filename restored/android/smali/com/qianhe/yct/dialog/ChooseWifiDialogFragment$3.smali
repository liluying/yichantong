.class Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$3;
.super Ljava/lang/Object;
.source "ChooseWifiDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
