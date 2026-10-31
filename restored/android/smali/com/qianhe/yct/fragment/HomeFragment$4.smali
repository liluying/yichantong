.class Lcom/qianhe/yct/fragment/HomeFragment$4;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/HomeFragment;->handleItemClick(Lcom/qianhe/yct/bean/HomeItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/HomeFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/HomeFragment;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment$4;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment$4;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->gotoUserManage()V

    return-void
.end method
