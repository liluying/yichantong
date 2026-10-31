.class public final Lcom/qianhe/yct/databinding/FragmentSettingBinding;
.super Ljava/lang/Object;
.source "FragmentSettingBinding.java"


# instance fields
.field public final main:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvAboutApp:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvBaseInfo:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvConfig:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvDealer:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvDeviceManage:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvRtkInfo:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvUserManage:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvVersion:Landroid/widget/TextView;

.field public final tvZeroing:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->rootView:Landroid/widget/LinearLayout;

    .line 60
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->main:Landroid/widget/LinearLayout;

    .line 61
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->tvAboutApp:Landroidx/appcompat/widget/AppCompatTextView;

    .line 62
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->tvBaseInfo:Landroidx/appcompat/widget/AppCompatTextView;

    .line 63
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->tvConfig:Landroidx/appcompat/widget/AppCompatTextView;

    .line 64
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->tvDealer:Landroidx/appcompat/widget/AppCompatTextView;

    .line 65
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->tvDeviceManage:Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    iput-object p8, p0, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->tvRtkInfo:Landroidx/appcompat/widget/AppCompatTextView;

    .line 67
    iput-object p9, p0, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->tvUserManage:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    iput-object p10, p0, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->tvVersion:Landroid/widget/TextView;

    .line 69
    iput-object p11, p0, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->tvZeroing:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentSettingBinding;
    .locals 12

    .line 99
    move-object v1, p0

    check-cast v1, Landroid/widget/LinearLayout;

    .line 101
    sget v0, Lcom/qianhe/yct/R$id;->tvAboutApp:I

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v3, :cond_0

    .line 107
    sget v0, Lcom/qianhe/yct/R$id;->tvBaseInfo:I

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v4, :cond_0

    .line 113
    sget v0, Lcom/qianhe/yct/R$id;->tvConfig:I

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v5, :cond_0

    .line 119
    sget v0, Lcom/qianhe/yct/R$id;->tvDealer:I

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v6, :cond_0

    .line 125
    sget v0, Lcom/qianhe/yct/R$id;->tvDeviceManage:I

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v7, :cond_0

    .line 131
    sget v0, Lcom/qianhe/yct/R$id;->tvRtkInfo:I

    .line 132
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v8, :cond_0

    .line 137
    sget v0, Lcom/qianhe/yct/R$id;->tvUserManage:I

    .line 138
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v9, :cond_0

    .line 143
    sget v0, Lcom/qianhe/yct/R$id;->tvVersion:I

    .line 144
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 149
    sget v0, Lcom/qianhe/yct/R$id;->tvZeroing:I

    .line 150
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v11, :cond_0

    .line 155
    new-instance v0, Lcom/qianhe/yct/databinding/FragmentSettingBinding;

    move-object v2, v1

    invoke-direct/range {v0 .. v11}, Lcom/qianhe/yct/databinding/FragmentSettingBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v0

    .line 158
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 159
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentSettingBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentSettingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentSettingBinding;
    .locals 2

    .line 86
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_setting:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 90
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentSettingBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
