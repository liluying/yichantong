.class Lcom/qianhe/yct/dialog/TipsDialogFragment$2;
.super Landroidx/activity/OnBackPressedCallback;
.source "TipsDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/TipsDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/TipsDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/TipsDialogFragment;Z)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->-$$Nest$mperformClose(Lcom/qianhe/yct/dialog/TipsDialogFragment;)V

    return-void
.end method
