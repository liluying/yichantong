.class public final Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;
.super Ljava/lang/Object;
.source "ActivityBasestationNetworkLinkBinding.java"


# instance fields
.field public final main:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field public final topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

.field public final viewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/google/android/material/tabs/TabLayout;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;->rootView:Landroid/widget/LinearLayout;

    .line 39
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;->main:Landroid/widget/LinearLayout;

    .line 40
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 41
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    .line 42
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;
    .locals 6

    .line 72
    move-object v1, p0

    check-cast v1, Landroid/widget/LinearLayout;

    .line 74
    sget v0, Lcom/qianhe/yct/R$id;->tabLayout:I

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/material/tabs/TabLayout;

    if-eqz v3, :cond_0

    .line 80
    sget v0, Lcom/qianhe/yct/R$id;->topBar:I

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 85
    invoke-static {v2}, Lcom/qianhe/yct/databinding/TitlebarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TitlebarBinding;

    move-result-object v4

    .line 87
    sget v0, Lcom/qianhe/yct/R$id;->viewPager:I

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v5, :cond_0

    .line 93
    new-instance v0, Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/google/android/material/tabs/TabLayout;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroidx/viewpager2/widget/ViewPager2;)V

    return-object v0

    .line 96
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 97
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;
    .locals 2

    .line 59
    sget v0, Lcom/qianhe/yct/R$layout;->activity_basestation_network_link:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityBasestationNetworkLinkBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
