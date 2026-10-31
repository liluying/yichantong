.class public final Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;
.super Ljava/lang/Object;
.source "FragmentSpChoiceTypeBinding.java"


# instance fields
.field public final ivSpDown:Lcom/qianhe/yct/view/NightAwareImageView;

.field public final ivSpUp:Lcom/qianhe/yct/view/NightAwareImageView;

.field public final main:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvContinue:Landroid/widget/TextView;

.field public final tvPrevious:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/NightAwareImageView;Lcom/qianhe/yct/view/NightAwareImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;->rootView:Landroid/widget/LinearLayout;

    .line 46
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;->ivSpDown:Lcom/qianhe/yct/view/NightAwareImageView;

    .line 47
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;->ivSpUp:Lcom/qianhe/yct/view/NightAwareImageView;

    .line 48
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;->main:Landroid/widget/LinearLayout;

    .line 49
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;->tvContinue:Landroid/widget/TextView;

    .line 50
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;->tvPrevious:Landroid/widget/TextView;

    .line 51
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;
    .locals 10

    .line 81
    sget v0, Lcom/qianhe/yct/R$id;->ivSpDown:I

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/qianhe/yct/view/NightAwareImageView;

    if-eqz v4, :cond_0

    .line 87
    sget v0, Lcom/qianhe/yct/R$id;->ivSpUp:I

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/qianhe/yct/view/NightAwareImageView;

    if-eqz v5, :cond_0

    .line 93
    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 95
    sget v0, Lcom/qianhe/yct/R$id;->tvContinue:I

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 101
    sget v0, Lcom/qianhe/yct/R$id;->tvPrevious:I

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 107
    sget v0, Lcom/qianhe/yct/R$id;->tvTitle:I

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 113
    new-instance v2, Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;

    move-object v6, v3

    invoke-direct/range {v2 .. v9}, Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;-><init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/NightAwareImageView;Lcom/qianhe/yct/view/NightAwareImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;
    .locals 2

    .line 68
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_sp_choice_type:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
