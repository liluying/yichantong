.class public final Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;
.super Ljava/lang/Object;
.source "ActivityAppConfigBinding.java"


# instance fields
.field public final main:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field public final topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

.field public final tvAdmin:Landroid/widget/TextView;

.field public final viewPager2:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/google/android/material/tabs/TabLayout;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroid/widget/TextView;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;->rootView:Landroid/widget/LinearLayout;

    .line 43
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;->main:Landroid/widget/LinearLayout;

    .line 44
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 45
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    .line 46
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;->tvAdmin:Landroid/widget/TextView;

    .line 47
    iput-object p6, p0, Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;
    .locals 7

    .line 77
    move-object v1, p0

    check-cast v1, Landroid/widget/LinearLayout;

    .line 79
    sget v0, Lcom/qianhe/yct/R$id;->tabLayout:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/material/tabs/TabLayout;

    if-eqz v3, :cond_0

    .line 85
    sget v0, Lcom/qianhe/yct/R$id;->topBar:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 90
    invoke-static {v2}, Lcom/qianhe/yct/databinding/TitlebarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TitlebarBinding;

    move-result-object v4

    .line 92
    sget v0, Lcom/qianhe/yct/R$id;->tvAdmin:I

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 98
    sget v0, Lcom/qianhe/yct/R$id;->viewPager2:I

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v6, :cond_0

    .line 104
    new-instance v0, Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;

    move-object v2, v1

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/google/android/material/tabs/TabLayout;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroid/widget/TextView;Landroidx/viewpager2/widget/ViewPager2;)V

    return-object v0

    .line 107
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 108
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;
    .locals 2

    .line 64
    sget v0, Lcom/qianhe/yct/R$layout;->activity_app_config:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityAppConfigBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
