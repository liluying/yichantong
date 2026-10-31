.class public final Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;
.super Ljava/lang/Object;
.source "ActivityDebugUpgradefmwBinding.java"


# instance fields
.field private final rootView:Landroid/widget/RelativeLayout;

.field public final topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

.field public final tvChooseFmw:Landroid/widget/TextView;

.field public final tvPath:Landroid/widget/TextView;

.field public final tvUpgrade:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 38
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    .line 39
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;->tvChooseFmw:Landroid/widget/TextView;

    .line 40
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;->tvPath:Landroid/widget/TextView;

    .line 41
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;->tvUpgrade:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;
    .locals 8

    .line 71
    sget v0, Lcom/qianhe/yct/R$id;->topBar:I

    .line 72
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    invoke-static {v1}, Lcom/qianhe/yct/databinding/TitlebarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TitlebarBinding;

    move-result-object v4

    .line 78
    sget v0, Lcom/qianhe/yct/R$id;->tvChooseFmw:I

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 84
    sget v0, Lcom/qianhe/yct/R$id;->tvPath:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 90
    sget v0, Lcom/qianhe/yct/R$id;->tvUpgrade:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 96
    new-instance v2, Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-direct/range {v2 .. v7}, Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 100
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;
    .locals 2

    .line 58
    sget v0, Lcom/qianhe/yct/R$layout;->activity_debug_upgradefmw:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 62
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
