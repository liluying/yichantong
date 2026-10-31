.class Lcom/qianhe/yct/activity/UserLoginActivity$5;
.super Ljava/lang/Object;
.source "UserLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/UserLoginActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/UserLoginActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/UserLoginActivity;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/qianhe/yct/activity/UserLoginActivity$5;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 213
    iget-object p1, p0, Lcom/qianhe/yct/activity/UserLoginActivity$5;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/UserLoginActivity;->access$000(Lcom/qianhe/yct/activity/UserLoginActivity;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "current_coords"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 214
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity$5;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/UserLoginActivity;->-$$Nest$fgetmINS(Lcom/qianhe/yct/activity/UserLoginActivity;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 215
    iget-object p1, p0, Lcom/qianhe/yct/activity/UserLoginActivity$5;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    new-instance v0, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/UserLoginActivity;->-$$Nest$fputmINS(Lcom/qianhe/yct/activity/UserLoginActivity;Lcom/qianhe/baselib/bean/InsNavi;)V

    .line 217
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/UserLoginActivity$5;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/UserLoginActivity;->-$$Nest$mvalidateAccountInput(Lcom/qianhe/yct/activity/UserLoginActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 218
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/UserLoginActivity$5;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/UserLoginActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/UserLoginActivity;)Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->edtAccount:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 219
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity$5;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/UserLoginActivity;->-$$Nest$fgetloginType(Lcom/qianhe/yct/activity/UserLoginActivity;)I

    move-result v0

    if-nez v0, :cond_3

    .line 220
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity$5;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/UserLoginActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/UserLoginActivity;)Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->edtPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    iget-object p1, p0, Lcom/qianhe/yct/activity/UserLoginActivity$5;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    sget v0, Lcom/qianhe/yct/R$string;->password_empty:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 224
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/activity/UserLoginActivity$5;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    sget v3, Lcom/qianhe/yct/R$string;->logging_in:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/qianhe/yct/activity/UserLoginActivity$5;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/UserLoginActivity;->-$$Nest$fgetmINS(Lcom/qianhe/yct/activity/UserLoginActivity;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v3

    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/qianhe/yct/utils/NetworkUserLoader;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/baselib/bean/InsNavi;)V

    return-void

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity$5;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/UserLoginActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/UserLoginActivity;)Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->edtCaptcha:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 230
    iget-object p1, p0, Lcom/qianhe/yct/activity/UserLoginActivity$5;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    sget v0, Lcom/qianhe/yct/R$string;->captcha_empty:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 232
    :cond_4
    iget-object v2, p0, Lcom/qianhe/yct/activity/UserLoginActivity$5;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    sget v3, Lcom/qianhe/yct/R$string;->logging_in:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/qianhe/yct/activity/UserLoginActivity$5;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/UserLoginActivity;->-$$Nest$fgetmINS(Lcom/qianhe/yct/activity/UserLoginActivity;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v3

    invoke-virtual {v2, p1, v1, v0, v3}, Lcom/qianhe/yct/utils/NetworkUserLoader;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/baselib/bean/InsNavi;)V

    return-void
.end method
