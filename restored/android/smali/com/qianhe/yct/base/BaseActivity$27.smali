.class Lcom/qianhe/yct/base/BaseActivity$27;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/ShareWayDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/base/BaseActivity;->showShareWayDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/base/BaseActivity;

.field final synthetic val$shareCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/base/BaseActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3426
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$27;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    iput-object p2, p0, Lcom/qianhe/yct/base/BaseActivity$27;->val$shareCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCopy()V
    .locals 3

    .line 3429
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$27;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity$27;->val$shareCode:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->copyShareCodeToClipboard(Ljava/lang/String;Z)V

    return-void
.end method

.method public onShare()V
    .locals 2

    .line 3434
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$27;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity$27;->val$shareCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showWeChatOnlyChooser(Ljava/lang/String;)V

    return-void
.end method
