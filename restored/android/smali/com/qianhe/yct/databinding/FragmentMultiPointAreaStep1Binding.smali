.class public final Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;
.super Ljava/lang/Object;
.source "FragmentMultiPointAreaStep1Binding.java"


# instance fields
.field public final areaPreview:Lcom/qianhe/yct/view/MulPointAreaPreView;

.field public final lltCadActions:Landroid/widget/LinearLayout;

.field public final main:Landroid/widget/LinearLayout;

.field public final rcvCoords:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final toothView:Lcom/qianhe/yct/view/ToothView;

.field public final tvCadImport:Landroid/widget/TextView;

.field public final tvClearCoords:Landroid/widget/TextView;

.field public final tvContinue:Landroid/widget/TextView;

.field public final tvPrevious:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/MulPointAreaPreView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/qianhe/yct/view/ToothView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->rootView:Landroid/widget/LinearLayout;

    .line 58
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->areaPreview:Lcom/qianhe/yct/view/MulPointAreaPreView;

    .line 59
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->lltCadActions:Landroid/widget/LinearLayout;

    .line 60
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->main:Landroid/widget/LinearLayout;

    .line 61
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->rcvCoords:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    .line 63
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->tvCadImport:Landroid/widget/TextView;

    .line 64
    iput-object p8, p0, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->tvClearCoords:Landroid/widget/TextView;

    .line 65
    iput-object p9, p0, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->tvContinue:Landroid/widget/TextView;

    .line 66
    iput-object p10, p0, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->tvPrevious:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;
    .locals 13

    .line 96
    sget v0, Lcom/qianhe/yct/R$id;->areaPreview:I

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/qianhe/yct/view/MulPointAreaPreView;

    if-eqz v4, :cond_0

    .line 102
    sget v0, Lcom/qianhe/yct/R$id;->lltCadActions:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 108
    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 110
    sget v0, Lcom/qianhe/yct/R$id;->rcvCoords:I

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v7, :cond_0

    .line 116
    sget v0, Lcom/qianhe/yct/R$id;->toothView:I

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/qianhe/yct/view/ToothView;

    if-eqz v8, :cond_0

    .line 122
    sget v0, Lcom/qianhe/yct/R$id;->tvCadImport:I

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 128
    sget v0, Lcom/qianhe/yct/R$id;->tvClearCoords:I

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 134
    sget v0, Lcom/qianhe/yct/R$id;->tvContinue:I

    .line 135
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 140
    sget v0, Lcom/qianhe/yct/R$id;->tvPrevious:I

    .line 141
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 146
    new-instance v2, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;

    move-object v6, v3

    invoke-direct/range {v2 .. v12}, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;-><init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/MulPointAreaPreView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/qianhe/yct/view/ToothView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;
    .locals 2

    .line 83
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_multi_point_area_step1:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
