.class public final Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;
.super Ljava/lang/Object;
.source "FragmentWgChoiceTypeBinding.java"


# instance fields
.field public final ivWgDown:Lcom/qianhe/yct/view/NightAwareImageView;

.field public final ivWgFlat:Lcom/qianhe/yct/view/NightAwareImageView;

.field public final ivWgUp:Lcom/qianhe/yct/view/NightAwareImageView;

.field public final main:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvContinue:Landroid/widget/TextView;

.field public final tvPrevious:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/NightAwareImageView;Lcom/qianhe/yct/view/NightAwareImageView;Lcom/qianhe/yct/view/NightAwareImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->rootView:Landroid/widget/LinearLayout;

    .line 49
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->ivWgDown:Lcom/qianhe/yct/view/NightAwareImageView;

    .line 50
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->ivWgFlat:Lcom/qianhe/yct/view/NightAwareImageView;

    .line 51
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->ivWgUp:Lcom/qianhe/yct/view/NightAwareImageView;

    .line 52
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->main:Landroid/widget/LinearLayout;

    .line 53
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->tvContinue:Landroid/widget/TextView;

    .line 54
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->tvPrevious:Landroid/widget/TextView;

    .line 55
    iput-object p8, p0, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;
    .locals 11

    .line 85
    sget v0, Lcom/qianhe/yct/R$id;->ivWgDown:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/qianhe/yct/view/NightAwareImageView;

    if-eqz v4, :cond_0

    .line 91
    sget v0, Lcom/qianhe/yct/R$id;->ivWgFlat:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/qianhe/yct/view/NightAwareImageView;

    if-eqz v5, :cond_0

    .line 97
    sget v0, Lcom/qianhe/yct/R$id;->ivWgUp:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/qianhe/yct/view/NightAwareImageView;

    if-eqz v6, :cond_0

    .line 103
    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 105
    sget v0, Lcom/qianhe/yct/R$id;->tvContinue:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 111
    sget v0, Lcom/qianhe/yct/R$id;->tvPrevious:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 117
    sget v0, Lcom/qianhe/yct/R$id;->tvTitle:I

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 123
    new-instance v2, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    move-object v7, v3

    invoke-direct/range {v2 .. v10}, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;-><init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/NightAwareImageView;Lcom/qianhe/yct/view/NightAwareImageView;Lcom/qianhe/yct/view/NightAwareImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 126
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 127
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;
    .locals 2

    .line 72
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_wg_choice_type:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 76
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
