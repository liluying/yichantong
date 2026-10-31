.class public final Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;
.super Ljava/lang/Object;
.source "FragmentDemoCustomDataBinding.java"


# instance fields
.field public final lltDataStaus:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final spDataStatus:Landroid/widget/Spinner;

.field public final spH5Type:Landroid/widget/Spinner;

.field public final spQuality:Landroid/widget/Spinner;

.field public final tvEast:Lcom/qianhe/yct/view/NumericEditText;

.field public final tvElev:Lcom/qianhe/yct/view/NumericEditText;

.field public final tvLat:Lcom/qianhe/yct/view/NumericEditText;

.field public final tvLon:Lcom/qianhe/yct/view/NumericEditText;

.field public final tvNorth:Lcom/qianhe/yct/view/NumericEditText;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 57
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->lltDataStaus:Landroid/widget/LinearLayout;

    .line 58
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->spDataStatus:Landroid/widget/Spinner;

    .line 59
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->spH5Type:Landroid/widget/Spinner;

    .line 60
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->spQuality:Landroid/widget/Spinner;

    .line 61
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->tvEast:Lcom/qianhe/yct/view/NumericEditText;

    .line 62
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->tvElev:Lcom/qianhe/yct/view/NumericEditText;

    .line 63
    iput-object p8, p0, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->tvLat:Lcom/qianhe/yct/view/NumericEditText;

    .line 64
    iput-object p9, p0, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->tvLon:Lcom/qianhe/yct/view/NumericEditText;

    .line 65
    iput-object p10, p0, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->tvNorth:Lcom/qianhe/yct/view/NumericEditText;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;
    .locals 13

    .line 95
    sget v0, Lcom/qianhe/yct/R$id;->lltDataStaus:I

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 101
    sget v0, Lcom/qianhe/yct/R$id;->spDataStatus:I

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Spinner;

    if-eqz v5, :cond_0

    .line 107
    sget v0, Lcom/qianhe/yct/R$id;->spH5Type:I

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/Spinner;

    if-eqz v6, :cond_0

    .line 113
    sget v0, Lcom/qianhe/yct/R$id;->spQuality:I

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/Spinner;

    if-eqz v7, :cond_0

    .line 119
    sget v0, Lcom/qianhe/yct/R$id;->tvEast:I

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v8, :cond_0

    .line 125
    sget v0, Lcom/qianhe/yct/R$id;->tvElev:I

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v9, :cond_0

    .line 131
    sget v0, Lcom/qianhe/yct/R$id;->tvLat:I

    .line 132
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v10, :cond_0

    .line 137
    sget v0, Lcom/qianhe/yct/R$id;->tvLon:I

    .line 138
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v11, :cond_0

    .line 143
    sget v0, Lcom/qianhe/yct/R$id;->tvNorth:I

    .line 144
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v12, :cond_0

    .line 149
    new-instance v2, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    move-object v3, p0

    check-cast v3, Landroidx/core/widget/NestedScrollView;

    invoke-direct/range {v2 .. v12}, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;)V

    return-object v2

    .line 152
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 153
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;
    .locals 2

    .line 82
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_demo_custom_data:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
