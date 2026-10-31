.class Lcom/qianhe/yct/activity/share/ShareCreateActivity$8;
.super Ljava/lang/Object;
.source "ShareCreateActivity.java"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/share/ShareCreateActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$8;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 531
    const-string v0, "defaultname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 532
    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 533
    const-string v0, "manual_cancel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p1, :cond_0

    .line 535
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$8;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$msetDefaultName(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 537
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$8;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 538
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$8;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->edtName:Landroid/widget/EditText;

    new-instance p2, Lcom/qianhe/yct/activity/share/ShareCreateActivity$8$1;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity$8$1;-><init>(Lcom/qianhe/yct/activity/share/ShareCreateActivity$8;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
