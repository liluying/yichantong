.class public final Lcom/qianhe/yct/databinding/ActivityLogviewBinding;
.super Ljava/lang/Object;
.source "ActivityLogviewBinding.java"


# instance fields
.field public final btn:Landroid/widget/Button;

.field public final progress:Landroid/widget/ProgressBar;

.field public final rcv:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/ProgressBar;Landroidx/recyclerview/widget/RecyclerView;Lcom/qianhe/yct/databinding/TitlebarBinding;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityLogviewBinding;->rootView:Landroid/widget/LinearLayout;

    .line 39
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityLogviewBinding;->btn:Landroid/widget/Button;

    .line 40
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityLogviewBinding;->progress:Landroid/widget/ProgressBar;

    .line 41
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityLogviewBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityLogviewBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityLogviewBinding;
    .locals 8

    .line 72
    sget v0, Lcom/qianhe/yct/R$id;->btn:I

    .line 73
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 78
    sget v0, Lcom/qianhe/yct/R$id;->progress:I

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ProgressBar;

    if-eqz v5, :cond_0

    .line 84
    sget v0, Lcom/qianhe/yct/R$id;->rcv:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_0

    .line 90
    sget v0, Lcom/qianhe/yct/R$id;->topBar:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 95
    invoke-static {v1}, Lcom/qianhe/yct/databinding/TitlebarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TitlebarBinding;

    move-result-object v7

    .line 97
    new-instance v2, Lcom/qianhe/yct/databinding/ActivityLogviewBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v7}, Lcom/qianhe/yct/databinding/ActivityLogviewBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/ProgressBar;Landroidx/recyclerview/widget/RecyclerView;Lcom/qianhe/yct/databinding/TitlebarBinding;)V

    return-object v2

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 101
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityLogviewBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityLogviewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityLogviewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityLogviewBinding;
    .locals 2

    .line 59
    sget v0, Lcom/qianhe/yct/R$layout;->activity_logview:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityLogviewBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityLogviewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityLogviewBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
