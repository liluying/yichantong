.class public final Lcom/qianhe/yct/databinding/ActivityMainBinding;
.super Ljava/lang/Object;
.source "ActivityMainBinding.java"


# instance fields
.field public final bottomNav:Lcom/qianhe/yct/view/SimpleBottomNav;

.field public final main:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

.field public final viewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/SimpleBottomNav;Landroid/widget/LinearLayout;Lcom/qianhe/yct/databinding/TopbarBinding;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityMainBinding;->rootView:Landroid/widget/LinearLayout;

    .line 38
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityMainBinding;->bottomNav:Lcom/qianhe/yct/view/SimpleBottomNav;

    .line 39
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityMainBinding;->main:Landroid/widget/LinearLayout;

    .line 40
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityMainBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    .line 41
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityMainBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityMainBinding;
    .locals 8

    .line 71
    sget v0, Lcom/qianhe/yct/R$id;->bottomNav:I

    .line 72
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/qianhe/yct/view/SimpleBottomNav;

    if-eqz v4, :cond_0

    .line 77
    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 79
    sget v0, Lcom/qianhe/yct/R$id;->topBar:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 84
    invoke-static {v1}, Lcom/qianhe/yct/databinding/TopbarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TopbarBinding;

    move-result-object v6

    .line 86
    sget v0, Lcom/qianhe/yct/R$id;->view_pager:I

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v7, :cond_0

    .line 92
    new-instance v2, Lcom/qianhe/yct/databinding/ActivityMainBinding;

    move-object v5, v3

    invoke-direct/range {v2 .. v7}, Lcom/qianhe/yct/databinding/ActivityMainBinding;-><init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/SimpleBottomNav;Landroid/widget/LinearLayout;Lcom/qianhe/yct/databinding/TopbarBinding;Landroidx/viewpager2/widget/ViewPager2;)V

    return-object v2

    .line 95
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 96
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityMainBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityMainBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityMainBinding;
    .locals 2

    .line 58
    sget v0, Lcom/qianhe/yct/R$layout;->activity_main:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 62
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityMainBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityMainBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityMainBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
