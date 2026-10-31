.class Lcom/qianhe/yct/activity/CreateAccountActivity$2;
.super Ljava/lang/Object;
.source "CreateAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/CreateAccountActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/CreateAccountActivity;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$2;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 123
    iget-object p1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$2;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CreateAccountActivity;->access$000(Lcom/qianhe/yct/activity/CreateAccountActivity;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "current_coords"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    iget-object v0, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$2;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CreateAccountActivity;->-$$Nest$fgetmINS(Lcom/qianhe/yct/activity/CreateAccountActivity;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$2;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    sget v0, Lcom/qianhe/yct/R$string;->getting_location:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$2;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CreateAccountActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CreateAccountActivity;)Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;->edtAccount:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 129
    iget-object v0, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$2;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CreateAccountActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CreateAccountActivity;)Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;->edtCaptcha:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$2;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/CreateAccountActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CreateAccountActivity;)Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 131
    iget-object v2, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$2;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/CreateAccountActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CreateAccountActivity;)Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;->edtPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 132
    iget-object v3, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$2;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/CreateAccountActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CreateAccountActivity;)Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;->edtConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 134
    iget-object p1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$2;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CreateAccountActivity;->-$$Nest$mgetAccountEmptyTip(Lcom/qianhe/yct/activity/CreateAccountActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 135
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 136
    iget-object p1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$2;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    sget v0, Lcom/qianhe/yct/R$string;->captcha_empty:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 137
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 138
    iget-object p1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$2;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    sget v0, Lcom/qianhe/yct/R$string;->please_enter_your_name:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 139
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 140
    iget-object p1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$2;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    sget v0, Lcom/qianhe/yct/R$string;->password_empty:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 141
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 142
    iget-object p1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$2;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    sget v0, Lcom/qianhe/yct/R$string;->confirm_password_empty:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 143
    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 144
    iget-object p1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$2;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    sget v0, Lcom/qianhe/yct/R$string;->passwords_not_match:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 146
    :cond_6
    iget-object v3, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$2;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    sget v4, Lcom/qianhe/yct/R$string;->creating_account:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v3

    invoke-virtual {v3, p1, v0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
