.class Lcom/qianhe/yct/activity/UserManageActivity$7;
.super Ljava/lang/Object;
.source "UserManageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/UserManageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/UserManageActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/UserManageActivity;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/qianhe/yct/activity/UserManageActivity$7;->this$0:Lcom/qianhe/yct/activity/UserManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 113
    new-instance p1, Lcom/qianhe/yct/dialog/UnregisterDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/UnregisterDialogFragment;-><init>()V

    .line 114
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserManageActivity$7;->this$0:Lcom/qianhe/yct/activity/UserManageActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "UnregisterDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
