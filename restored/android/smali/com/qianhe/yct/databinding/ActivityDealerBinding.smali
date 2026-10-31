.class public final Lcom/qianhe/yct/databinding/ActivityDealerBinding;
.super Ljava/lang/Object;
.source "ActivityDealerBinding.java"


# instance fields
.field public final main:Landroid/widget/LinearLayout;

.field public final rcv:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/qianhe/yct/databinding/TitlebarBinding;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityDealerBinding;->rootView:Landroid/widget/LinearLayout;

    .line 34
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityDealerBinding;->main:Landroid/widget/LinearLayout;

    .line 35
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityDealerBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityDealerBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityDealerBinding;
    .locals 4

    .line 66
    move-object v0, p0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 68
    sget v1, Lcom/qianhe/yct/R$id;->rcv:I

    .line 69
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 74
    sget v1, Lcom/qianhe/yct/R$id;->topBar:I

    .line 75
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 79
    invoke-static {v3}, Lcom/qianhe/yct/databinding/TitlebarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TitlebarBinding;

    move-result-object p0

    .line 81
    new-instance v1, Lcom/qianhe/yct/databinding/ActivityDealerBinding;

    invoke-direct {v1, v0, v0, v2, p0}, Lcom/qianhe/yct/databinding/ActivityDealerBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/qianhe/yct/databinding/TitlebarBinding;)V

    return-object v1

    .line 83
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityDealerBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityDealerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityDealerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityDealerBinding;
    .locals 2

    .line 53
    sget v0, Lcom/qianhe/yct/R$layout;->activity_dealer:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 57
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityDealerBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityDealerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityDealerBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
