.class Lcom/qianhe/yct/activity/UserManageActivity$2$1;
.super Ljava/lang/Object;
.source "UserManageActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/UserManageActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/UserManageActivity$2;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/UserManageActivity$2;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/qianhe/yct/activity/UserManageActivity$2$1;->this$1:Lcom/qianhe/yct/activity/UserManageActivity$2;

    iput-object p2, p0, Lcom/qianhe/yct/activity/UserManageActivity$2$1;->val$token:Ljava/lang/String;

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

    .line 70
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserManageActivity$2$1;->this$1:Lcom/qianhe/yct/activity/UserManageActivity$2;

    iget-object v0, v0, Lcom/qianhe/yct/activity/UserManageActivity$2;->this$0:Lcom/qianhe/yct/activity/UserManageActivity;

    iget-object v1, p0, Lcom/qianhe/yct/activity/UserManageActivity$2$1;->val$token:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/UserManageActivity;->-$$Nest$mperformLogout(Lcom/qianhe/yct/activity/UserManageActivity;Ljava/lang/String;)V

    return-void
.end method
