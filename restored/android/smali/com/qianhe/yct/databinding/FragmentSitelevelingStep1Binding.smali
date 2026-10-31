.class public final Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;
.super Ljava/lang/Object;
.source "FragmentSitelevelingStep1Binding.java"


# instance fields
.field public final lltCadActions:Landroid/widget/LinearLayout;

.field public final lltColl:Landroid/widget/LinearLayout;

.field public final main:Landroid/widget/LinearLayout;

.field public final polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

.field public final rcvCoords:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final toothView:Lcom/qianhe/yct/view/ToothView;

.field public final tvCadImport:Landroid/widget/TextView;

.field public final tvClearCoords:Landroid/widget/TextView;

.field public final tvContinue:Landroid/widget/TextView;

.field public final tvMeasure:Landroid/widget/TextView;

.field public final tvPointLib:Landroid/widget/TextView;

.field public final tvPrevious:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/PolyLinePreView;Landroidx/recyclerview/widget/RecyclerView;Lcom/qianhe/yct/view/ToothView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->rootView:Landroid/widget/LinearLayout;

    .line 68
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->lltCadActions:Landroid/widget/LinearLayout;

    .line 69
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->lltColl:Landroid/widget/LinearLayout;

    .line 70
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->main:Landroid/widget/LinearLayout;

    .line 71
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    .line 72
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->rcvCoords:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    .line 74
    iput-object p8, p0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->tvCadImport:Landroid/widget/TextView;

    .line 75
    iput-object p9, p0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->tvClearCoords:Landroid/widget/TextView;

    .line 76
    iput-object p10, p0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->tvContinue:Landroid/widget/TextView;

    .line 77
    iput-object p11, p0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->tvMeasure:Landroid/widget/TextView;

    .line 78
    iput-object p12, p0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->tvPointLib:Landroid/widget/TextView;

    .line 79
    iput-object p13, p0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->tvPrevious:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;
    .locals 17

    move-object/from16 v0, p0

    .line 109
    sget v1, Lcom/qianhe/yct/R$id;->lltCadActions:I

    .line 110
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 115
    sget v1, Lcom/qianhe/yct/R$id;->lltColl:I

    .line 116
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 121
    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    .line 123
    sget v1, Lcom/qianhe/yct/R$id;->polyLineView:I

    .line 124
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/qianhe/yct/view/PolyLinePreView;

    if-eqz v8, :cond_0

    .line 129
    sget v1, Lcom/qianhe/yct/R$id;->rcvCoords:I

    .line 130
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v9, :cond_0

    .line 135
    sget v1, Lcom/qianhe/yct/R$id;->toothView:I

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/qianhe/yct/view/ToothView;

    if-eqz v10, :cond_0

    .line 141
    sget v1, Lcom/qianhe/yct/R$id;->tvCadImport:I

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 147
    sget v1, Lcom/qianhe/yct/R$id;->tvClearCoords:I

    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 153
    sget v1, Lcom/qianhe/yct/R$id;->tvContinue:I

    .line 154
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 159
    sget v1, Lcom/qianhe/yct/R$id;->tvMeasure:I

    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 165
    sget v1, Lcom/qianhe/yct/R$id;->tvPointLib:I

    .line 166
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 171
    sget v1, Lcom/qianhe/yct/R$id;->tvPrevious:I

    .line 172
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 177
    new-instance v3, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    move-object v7, v4

    invoke-direct/range {v3 .. v16}, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/PolyLinePreView;Landroidx/recyclerview/widget/RecyclerView;Lcom/qianhe/yct/view/ToothView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    .line 181
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;
    .locals 2

    .line 96
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_siteleveling_step1:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
