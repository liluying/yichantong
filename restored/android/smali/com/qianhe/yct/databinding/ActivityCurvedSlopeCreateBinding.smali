.class public final Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;
.super Ljava/lang/Object;
.source "ActivityCurvedSlopeCreateBinding.java"


# instance fields
.field public final main:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

.field public final viewPager2:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/qianhe/yct/databinding/TopbarBinding;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;->rootView:Landroid/widget/LinearLayout;

    .line 34
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;->main:Landroid/widget/LinearLayout;

    .line 35
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    .line 36
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;
    .locals 4

    .line 66
    move-object v0, p0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 68
    sget v1, Lcom/qianhe/yct/R$id;->topBar:I

    .line 69
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 73
    invoke-static {v2}, Lcom/qianhe/yct/databinding/TopbarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TopbarBinding;

    move-result-object v1

    .line 75
    sget v2, Lcom/qianhe/yct/R$id;->viewPager2:I

    .line 76
    invoke-static {p0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v3, :cond_0

    .line 81
    new-instance p0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;

    invoke-direct {p0, v0, v0, v1, v3}, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/qianhe/yct/databinding/TopbarBinding;Landroidx/viewpager2/widget/ViewPager2;)V

    return-object p0

    :cond_0
    move v1, v2

    .line 84
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 85
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;
    .locals 2

    .line 53
    sget v0, Lcom/qianhe/yct/R$layout;->activity_curved_slope_create:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 57
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
