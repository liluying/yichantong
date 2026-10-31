.class Lcom/qianhe/yct/fragment/HomeFragment$3;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/HomeFragment;->gotoBaseStationConfigActivity()V
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

    .line 417
    iput-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment$3;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

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
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment$3;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->gotoBluetoothActivity(I)V

    return-void
.end method
