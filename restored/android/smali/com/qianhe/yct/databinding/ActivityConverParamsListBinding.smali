.class public final Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;
.super Ljava/lang/Object;
.source "ActivityConverParamsListBinding.java"


# instance fields
.field public final bottomBtn:Lcom/qianhe/yct/view/EngineeringBottomView;

.field public final ivAll:Landroid/widget/ImageView;

.field public final lltAll:Landroid/widget/LinearLayout;

.field public final lltEmpty:Landroid/widget/LinearLayout;

.field public final main:Landroid/widget/LinearLayout;

.field public final rcvConverParamsList:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

.field public final tvEmptyDesc:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/EngineeringBottomView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroid/widget/TextView;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->rootView:Landroid/widget/LinearLayout;

    .line 55
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->bottomBtn:Lcom/qianhe/yct/view/EngineeringBottomView;

    .line 56
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->ivAll:Landroid/widget/ImageView;

    .line 57
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->lltAll:Landroid/widget/LinearLayout;

    .line 58
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->lltEmpty:Landroid/widget/LinearLayout;

    .line 59
    iput-object p6, p0, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->main:Landroid/widget/LinearLayout;

    .line 60
    iput-object p7, p0, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->rcvConverParamsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    iput-object p8, p0, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    .line 62
    iput-object p9, p0, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->tvEmptyDesc:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;
    .locals 12

    .line 92
    sget v0, Lcom/qianhe/yct/R$id;->bottomBtn:I

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/qianhe/yct/view/EngineeringBottomView;

    if-eqz v4, :cond_0

    .line 98
    sget v0, Lcom/qianhe/yct/R$id;->ivAll:I

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 104
    sget v0, Lcom/qianhe/yct/R$id;->lltAll:I

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 110
    sget v0, Lcom/qianhe/yct/R$id;->lltEmpty:I

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 116
    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 118
    sget v0, Lcom/qianhe/yct/R$id;->rcvConverParamsList:I

    .line 119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v9, :cond_0

    .line 124
    sget v0, Lcom/qianhe/yct/R$id;->topBar:I

    .line 125
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    invoke-static {v1}, Lcom/qianhe/yct/databinding/TitlebarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TitlebarBinding;

    move-result-object v10

    .line 131
    sget v0, Lcom/qianhe/yct/R$id;->tvEmptyDesc:I

    .line 132
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 137
    new-instance v2, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    move-object v8, v3

    invoke-direct/range {v2 .. v11}, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;-><init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/EngineeringBottomView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroid/widget/TextView;)V

    return-object v2

    .line 140
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 141
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;
    .locals 2

    .line 79
    sget v0, Lcom/qianhe/yct/R$layout;->activity_conver_params_list:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 83
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
