.class Lcom/qianhe/yct/fragment/H5ConfigFragment$24;
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

    .line 480
    iput-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$24;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 483
    iget-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$24;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    sget v0, Lcom/qianhe/yct/R$string;->reset_tips:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$24;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    sget v2, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment$24;)V

    invoke-static {p1, v0, v1, v2}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->access$3500(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method
