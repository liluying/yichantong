.class public final Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;
.super Ljava/lang/Object;
.source "ActivityAboutAppBinding.java"


# instance fields
.field public final ivIcon:Landroidx/appcompat/widget/AppCompatImageView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

.field public final tvAppUpgrade:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvCopyright:Landroid/widget/TextView;

.field public final tvPrivacyPolicy:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvVersion:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;->rootView:Landroid/widget/LinearLayout;

    .line 47
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;->ivIcon:Landroidx/appcompat/widget/AppCompatImageView;

    .line 48
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    .line 49
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;->tvAppUpgrade:Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;->tvCopyright:Landroid/widget/TextView;

    .line 51
    iput-object p6, p0, Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;->tvPrivacyPolicy:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    iput-object p7, p0, Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;->tvVersion:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;
    .locals 10

    .line 82
    sget v0, Lcom/qianhe/yct/R$id;->ivIcon:I

    .line 83
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v4, :cond_0

    .line 88
    sget v0, Lcom/qianhe/yct/R$id;->topBar:I

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    invoke-static {v1}, Lcom/qianhe/yct/databinding/TitlebarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TitlebarBinding;

    move-result-object v5

    .line 95
    sget v0, Lcom/qianhe/yct/R$id;->tvAppUpgrade:I

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v6, :cond_0

    .line 101
    sget v0, Lcom/qianhe/yct/R$id;->tvCopyright:I

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 107
    sget v0, Lcom/qianhe/yct/R$id;->tvPrivacyPolicy:I

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v8, :cond_0

    .line 113
    sget v0, Lcom/qianhe/yct/R$id;->tvVersion:I

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 119
    new-instance v2, Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v9}, Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;-><init>(Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;)V

    return-object v2

    .line 122
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 123
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;
    .locals 2

    .line 69
    sget v0, Lcom/qianhe/yct/R$layout;->activity_about_app:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityAboutAppBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
