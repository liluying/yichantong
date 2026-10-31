.class public final Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;
.super Ljava/lang/Object;
.source "FragmentDebugElevChartBinding.java"


# instance fields
.field public final edtBaseElev:Lcom/qianhe/yct/view/NumericEditText;

.field public final lineChart:Lcom/github/mikephil/charting/charts/LineChart;

.field public final main:Landroidx/core/widget/NestedScrollView;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final tvCurrent:Landroid/widget/ImageView;

.field public final tvDiff:Landroid/widget/TextView;

.field public final tvElev:Landroid/widget/TextView;

.field public final tvSure:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Lcom/qianhe/yct/view/NumericEditText;Lcom/github/mikephil/charting/charts/LineChart;Landroidx/core/widget/NestedScrollView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 51
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->edtBaseElev:Lcom/qianhe/yct/view/NumericEditText;

    .line 52
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 53
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->main:Landroidx/core/widget/NestedScrollView;

    .line 54
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->tvCurrent:Landroid/widget/ImageView;

    .line 55
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->tvDiff:Landroid/widget/TextView;

    .line 56
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->tvElev:Landroid/widget/TextView;

    .line 57
    iput-object p8, p0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->tvSure:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;
    .locals 11

    .line 87
    sget v0, Lcom/qianhe/yct/R$id;->edtBaseElev:I

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v4, :cond_0

    .line 93
    sget v0, Lcom/qianhe/yct/R$id;->lineChart:I

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/github/mikephil/charting/charts/LineChart;

    if-eqz v5, :cond_0

    .line 99
    move-object v3, p0

    check-cast v3, Landroidx/core/widget/NestedScrollView;

    .line 101
    sget v0, Lcom/qianhe/yct/R$id;->tvCurrent:I

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 107
    sget v0, Lcom/qianhe/yct/R$id;->tvDiff:I

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 113
    sget v0, Lcom/qianhe/yct/R$id;->tvElev:I

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 119
    sget v0, Lcom/qianhe/yct/R$id;->tvSure:I

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 125
    new-instance v2, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    move-object v6, v3

    invoke-direct/range {v2 .. v10}, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;-><init>(Landroidx/core/widget/NestedScrollView;Lcom/qianhe/yct/view/NumericEditText;Lcom/github/mikephil/charting/charts/LineChart;Landroidx/core/widget/NestedScrollView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 128
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 129
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;
    .locals 2

    .line 74
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_debug_elev_chart:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentDebugElevChartBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
