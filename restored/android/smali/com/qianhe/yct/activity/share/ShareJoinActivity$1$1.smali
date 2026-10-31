.class Lcom/qianhe/yct/activity/share/ShareJoinActivity$1$1;
.super Ljava/lang/Object;
.source "ShareJoinActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/share/ShareJoinActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/share/ShareJoinActivity$1;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/share/ShareJoinActivity$1;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/qianhe/yct/activity/share/ShareJoinActivity$1$1;->this$1:Lcom/qianhe/yct/activity/share/ShareJoinActivity$1;

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

    .line 44
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareJoinActivity$1$1;->this$1:Lcom/qianhe/yct/activity/share/ShareJoinActivity$1;

    iget-object v0, v0, Lcom/qianhe/yct/activity/share/ShareJoinActivity$1;->this$0:Lcom/qianhe/yct/activity/share/ShareJoinActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/share/ShareJoinActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/share/ShareJoinActivity;)Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;->edtCode:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
