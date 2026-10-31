.class public final Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;
.super Ljava/lang/Object;
.source "FragmentOnepointAreaStpe2Binding.java"


# instance fields
.field public final edtRatioE:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtRatioN:Lcom/qianhe/yct/view/NumericEditText;

.field public final iv:Landroid/widget/ImageView;

.field public final main:Landroid/widget/LinearLayout;

.field public final nsv:Landroidx/core/widget/NestedScrollView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvContinue:Landroid/widget/TextView;

.field public final tvNorth:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvPrevious:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;->rootView:Landroid/widget/LinearLayout;

    .line 55
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;->edtRatioE:Lcom/qianhe/yct/view/NumericEditText;

    .line 56
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;->edtRatioN:Lcom/qianhe/yct/view/NumericEditText;

    .line 57
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;->iv:Landroid/widget/ImageView;

    .line 58
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;->main:Landroid/widget/LinearLayout;

    .line 59
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;->nsv:Landroidx/core/widget/NestedScrollView;

    .line 60
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;->tvContinue:Landroid/widget/TextView;

    .line 61
    iput-object p8, p0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;->tvNorth:Landroidx/appcompat/widget/AppCompatTextView;

    .line 62
    iput-object p9, p0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;->tvPrevious:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;
    .locals 12

    .line 92
    sget v0, Lcom/qianhe/yct/R$id;->edtRatioE:I

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v4, :cond_0

    .line 98
    sget v0, Lcom/qianhe/yct/R$id;->edtRatioN:I

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v5, :cond_0

    .line 104
    sget v0, Lcom/qianhe/yct/R$id;->iv:I

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 110
    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 112
    sget v0, Lcom/qianhe/yct/R$id;->nsv:I

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/core/widget/NestedScrollView;

    if-eqz v8, :cond_0

    .line 118
    sget v0, Lcom/qianhe/yct/R$id;->tvContinue:I

    .line 119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 124
    sget v0, Lcom/qianhe/yct/R$id;->tvNorth:I

    .line 125
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v10, :cond_0

    .line 130
    sget v0, Lcom/qianhe/yct/R$id;->tvPrevious:I

    .line 131
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 136
    new-instance v2, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;

    move-object v7, v3

    invoke-direct/range {v2 .. v11}, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;-><init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;)V

    return-object v2

    .line 139
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 140
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;
    .locals 2

    .line 79
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_onepoint_area_stpe2:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 83
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
