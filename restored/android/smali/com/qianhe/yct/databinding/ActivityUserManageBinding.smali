.class public final Lcom/qianhe/yct/databinding/ActivityUserManageBinding;
.super Ljava/lang/Object;
.source "ActivityUserManageBinding.java"


# instance fields
.field public final lltInfoUser:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

.field public final tvAccount:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvDeviceManage:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvGotoLogin:Landroid/widget/TextView;

.field public final tvLogout:Landroid/widget/TextView;

.field public final tvModifyName:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvModifyPhone:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvModifyPsw:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvName:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvUnregisterAccount:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->rootView:Landroid/widget/LinearLayout;

    .line 64
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->lltInfoUser:Landroid/widget/LinearLayout;

    .line 65
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    .line 66
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->tvAccount:Landroidx/appcompat/widget/AppCompatTextView;

    .line 67
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->tvDeviceManage:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    iput-object p6, p0, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->tvGotoLogin:Landroid/widget/TextView;

    .line 69
    iput-object p7, p0, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->tvLogout:Landroid/widget/TextView;

    .line 70
    iput-object p8, p0, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->tvModifyName:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    iput-object p9, p0, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->tvModifyPhone:Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    iput-object p10, p0, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->tvModifyPsw:Landroidx/appcompat/widget/AppCompatTextView;

    .line 73
    iput-object p11, p0, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->tvName:Landroidx/appcompat/widget/AppCompatTextView;

    .line 74
    iput-object p12, p0, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->tvUnregisterAccount:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityUserManageBinding;
    .locals 15

    .line 104
    sget v0, Lcom/qianhe/yct/R$id;->lltInfoUser:I

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 110
    sget v0, Lcom/qianhe/yct/R$id;->topBar:I

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 115
    invoke-static {v1}, Lcom/qianhe/yct/databinding/TitlebarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TitlebarBinding;

    move-result-object v5

    .line 117
    sget v0, Lcom/qianhe/yct/R$id;->tvAccount:I

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v6, :cond_0

    .line 123
    sget v0, Lcom/qianhe/yct/R$id;->tvDeviceManage:I

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v7, :cond_0

    .line 129
    sget v0, Lcom/qianhe/yct/R$id;->tvGotoLogin:I

    .line 130
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 135
    sget v0, Lcom/qianhe/yct/R$id;->tvLogout:I

    .line 136
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 141
    sget v0, Lcom/qianhe/yct/R$id;->tvModifyName:I

    .line 142
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v10, :cond_0

    .line 147
    sget v0, Lcom/qianhe/yct/R$id;->tvModifyPhone:I

    .line 148
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v11, :cond_0

    .line 153
    sget v0, Lcom/qianhe/yct/R$id;->tvModifyPsw:I

    .line 154
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v12, :cond_0

    .line 159
    sget v0, Lcom/qianhe/yct/R$id;->tvName:I

    .line 160
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v13, :cond_0

    .line 165
    sget v0, Lcom/qianhe/yct/R$id;->tvUnregisterAccount:I

    .line 166
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v14, :cond_0

    .line 171
    new-instance v2, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v14}, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v2

    .line 175
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 176
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityUserManageBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityUserManageBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityUserManageBinding;
    .locals 2

    .line 91
    sget v0, Lcom/qianhe/yct/R$layout;->activity_user_manage:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 93
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 95
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityUserManageBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
