.class public final Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;
.super Ljava/lang/Object;
.source "ActivityCadEntityChooseBinding.java"


# instance fields
.field public final btnAllChoice:Lcom/google/android/material/button/MaterialButton;

.field public final btnAllInvis:Lcom/google/android/material/button/MaterialButton;

.field public final btnAllVis:Lcom/google/android/material/button/MaterialButton;

.field public final btnFinishChoose:Lcom/google/android/material/button/MaterialButton;

.field public final btnRevers:Lcom/google/android/material/button/MaterialButton;

.field public final cadView:Lcom/qh/xcad/XCadView;

.field public final ivCadViewResetScale:Landroid/widget/ImageView;

.field public final ivMyLocation:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final rvShowEntityPoints:Landroidx/recyclerview/widget/RecyclerView;

.field public final topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

.field public final tvTotalCount:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/qh/xcad/XCadView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Lcom/qianhe/yct/databinding/TopbarBinding;Landroid/widget/TextView;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->rootView:Landroid/widget/LinearLayout;

    .line 67
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->btnAllChoice:Lcom/google/android/material/button/MaterialButton;

    .line 68
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->btnAllInvis:Lcom/google/android/material/button/MaterialButton;

    .line 69
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->btnAllVis:Lcom/google/android/material/button/MaterialButton;

    .line 70
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->btnFinishChoose:Lcom/google/android/material/button/MaterialButton;

    .line 71
    iput-object p6, p0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->btnRevers:Lcom/google/android/material/button/MaterialButton;

    .line 72
    iput-object p7, p0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    .line 73
    iput-object p8, p0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->ivCadViewResetScale:Landroid/widget/ImageView;

    .line 74
    iput-object p9, p0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->ivMyLocation:Landroid/widget/ImageView;

    .line 75
    iput-object p10, p0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->rvShowEntityPoints:Landroidx/recyclerview/widget/RecyclerView;

    .line 76
    iput-object p11, p0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    .line 77
    iput-object p12, p0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->tvTotalCount:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;
    .locals 15

    .line 107
    sget v0, Lcom/qianhe/yct/R$id;->btnAllChoice:I

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    if-eqz v4, :cond_0

    .line 113
    sget v0, Lcom/qianhe/yct/R$id;->btnAllInvis:I

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    if-eqz v5, :cond_0

    .line 119
    sget v0, Lcom/qianhe/yct/R$id;->btnAllVis:I

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/material/button/MaterialButton;

    if-eqz v6, :cond_0

    .line 125
    sget v0, Lcom/qianhe/yct/R$id;->btnFinishChoose:I

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/android/material/button/MaterialButton;

    if-eqz v7, :cond_0

    .line 131
    sget v0, Lcom/qianhe/yct/R$id;->btnRevers:I

    .line 132
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/material/button/MaterialButton;

    if-eqz v8, :cond_0

    .line 137
    sget v0, Lcom/qianhe/yct/R$id;->cadView:I

    .line 138
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/qh/xcad/XCadView;

    if-eqz v9, :cond_0

    .line 143
    sget v0, Lcom/qianhe/yct/R$id;->ivCadViewResetScale:I

    .line 144
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    .line 149
    sget v0, Lcom/qianhe/yct/R$id;->ivMyLocation:I

    .line 150
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    .line 155
    sget v0, Lcom/qianhe/yct/R$id;->rvShowEntityPoints:I

    .line 156
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v12, :cond_0

    .line 161
    sget v0, Lcom/qianhe/yct/R$id;->topBar:I

    .line 162
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 166
    invoke-static {v1}, Lcom/qianhe/yct/databinding/TopbarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TopbarBinding;

    move-result-object v13

    .line 168
    sget v0, Lcom/qianhe/yct/R$id;->tvTotalCount:I

    .line 169
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 174
    new-instance v2, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v14}, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/qh/xcad/XCadView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Lcom/qianhe/yct/databinding/TopbarBinding;Landroid/widget/TextView;)V

    return-object v2

    .line 178
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 179
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;
    .locals 2

    .line 94
    sget v0, Lcom/qianhe/yct/R$layout;->activity_cad_entity_choose:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 96
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 98
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
