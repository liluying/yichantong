.class Lcom/qianhe/yct/activity/share/ShareCreateActivity$8$1;
.super Ljava/lang/Object;
.source "ShareCreateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/share/ShareCreateActivity$8;->onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/share/ShareCreateActivity$8;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/share/ShareCreateActivity$8;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$8$1;->this$1:Lcom/qianhe/yct/activity/share/ShareCreateActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 542
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$8$1;->this$1:Lcom/qianhe/yct/activity/share/ShareCreateActivity$8;

    iget-object v0, v0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$8;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 544
    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$8$1;->this$1:Lcom/qianhe/yct/activity/share/ShareCreateActivity$8;

    iget-object v1, v1, Lcom/qianhe/yct/activity/share/ShareCreateActivity$8;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->edtName:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
