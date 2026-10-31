.class public final Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;
.super Ljava/lang/Object;
.source "ActivityUserLoginBinding.java"


# instance fields
.field public final edtAccount:Landroid/widget/EditText;

.field public final edtCaptcha:Landroid/widget/EditText;

.field public final edtPassword:Landroid/widget/EditText;

.field public final lltCaptcha:Landroid/widget/LinearLayout;

.field public final lltPassword:Landroid/widget/LinearLayout;

.field public final lltSend:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

.field public final tvCaptcha:Landroid/widget/TextView;

.field public final tvCreate:Landroid/widget/TextView;

.field public final tvLogin:Landroid/widget/TextView;

.field public final tvSwitchMethod:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->rootView:Landroid/widget/LinearLayout;

    .line 62
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->edtAccount:Landroid/widget/EditText;

    .line 63
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->edtCaptcha:Landroid/widget/EditText;

    .line 64
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->edtPassword:Landroid/widget/EditText;

    .line 65
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->lltCaptcha:Landroid/widget/LinearLayout;

    .line 66
    iput-object p6, p0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->lltPassword:Landroid/widget/LinearLayout;

    .line 67
    iput-object p7, p0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->lltSend:Landroid/widget/LinearLayout;

    .line 68
    iput-object p8, p0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    .line 69
    iput-object p9, p0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->tvCaptcha:Landroid/widget/TextView;

    .line 70
    iput-object p10, p0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->tvCreate:Landroid/widget/TextView;

    .line 71
    iput-object p11, p0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->tvLogin:Landroid/widget/TextView;

    .line 72
    iput-object p12, p0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->tvSwitchMethod:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;
    .locals 15

    .line 102
    sget v0, Lcom/qianhe/yct/R$id;->edtAccount:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/EditText;

    if-eqz v4, :cond_0

    .line 108
    sget v0, Lcom/qianhe/yct/R$id;->edtCaptcha:I

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/EditText;

    if-eqz v5, :cond_0

    .line 114
    sget v0, Lcom/qianhe/yct/R$id;->edtPassword:I

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/EditText;

    if-eqz v6, :cond_0

    .line 120
    sget v0, Lcom/qianhe/yct/R$id;->lltCaptcha:I

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 126
    sget v0, Lcom/qianhe/yct/R$id;->lltPassword:I

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 132
    sget v0, Lcom/qianhe/yct/R$id;->lltSend:I

    .line 133
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 138
    sget v0, Lcom/qianhe/yct/R$id;->topBar:I

    .line 139
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 143
    invoke-static {v1}, Lcom/qianhe/yct/databinding/TitlebarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TitlebarBinding;

    move-result-object v10

    .line 145
    sget v0, Lcom/qianhe/yct/R$id;->tvCaptcha:I

    .line 146
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 151
    sget v0, Lcom/qianhe/yct/R$id;->tvCreate:I

    .line 152
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 157
    sget v0, Lcom/qianhe/yct/R$id;->tvLogin:I

    .line 158
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 163
    sget v0, Lcom/qianhe/yct/R$id;->tvSwitchMethod:I

    .line 164
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 169
    new-instance v2, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v14}, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 173
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 174
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;
    .locals 2

    .line 89
    sget v0, Lcom/qianhe/yct/R$layout;->activity_user_login:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 91
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
