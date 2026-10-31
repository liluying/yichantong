.class Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$1;
.super Ljava/lang/Object;
.source "ExcavatorDetailActivity.java"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initNameView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;


# direct methods
.method public static synthetic $r8$lambda$avBxXsCfD7mI9tpO4yxgDT5JvwA(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$1;)V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$1;->this$0:Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;

    .line 236
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 238
    iget-object p0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$1;->this$0:Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;

    invoke-static {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;)Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$1;->this$0:Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 230
    const-string v0, "detail_excavator_name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 232
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$1;->this$0:Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->-$$Nest$msetDefaultName(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;)V

    return-void

    .line 233
    :cond_1
    const-string p1, "manual_cancel"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 234
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$1;->this$0:Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;)Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 235
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$1;->this$0:Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;)Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance p2, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$1;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method
