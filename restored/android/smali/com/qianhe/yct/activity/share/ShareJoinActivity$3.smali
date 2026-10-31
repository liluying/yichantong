.class Lcom/qianhe/yct/activity/share/ShareJoinActivity$3;
.super Ljava/lang/Object;
.source "ShareJoinActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/share/ShareJoinActivity;->setDefaultCursor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/share/ShareJoinActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/share/ShareJoinActivity;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/qianhe/yct/activity/share/ShareJoinActivity$3;->this$0:Lcom/qianhe/yct/activity/share/ShareJoinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareJoinActivity$3;->this$0:Lcom/qianhe/yct/activity/share/ShareJoinActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/share/ShareJoinActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/share/ShareJoinActivity;)Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;->edtCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareJoinActivity$3;->this$0:Lcom/qianhe/yct/activity/share/ShareJoinActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/share/ShareJoinActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/share/ShareJoinActivity;)Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;->edtCode:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareJoinActivity$3;->this$0:Lcom/qianhe/yct/activity/share/ShareJoinActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/share/ShareJoinActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/share/ShareJoinActivity;)Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;->edtCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareJoinActivity$3;->this$0:Lcom/qianhe/yct/activity/share/ShareJoinActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/share/ShareJoinActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/share/ShareJoinActivity;)Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;->edtCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
