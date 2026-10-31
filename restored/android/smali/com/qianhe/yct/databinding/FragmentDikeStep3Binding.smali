.class public final Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;
.super Ljava/lang/Object;
.source "FragmentDikeStep3Binding.java"


# instance fields
.field public final edtLength:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtRatio:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtWidth:Lcom/qianhe/yct/view/NumericEditText;

.field public final ivStep1:Landroid/widget/ImageView;

.field public final lengthDropdown:Lcom/qianhe/yct/view/UnitDropdownView;

.field public final lltCollect:Landroid/widget/LinearLayout;

.field public final lltRatio:Landroid/widget/LinearLayout;

.field public final main:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvContinue:Landroid/widget/TextView;

.field public final tvDitchType:Landroid/widget/TextView;

.field public final tvPrevious:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/ImageView;Lcom/qianhe/yct/view/UnitDropdownView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->rootView:Landroid/widget/LinearLayout;

    .line 65
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->edtLength:Lcom/qianhe/yct/view/NumericEditText;

    .line 66
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    .line 67
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->edtWidth:Lcom/qianhe/yct/view/NumericEditText;

    .line 68
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->ivStep1:Landroid/widget/ImageView;

    .line 69
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->lengthDropdown:Lcom/qianhe/yct/view/UnitDropdownView;

    .line 70
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->lltCollect:Landroid/widget/LinearLayout;

    .line 71
    iput-object p8, p0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->lltRatio:Landroid/widget/LinearLayout;

    .line 72
    iput-object p9, p0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->main:Landroid/widget/LinearLayout;

    .line 73
    iput-object p10, p0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->tvContinue:Landroid/widget/TextView;

    .line 74
    iput-object p11, p0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->tvDitchType:Landroid/widget/TextView;

    .line 75
    iput-object p12, p0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->tvPrevious:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;
    .locals 15

    .line 105
    sget v0, Lcom/qianhe/yct/R$id;->edtLength:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v4, :cond_0

    .line 111
    sget v0, Lcom/qianhe/yct/R$id;->edtRatio:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v5, :cond_0

    .line 117
    sget v0, Lcom/qianhe/yct/R$id;->edtWidth:I

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v6, :cond_0

    .line 123
    sget v0, Lcom/qianhe/yct/R$id;->ivStep1:I

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 129
    sget v0, Lcom/qianhe/yct/R$id;->lengthDropdown:I

    .line 130
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/qianhe/yct/view/UnitDropdownView;

    if-eqz v8, :cond_0

    .line 135
    sget v0, Lcom/qianhe/yct/R$id;->lltCollect:I

    .line 136
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 141
    sget v0, Lcom/qianhe/yct/R$id;->lltRatio:I

    .line 142
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    .line 147
    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 149
    sget v0, Lcom/qianhe/yct/R$id;->tvContinue:I

    .line 150
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 155
    sget v0, Lcom/qianhe/yct/R$id;->tvDitchType:I

    .line 156
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 161
    sget v0, Lcom/qianhe/yct/R$id;->tvPrevious:I

    .line 162
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 167
    new-instance v2, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    move-object v11, v3

    invoke-direct/range {v2 .. v14}, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;-><init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/ImageView;Lcom/qianhe/yct/view/UnitDropdownView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 170
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 171
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;
    .locals 2

    .line 92
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_dike_step3:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 94
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 96
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
