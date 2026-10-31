.class public final Lcom/qianhe/yct/databinding/ActivityCadpreviewBinding;
.super Ljava/lang/Object;
.source "ActivityCadpreviewBinding.java"


# instance fields
.field public final main:Landroid/widget/LinearLayout;

.field public final progressBar:Landroid/widget/ProgressBar;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

.field public final tvChooseCad:Landroid/widget/TextView;

.field public final tvFileName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Lcom/qianhe/yct/databinding/TopbarBinding;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityCadpreviewBinding;->rootView:Landroid/widget/LinearLayout;

    .line 42
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityCadpreviewBinding;->main:Landroid/widget/LinearLayout;

    .line 43
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityCadpreviewBinding;->progressBar:Landroid/widget/ProgressBar;

    .line 44
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityCadpreviewBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    .line 45
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityCadpreviewBinding;->tvChooseCad:Landroid/widget/TextView;

    .line 46
    iput-object p6, p0, Lcom/qianhe/yct/databinding/ActivityCadpreviewBinding;->tvFileName:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityCadpreviewBinding;
    .locals 7

    .line 76
    move-object v1, p0

    check-cast v1, Landroid/widget/LinearLayout;

    .line 78
    sget v0, Lcom/qianhe/yct/R$id;->progressBar:I

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/widget/ProgressBar;

    if-eqz v3, :cond_0

    .line 84
    sget v0, Lcom/qianhe/yct/R$id;->topBar:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 89
    invoke-static {v2}, Lcom/qianhe/yct/databinding/TopbarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TopbarBinding;

    move-result-object v4

    .line 91
    sget v0, Lcom/qianhe/yct/R$id;->tvChooseCad:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 97
    sget v0, Lcom/qianhe/yct/R$id;->tvFileName:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 103
    new-instance v0, Lcom/qianhe/yct/databinding/ActivityCadpreviewBinding;

    move-object v2, v1

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/databinding/ActivityCadpreviewBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Lcom/qianhe/yct/databinding/TopbarBinding;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 106
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityCadpreviewBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityCadpreviewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityCadpreviewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityCadpreviewBinding;
    .locals 2

    .line 63
    sget v0, Lcom/qianhe/yct/R$layout;->activity_cadpreview:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityCadpreviewBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityCadpreviewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityCadpreviewBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
