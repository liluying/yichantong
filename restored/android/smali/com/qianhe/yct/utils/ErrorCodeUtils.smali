.class public abstract Lcom/qianhe/yct/utils/ErrorCodeUtils;
.super Ljava/lang/Object;
.source "ErrorCodeUtils.java"


# direct methods
.method public static getErrorMsg(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 20
    invoke-static {p0}, Lcom/qianhe/baselib/utils/LanguagePrefs;->wrapContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 21
    sget v0, Lcom/qianhe/yct/R$string;->request_failed:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2349

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return-object v0

    .line 108
    :pswitch_0
    sget p1, Lcom/qianhe/yct/R$string;->project_empty:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 105
    :pswitch_1
    sget p1, Lcom/qianhe/yct/R$string;->share_name_format_error:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 102
    :pswitch_2
    sget p1, Lcom/qianhe/yct/R$string;->share_name_not_exist:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 99
    :pswitch_3
    sget p1, Lcom/qianhe/yct/R$string;->share_name_exists:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 96
    :pswitch_4
    sget p1, Lcom/qianhe/yct/R$string;->project_type_error:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 93
    :pswitch_5
    sget p1, Lcom/qianhe/yct/R$string;->project_name_format_error:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 90
    :pswitch_6
    sget p1, Lcom/qianhe/yct/R$string;->project_details_format_error:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 87
    :pswitch_7
    sget p1, Lcom/qianhe/yct/R$string;->project_not_exist:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 84
    :pswitch_8
    sget p1, Lcom/qianhe/yct/R$string;->name_exists:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 81
    :pswitch_9
    sget p1, Lcom/qianhe/yct/R$string;->operation_too_frequent:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 78
    :pswitch_a
    sget p1, Lcom/qianhe/yct/R$string;->username_or_password_error:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 75
    :pswitch_b
    sget p1, Lcom/qianhe/yct/R$string;->password_error:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 72
    :pswitch_c
    sget p1, Lcom/qianhe/yct/R$string;->captcha_error:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 69
    :pswitch_d
    sget p1, Lcom/qianhe/yct/R$string;->sending_failed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 66
    :pswitch_e
    sget p1, Lcom/qianhe/yct/R$string;->send_limit_reached:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 63
    :pswitch_f
    sget p1, Lcom/qianhe/yct/R$string;->user_not_exist:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 60
    :pswitch_10
    sget p1, Lcom/qianhe/yct/R$string;->phone_exists:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 57
    :pswitch_11
    sget p1, Lcom/qianhe/yct/R$string;->account_exists:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 54
    :pswitch_12
    sget p1, Lcom/qianhe/yct/R$string;->email_format_error:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 51
    :pswitch_13
    sget p1, Lcom/qianhe/yct/R$string;->phone_format_error:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 48
    :pswitch_14
    sget p1, Lcom/qianhe/yct/R$string;->user_name_format_error:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 45
    :pswitch_15
    sget p1, Lcom/qianhe/yct/R$string;->password_format_error:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 42
    :pswitch_16
    sget p1, Lcom/qianhe/yct/R$string;->account_format_error:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 39
    :pswitch_17
    sget p1, Lcom/qianhe/yct/R$string;->service_busy:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 36
    :pswitch_18
    sget p1, Lcom/qianhe/yct/R$string;->target_not_exist:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 33
    :pswitch_19
    sget p1, Lcom/qianhe/yct/R$string;->target_exists:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 30
    :pswitch_1a
    sget p1, Lcom/qianhe/yct/R$string;->permission_error:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 27
    :pswitch_1b
    sget p1, Lcom/qianhe/yct/R$string;->system_error:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 24
    :pswitch_1c
    sget p1, Lcom/qianhe/yct/R$string;->param_error:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 111
    :cond_0
    sget p1, Lcom/qianhe/yct/R$string;->cannot_get_own_share:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1f40
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2328
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
