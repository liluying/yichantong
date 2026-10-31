.class public final Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;
.super Ljava/lang/Object;
.source "ActivityModifyInfoBinding.java"


# instance fields
.field public final edtAccount:Landroid/widget/EditText;

.field public final edtCaptcha:Landroid/widget/EditText;

.field public final edtName:Landroid/widget/EditText;

.field public final edtNewPassword:Landroid/widget/EditText;

.field public final edtPassword:Landroid/widget/EditText;

.field public final lltCaptcha:Landroid/widget/LinearLayout;

.field public final lltName:Landroid/widget/LinearLayout;

.field public final lltNewPassword:Landroid/widget/LinearLayout;

.field public final lltPassword:Landroid/widget/LinearLayout;

.field public final lltPhone:Landroid/widget/LinearLayout;

.field public final lltSend:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

.field public final tvAccountDes:Landroid/widget/TextView;

.field public final tvCaptcha:Landroid/widget/TextView;

.field public final tvConfirm:Landroid/widget/TextView;

.field public final tvSwitchMethod:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->rootView:Landroid/widget/LinearLayout;

    .line 80
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->edtAccount:Landroid/widget/EditText;

    .line 81
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->edtCaptcha:Landroid/widget/EditText;

    .line 82
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->edtName:Landroid/widget/EditText;

    .line 83
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->edtNewPassword:Landroid/widget/EditText;

    .line 84
    iput-object p6, p0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->edtPassword:Landroid/widget/EditText;

    .line 85
    iput-object p7, p0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->lltCaptcha:Landroid/widget/LinearLayout;

    .line 86
    iput-object p8, p0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->lltName:Landroid/widget/LinearLayout;

    .line 87
    iput-object p9, p0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->lltNewPassword:Landroid/widget/LinearLayout;

    .line 88
    iput-object p10, p0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->lltPassword:Landroid/widget/LinearLayout;

    .line 89
    iput-object p11, p0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->lltPhone:Landroid/widget/LinearLayout;

    .line 90
    iput-object p12, p0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->lltSend:Landroid/widget/LinearLayout;

    .line 91
    iput-object p13, p0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    .line 92
    iput-object p14, p0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->tvAccountDes:Landroid/widget/TextView;

    .line 93
    iput-object p15, p0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->tvCaptcha:Landroid/widget/TextView;

    move-object/from16 p1, p16

    .line 94
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->tvConfirm:Landroid/widget/TextView;

    move-object/from16 p1, p17

    .line 95
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->tvSwitchMethod:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;
    .locals 21

    move-object/from16 v0, p0

    .line 125
    sget v1, Lcom/qianhe/yct/R$id;->edtAccount:I

    .line 126
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/EditText;

    if-eqz v5, :cond_0

    .line 131
    sget v1, Lcom/qianhe/yct/R$id;->edtCaptcha:I

    .line 132
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/EditText;

    if-eqz v6, :cond_0

    .line 137
    sget v1, Lcom/qianhe/yct/R$id;->edtName:I

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/EditText;

    if-eqz v7, :cond_0

    .line 143
    sget v1, Lcom/qianhe/yct/R$id;->edtNewPassword:I

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/EditText;

    if-eqz v8, :cond_0

    .line 149
    sget v1, Lcom/qianhe/yct/R$id;->edtPassword:I

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/EditText;

    if-eqz v9, :cond_0

    .line 155
    sget v1, Lcom/qianhe/yct/R$id;->lltCaptcha:I

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    .line 161
    sget v1, Lcom/qianhe/yct/R$id;->lltName:I

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 167
    sget v1, Lcom/qianhe/yct/R$id;->lltNewPassword:I

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    .line 173
    sget v1, Lcom/qianhe/yct/R$id;->lltPassword:I

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_0

    .line 179
    sget v1, Lcom/qianhe/yct/R$id;->lltPhone:I

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_0

    .line 185
    sget v1, Lcom/qianhe/yct/R$id;->lltSend:I

    .line 186
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/LinearLayout;

    if-eqz v15, :cond_0

    .line 191
    sget v1, Lcom/qianhe/yct/R$id;->topBar:I

    .line 192
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 196
    invoke-static {v2}, Lcom/qianhe/yct/databinding/TitlebarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TitlebarBinding;

    move-result-object v16

    .line 198
    sget v1, Lcom/qianhe/yct/R$id;->tvAccountDes:I

    .line 199
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 204
    sget v1, Lcom/qianhe/yct/R$id;->tvCaptcha:I

    .line 205
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 210
    sget v1, Lcom/qianhe/yct/R$id;->tvConfirm:I

    .line 211
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 216
    sget v1, Lcom/qianhe/yct/R$id;->tvSwitchMethod:I

    .line 217
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    .line 222
    new-instance v3, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v20}, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    .line 226
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;
    .locals 2

    .line 112
    sget v0, Lcom/qianhe/yct/R$layout;->activity_modify_info:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 114
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 116
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
