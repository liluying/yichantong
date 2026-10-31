.class public final Lcom/qianhe/yct/databinding/ActivityProjectListBinding;
.super Ljava/lang/Object;
.source "ActivityProjectListBinding.java"


# instance fields
.field public final bottomBtn:Lcom/qianhe/yct/view/ProjectBottomView;

.field public final ivAll:Landroid/widget/ImageView;

.field public final ivEmpty:Landroid/widget/ImageView;

.field public final lltAll:Landroid/widget/LinearLayout;

.field public final lltEmpty:Landroid/widget/LinearLayout;

.field public final main:Landroid/widget/LinearLayout;

.field public final rcvProList:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

.field public final tvEmptyDesc:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/ProjectBottomView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroid/widget/TextView;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->rootView:Landroid/widget/LinearLayout;

    .line 58
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->bottomBtn:Lcom/qianhe/yct/view/ProjectBottomView;

    .line 59
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->ivAll:Landroid/widget/ImageView;

    .line 60
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->ivEmpty:Landroid/widget/ImageView;

    .line 61
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->lltAll:Landroid/widget/LinearLayout;

    .line 62
    iput-object p6, p0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->lltEmpty:Landroid/widget/LinearLayout;

    .line 63
    iput-object p7, p0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->main:Landroid/widget/LinearLayout;

    .line 64
    iput-object p8, p0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->rcvProList:Landroidx/recyclerview/widget/RecyclerView;

    .line 65
    iput-object p9, p0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    .line 66
    iput-object p10, p0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->tvEmptyDesc:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityProjectListBinding;
    .locals 13

    .line 96
    sget v0, Lcom/qianhe/yct/R$id;->bottomBtn:I

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/qianhe/yct/view/ProjectBottomView;

    if-eqz v4, :cond_0

    .line 102
    sget v0, Lcom/qianhe/yct/R$id;->ivAll:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 108
    sget v0, Lcom/qianhe/yct/R$id;->ivEmpty:I

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 114
    sget v0, Lcom/qianhe/yct/R$id;->lltAll:I

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 120
    sget v0, Lcom/qianhe/yct/R$id;->lltEmpty:I

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 126
    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 128
    sget v0, Lcom/qianhe/yct/R$id;->rcvProList:I

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v10, :cond_0

    .line 134
    sget v0, Lcom/qianhe/yct/R$id;->topBar:I

    .line 135
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 139
    invoke-static {v1}, Lcom/qianhe/yct/databinding/TitlebarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TitlebarBinding;

    move-result-object v11

    .line 141
    sget v0, Lcom/qianhe/yct/R$id;->tvEmptyDesc:I

    .line 142
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 147
    new-instance v2, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    move-object v9, v3

    invoke-direct/range {v2 .. v12}, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;-><init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/ProjectBottomView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroid/widget/TextView;)V

    return-object v2

    .line 150
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 151
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityProjectListBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityProjectListBinding;
    .locals 2

    .line 83
    sget v0, Lcom/qianhe/yct/R$layout;->activity_project_list:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
