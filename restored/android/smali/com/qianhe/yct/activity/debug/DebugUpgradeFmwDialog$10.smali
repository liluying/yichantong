.class Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$10;
.super Ljava/lang/Object;
.source "DebugUpgradeFmwDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$10;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 530
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$10;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 531
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$10;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$10;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 533
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$10;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    invoke-static {p1}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->-$$Nest$fgetlistener(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$OnCloseListener;

    return-void
.end method
