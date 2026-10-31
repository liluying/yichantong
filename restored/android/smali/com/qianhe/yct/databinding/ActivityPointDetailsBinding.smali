.class public final Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;
.super Ljava/lang/Object;
.source "ActivityPointDetailsBinding.java"


# instance fields
.field public final main:Landroid/widget/LinearLayout;

.field public final nsv:Landroidx/core/widget/NestedScrollView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

.field public final tvEast:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvElev:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvFinish:Landroid/widget/TextView;

.field public final tvGauss:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvGeodetic:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvLat:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvLon:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvName:Landroid/widget/TextView;

.field public final tvNorth:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;->rootView:Landroid/widget/LinearLayout;

    .line 68
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;->main:Landroid/widget/LinearLayout;

    .line 69
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;->nsv:Landroidx/core/widget/NestedScrollView;

    .line 70
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    .line 71
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;->tvEast:Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    iput-object p6, p0, Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;->tvElev:Landroidx/appcompat/widget/AppCompatTextView;

    .line 73
    iput-object p7, p0, Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;->tvFinish:Landroid/widget/TextView;

    .line 74
    iput-object p8, p0, Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;->tvGauss:Landroidx/appcompat/widget/AppCompatTextView;

    .line 75
    iput-object p9, p0, Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;->tvGeodetic:Landroidx/appcompat/widget/AppCompatTextView;

    .line 76
    iput-object p10, p0, Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;->tvLat:Landroidx/appcompat/widget/AppCompatTextView;

    .line 77
    iput-object p11, p0, Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;->tvLon:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    iput-object p12, p0, Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;->tvName:Landroid/widget/TextView;

    .line 79
    iput-object p13, p0, Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;->tvNorth:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;
    .locals 14

    .line 109
    move-object v1, p0

    check-cast v1, Landroid/widget/LinearLayout;

    .line 111
    sget v0, Lcom/qianhe/yct/R$id;->nsv:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/core/widget/NestedScrollView;

    if-eqz v3, :cond_0

    .line 117
    sget v0, Lcom/qianhe/yct/R$id;->topBar:I

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 122
    invoke-static {v2}, Lcom/qianhe/yct/databinding/TitlebarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TitlebarBinding;

    move-result-object v4

    .line 124
    sget v0, Lcom/qianhe/yct/R$id;->tvEast:I

    .line 125
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v5, :cond_0

    .line 130
    sget v0, Lcom/qianhe/yct/R$id;->tvElev:I

    .line 131
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v6, :cond_0

    .line 136
    sget v0, Lcom/qianhe/yct/R$id;->tvFinish:I

    .line 137
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 142
    sget v0, Lcom/qianhe/yct/R$id;->tvGauss:I

    .line 143
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v8, :cond_0

    .line 148
    sget v0, Lcom/qianhe/yct/R$id;->tvGeodetic:I

    .line 149
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v9, :cond_0

    .line 154
    sget v0, Lcom/qianhe/yct/R$id;->tvLat:I

    .line 155
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v10, :cond_0

    .line 160
    sget v0, Lcom/qianhe/yct/R$id;->tvLon:I

    .line 161
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v11, :cond_0

    .line 166
    sget v0, Lcom/qianhe/yct/R$id;->tvName:I

    .line 167
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 172
    sget v0, Lcom/qianhe/yct/R$id;->tvNorth:I

    .line 173
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v13, :cond_0

    .line 178
    new-instance v0, Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;

    move-object v2, v1

    invoke-direct/range {v0 .. v13}, Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v0

    .line 181
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 182
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;
    .locals 2

    .line 96
    sget v0, Lcom/qianhe/yct/R$layout;->activity_point_details:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityPointDetailsBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
