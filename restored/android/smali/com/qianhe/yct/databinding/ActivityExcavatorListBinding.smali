.class public final Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;
.super Ljava/lang/Object;
.source "ActivityExcavatorListBinding.java"


# instance fields
.field public final bottomBtn:Lcom/qianhe/yct/view/ExcavatorBottomView;

.field public final ivAll:Landroid/widget/ImageView;

.field public final lltAll:Landroid/widget/LinearLayout;

.field public final main:Landroid/widget/LinearLayout;

.field public final rcv:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/ExcavatorBottomView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/qianhe/yct/databinding/TitlebarBinding;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->rootView:Landroid/widget/LinearLayout;

    .line 47
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->bottomBtn:Lcom/qianhe/yct/view/ExcavatorBottomView;

    .line 48
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->ivAll:Landroid/widget/ImageView;

    .line 49
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->lltAll:Landroid/widget/LinearLayout;

    .line 50
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->main:Landroid/widget/LinearLayout;

    .line 51
    iput-object p6, p0, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    iput-object p7, p0, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;
    .locals 10

    .line 82
    sget v0, Lcom/qianhe/yct/R$id;->bottomBtn:I

    .line 83
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/qianhe/yct/view/ExcavatorBottomView;

    if-eqz v4, :cond_0

    .line 88
    sget v0, Lcom/qianhe/yct/R$id;->ivAll:I

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 94
    sget v0, Lcom/qianhe/yct/R$id;->lltAll:I

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 100
    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 102
    sget v0, Lcom/qianhe/yct/R$id;->rcv:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v8, :cond_0

    .line 108
    sget v0, Lcom/qianhe/yct/R$id;->topBar:I

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 113
    invoke-static {v1}, Lcom/qianhe/yct/databinding/TitlebarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TitlebarBinding;

    move-result-object v9

    .line 115
    new-instance v2, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    move-object v7, v3

    invoke-direct/range {v2 .. v9}, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;-><init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/ExcavatorBottomView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/qianhe/yct/databinding/TitlebarBinding;)V

    return-object v2

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;
    .locals 2

    .line 69
    sget v0, Lcom/qianhe/yct/R$layout;->activity_excavator_list:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
