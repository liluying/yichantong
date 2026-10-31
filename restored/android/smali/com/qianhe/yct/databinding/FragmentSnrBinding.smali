.class public final Lcom/qianhe/yct/databinding/FragmentSnrBinding;
.super Ljava/lang/Object;
.source "FragmentSnrBinding.java"


# instance fields
.field public final chartBDS:Lcom/qianhe/yct/view/CustomBarChart;

.field public final chartGAL:Lcom/qianhe/yct/view/CustomBarChart;

.field public final chartGLN:Lcom/qianhe/yct/view/CustomBarChart;

.field public final chartGPS:Lcom/qianhe/yct/view/CustomBarChart;

.field public final chartIRNSS:Lcom/qianhe/yct/view/CustomBarChart;

.field public final chartQZSS:Lcom/qianhe/yct/view/CustomBarChart;

.field public final chartSBAS:Lcom/qianhe/yct/view/CustomBarChart;

.field public final main:Landroidx/core/widget/NestedScrollView;

.field private final rootView:Landroidx/core/widget/NestedScrollView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Lcom/qianhe/yct/view/CustomBarChart;Lcom/qianhe/yct/view/CustomBarChart;Lcom/qianhe/yct/view/CustomBarChart;Lcom/qianhe/yct/view/CustomBarChart;Lcom/qianhe/yct/view/CustomBarChart;Lcom/qianhe/yct/view/CustomBarChart;Lcom/qianhe/yct/view/CustomBarChart;Landroidx/core/widget/NestedScrollView;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 52
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartBDS:Lcom/qianhe/yct/view/CustomBarChart;

    .line 53
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartGAL:Lcom/qianhe/yct/view/CustomBarChart;

    .line 54
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartGLN:Lcom/qianhe/yct/view/CustomBarChart;

    .line 55
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartGPS:Lcom/qianhe/yct/view/CustomBarChart;

    .line 56
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartIRNSS:Lcom/qianhe/yct/view/CustomBarChart;

    .line 57
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartQZSS:Lcom/qianhe/yct/view/CustomBarChart;

    .line 58
    iput-object p8, p0, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->chartSBAS:Lcom/qianhe/yct/view/CustomBarChart;

    .line 59
    iput-object p9, p0, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->main:Landroidx/core/widget/NestedScrollView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentSnrBinding;
    .locals 12

    .line 89
    sget v0, Lcom/qianhe/yct/R$id;->chartBDS:I

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/qianhe/yct/view/CustomBarChart;

    if-eqz v4, :cond_0

    .line 95
    sget v0, Lcom/qianhe/yct/R$id;->chartGAL:I

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/qianhe/yct/view/CustomBarChart;

    if-eqz v5, :cond_0

    .line 101
    sget v0, Lcom/qianhe/yct/R$id;->chartGLN:I

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/qianhe/yct/view/CustomBarChart;

    if-eqz v6, :cond_0

    .line 107
    sget v0, Lcom/qianhe/yct/R$id;->chartGPS:I

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/qianhe/yct/view/CustomBarChart;

    if-eqz v7, :cond_0

    .line 113
    sget v0, Lcom/qianhe/yct/R$id;->chartIRNSS:I

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/qianhe/yct/view/CustomBarChart;

    if-eqz v8, :cond_0

    .line 119
    sget v0, Lcom/qianhe/yct/R$id;->chartQZSS:I

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/qianhe/yct/view/CustomBarChart;

    if-eqz v9, :cond_0

    .line 125
    sget v0, Lcom/qianhe/yct/R$id;->chartSBAS:I

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/qianhe/yct/view/CustomBarChart;

    if-eqz v10, :cond_0

    .line 131
    move-object v3, p0

    check-cast v3, Landroidx/core/widget/NestedScrollView;

    .line 133
    new-instance v2, Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    move-object v11, v3

    invoke-direct/range {v2 .. v11}, Lcom/qianhe/yct/databinding/FragmentSnrBinding;-><init>(Landroidx/core/widget/NestedScrollView;Lcom/qianhe/yct/view/CustomBarChart;Lcom/qianhe/yct/view/CustomBarChart;Lcom/qianhe/yct/view/CustomBarChart;Lcom/qianhe/yct/view/CustomBarChart;Lcom/qianhe/yct/view/CustomBarChart;Lcom/qianhe/yct/view/CustomBarChart;Lcom/qianhe/yct/view/CustomBarChart;Landroidx/core/widget/NestedScrollView;)V

    return-object v2

    .line 136
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 137
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentSnrBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentSnrBinding;
    .locals 2

    .line 76
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_snr:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 78
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentSnrBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentSnrBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
