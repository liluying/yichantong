.class public final Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;
.super Ljava/lang/Object;
.source "FragmentCurvedslopeStep3Binding.java"


# instance fields
.field public final lltCadActions:Landroid/widget/LinearLayout;

.field public final main:Landroid/widget/LinearLayout;

.field public final polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

.field public final rcvCoords:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final toothView:Lcom/qianhe/yct/view/ToothView;

.field public final tvCadImport:Landroid/widget/TextView;

.field public final tvClearCoords:Landroid/widget/TextView;

.field public final tvCollectType:Landroid/widget/TextView;

.field public final tvContinue:Landroid/widget/TextView;

.field public final tvPrevious:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/PolyLinePreView;Landroidx/recyclerview/widget/RecyclerView;Lcom/qianhe/yct/view/ToothView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->rootView:Landroid/widget/LinearLayout;

    .line 61
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->lltCadActions:Landroid/widget/LinearLayout;

    .line 62
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->main:Landroid/widget/LinearLayout;

    .line 63
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    .line 64
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->rcvCoords:Landroidx/recyclerview/widget/RecyclerView;

    .line 65
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    .line 66
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->tvCadImport:Landroid/widget/TextView;

    .line 67
    iput-object p8, p0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->tvClearCoords:Landroid/widget/TextView;

    .line 68
    iput-object p9, p0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->tvCollectType:Landroid/widget/TextView;

    .line 69
    iput-object p10, p0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->tvContinue:Landroid/widget/TextView;

    .line 70
    iput-object p11, p0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->tvPrevious:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;
    .locals 14

    .line 100
    sget v0, Lcom/qianhe/yct/R$id;->lltCadActions:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 106
    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 108
    sget v0, Lcom/qianhe/yct/R$id;->polyLineView:I

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/qianhe/yct/view/PolyLinePreView;

    if-eqz v6, :cond_0

    .line 114
    sget v0, Lcom/qianhe/yct/R$id;->rcvCoords:I

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v7, :cond_0

    .line 120
    sget v0, Lcom/qianhe/yct/R$id;->toothView:I

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/qianhe/yct/view/ToothView;

    if-eqz v8, :cond_0

    .line 126
    sget v0, Lcom/qianhe/yct/R$id;->tvCadImport:I

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 132
    sget v0, Lcom/qianhe/yct/R$id;->tvClearCoords:I

    .line 133
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 138
    sget v0, Lcom/qianhe/yct/R$id;->tvCollectType:I

    .line 139
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 144
    sget v0, Lcom/qianhe/yct/R$id;->tvContinue:I

    .line 145
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 150
    sget v0, Lcom/qianhe/yct/R$id;->tvPrevious:I

    .line 151
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 156
    new-instance v2, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    move-object v5, v3

    invoke-direct/range {v2 .. v13}, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/PolyLinePreView;Landroidx/recyclerview/widget/RecyclerView;Lcom/qianhe/yct/view/ToothView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 160
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 161
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;
    .locals 2

    .line 87
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_curvedslope_step3:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 89
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 91
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
