.class Lcom/qianhe/yct/fragment/HomeFragment$5;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/HomeFragment;->onEventMessage(Lcom/qianhe/rtkclientlib/event/FeaturesEvent;)V
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

    .line 685
    iput-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment$5;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

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
    .locals 4

    .line 688
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment$5;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/HomeFragment$5;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
