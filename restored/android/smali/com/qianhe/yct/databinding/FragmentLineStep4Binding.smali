.class public final Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;
.super Ljava/lang/Object;
.source "FragmentLineStep4Binding.java"


# instance fields
.field public final customDropdownSpacing:Lcom/qianhe/yct/view/UnitDropdownView;

.field public final edtSpacing:Lcom/qianhe/yct/view/NumericEditText;

.field public final ivToggle:Landroid/widget/ImageView;

.field public final lltSpacing:Landroid/widget/LinearLayout;

.field public final lltToggle:Landroid/widget/LinearLayout;

.field public final main:Landroid/widget/LinearLayout;

.field public final nsv:Landroidx/core/widget/NestedScrollView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvContinue:Landroid/widget/TextView;

.field public final tvPrevious:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/UnitDropdownView;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->rootView:Landroid/widget/LinearLayout;

    .line 59
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->customDropdownSpacing:Lcom/qianhe/yct/view/UnitDropdownView;

    .line 60
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->edtSpacing:Lcom/qianhe/yct/view/NumericEditText;

    .line 61
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->ivToggle:Landroid/widget/ImageView;

    .line 62
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->lltSpacing:Landroid/widget/LinearLayout;

    .line 63
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->lltToggle:Landroid/widget/LinearLayout;

    .line 64
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->main:Landroid/widget/LinearLayout;

    .line 65
    iput-object p8, p0, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->nsv:Landroidx/core/widget/NestedScrollView;

    .line 66
    iput-object p9, p0, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->tvContinue:Landroid/widget/TextView;

    .line 67
    iput-object p10, p0, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->tvPrevious:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;
    .locals 13

    .line 97
    sget v0, Lcom/qianhe/yct/R$id;->customDropdownSpacing:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/qianhe/yct/view/UnitDropdownView;

    if-eqz v4, :cond_0

    .line 103
    sget v0, Lcom/qianhe/yct/R$id;->edtSpacing:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v5, :cond_0

    .line 109
    sget v0, Lcom/qianhe/yct/R$id;->ivToggle:I

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 115
    sget v0, Lcom/qianhe/yct/R$id;->lltSpacing:I

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 121
    sget v0, Lcom/qianhe/yct/R$id;->lltToggle:I

    .line 122
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 127
    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 129
    sget v0, Lcom/qianhe/yct/R$id;->nsv:I

    .line 130
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/core/widget/NestedScrollView;

    if-eqz v10, :cond_0

    .line 135
    sget v0, Lcom/qianhe/yct/R$id;->tvContinue:I

    .line 136
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 141
    sget v0, Lcom/qianhe/yct/R$id;->tvPrevious:I

    .line 142
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 147
    new-instance v2, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;

    move-object v9, v3

    invoke-direct/range {v2 .. v12}, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;-><init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/UnitDropdownView;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroid/widget/TextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;
    .locals 2

    .line 84
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_line_step4:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
