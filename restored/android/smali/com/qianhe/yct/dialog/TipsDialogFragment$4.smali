.class Lcom/qianhe/yct/dialog/TipsDialogFragment$4;
.super Ljava/lang/Object;
.source "TipsDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/qianhe/yct/dialog/TipsDialogFragment;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 169
    iget-object p1, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->-$$Nest$mperformClose(Lcom/qianhe/yct/dialog/TipsDialogFragment;)V

    return-void
.end method
