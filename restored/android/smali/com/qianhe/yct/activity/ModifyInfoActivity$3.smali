.class Lcom/qianhe/yct/activity/ModifyInfoActivity$3;
.super Ljava/lang/Object;
.source "ModifyInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/ModifyInfoActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/ModifyInfoActivity;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 118
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->-$$Nest$fgettype(Lcom/qianhe/yct/activity/ModifyInfoActivity;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 119
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ModifyInfoActivity;)Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    sget v0, Lcom/qianhe/yct/R$string;->user_name_empty:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    sget v1, Lcom/qianhe/yct/R$string;->submitting:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyName(Ljava/lang/String;)V

    return-void

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    sget v0, Lcom/qianhe/yct/R$string;->no_modify_content:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 130
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->-$$Nest$fgettype(Lcom/qianhe/yct/activity/ModifyInfoActivity;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 131
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ModifyInfoActivity;)Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->edtAccount:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 132
    iget-object v0, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ModifyInfoActivity;)Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->edtPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ModifyInfoActivity;)Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->edtCaptcha:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/yct/db/UserSession;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 135
    iget-object v2, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->-$$Nest$fgetisChinaLanguage(Lcom/qianhe/yct/activity/ModifyInfoActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    sget v0, Lcom/qianhe/yct/R$string;->please_enter_phone:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 137
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 138
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    sget v0, Lcom/qianhe/yct/R$string;->please_enter_email:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 139
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 140
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    sget v0, Lcom/qianhe/yct/R$string;->password_empty:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 141
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 142
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    sget v0, Lcom/qianhe/yct/R$string;->captcha_empty:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 144
    :cond_6
    iget-object v2, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    sget v3, Lcom/qianhe/yct/R$string;->submitting:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 148
    :cond_7
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    sget v0, Lcom/qianhe/yct/R$string;->no_modify_content:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 150
    :cond_8
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->-$$Nest$fgettype(Lcom/qianhe/yct/activity/ModifyInfoActivity;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_10

    .line 151
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ModifyInfoActivity;)Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->edtPassword:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 152
    iget-object v0, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ModifyInfoActivity;)Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->edtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ModifyInfoActivity;)Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->edtCaptcha:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 154
    iget-object v2, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ModifyInfoActivity;)Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->lltPassword:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_b

    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_0

    .line 158
    :cond_9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 159
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    sget v0, Lcom/qianhe/yct/R$string;->passwords_same:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 156
    :cond_a
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    sget v0, Lcom/qianhe/yct/R$string;->password_empty:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 163
    :cond_b
    iget-object v2, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ModifyInfoActivity;)Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->edtAccount:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 164
    iget-object v3, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->-$$Nest$fgetisChinaLanguage(Lcom/qianhe/yct/activity/ModifyInfoActivity;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 165
    iget-object v2, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    sget v3, Lcom/qianhe/yct/R$string;->please_enter_phone_or_email:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    goto :goto_1

    .line 166
    :cond_c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 167
    iget-object v2, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    sget v3, Lcom/qianhe/yct/R$string;->please_enter_email:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    goto :goto_1

    .line 168
    :cond_d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 169
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    sget v0, Lcom/qianhe/yct/R$string;->password_empty:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 171
    :cond_e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 172
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    sget v0, Lcom/qianhe/yct/R$string;->captcha_empty:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 176
    :cond_f
    :goto_1
    iget-object v2, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    sget v3, Lcom/qianhe/yct/R$string;->submitting:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v2

    invoke-virtual {v2, v0, p1, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-void
.end method
