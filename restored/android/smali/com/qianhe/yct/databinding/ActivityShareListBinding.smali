.class public final Lcom/qianhe/yct/databinding/ActivityShareListBinding;
.super Ljava/lang/Object;
.source "ActivityShareListBinding.java"


# instance fields
.field public final bottomBtn:Lcom/qianhe/yct/view/ShareBottomView;

.field public final flt:Landroid/widget/FrameLayout;

.field public final ivAll:Landroid/widget/ImageView;

.field public final ivEmpty:Landroid/widget/ImageView;

.field public final lltAll:Landroid/widget/LinearLayout;

.field public final lltEmpty:Landroid/widget/LinearLayout;

.field public final main:Landroid/widget/RelativeLayout;

.field public final rcvShare:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

.field public final tvEmptyDesc:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/qianhe/yct/view/ShareBottomView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroid/widget/TextView;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 63
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->bottomBtn:Lcom/qianhe/yct/view/ShareBottomView;

    .line 64
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->flt:Landroid/widget/FrameLayout;

    .line 65
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->ivAll:Landroid/widget/ImageView;

    .line 66
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->ivEmpty:Landroid/widget/ImageView;

    .line 67
    iput-object p6, p0, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->lltAll:Landroid/widget/LinearLayout;

    .line 68
    iput-object p7, p0, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->lltEmpty:Landroid/widget/LinearLayout;

    .line 69
    iput-object p8, p0, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->main:Landroid/widget/RelativeLayout;

    .line 70
    iput-object p9, p0, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->rcvShare:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    iput-object p10, p0, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    .line 72
    iput-object p11, p0, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->tvEmptyDesc:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityShareListBinding;
    .locals 14

    .line 102
    sget v0, Lcom/qianhe/yct/R$id;->bottomBtn:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/qianhe/yct/view/ShareBottomView;

    if-eqz v4, :cond_0

    .line 108
    sget v0, Lcom/qianhe/yct/R$id;->flt:I

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    .line 114
    sget v0, Lcom/qianhe/yct/R$id;->ivAll:I

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 120
    sget v0, Lcom/qianhe/yct/R$id;->ivEmpty:I

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 126
    sget v0, Lcom/qianhe/yct/R$id;->lltAll:I

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 132
    sget v0, Lcom/qianhe/yct/R$id;->lltEmpty:I

    .line 133
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 138
    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 140
    sget v0, Lcom/qianhe/yct/R$id;->rcvShare:I

    .line 141
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v11, :cond_0

    .line 146
    sget v0, Lcom/qianhe/yct/R$id;->topBar:I

    .line 147
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 151
    invoke-static {v1}, Lcom/qianhe/yct/databinding/TitlebarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TitlebarBinding;

    move-result-object v12

    .line 153
    sget v0, Lcom/qianhe/yct/R$id;->tvEmptyDesc:I

    .line 154
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 159
    new-instance v2, Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    move-object v10, v3

    invoke-direct/range {v2 .. v13}, Lcom/qianhe/yct/databinding/ActivityShareListBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/qianhe/yct/view/ShareBottomView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroid/widget/TextView;)V

    return-object v2

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 163
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityShareListBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityShareListBinding;
    .locals 2

    .line 89
    sget v0, Lcom/qianhe/yct/R$layout;->activity_share_list:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 91
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
