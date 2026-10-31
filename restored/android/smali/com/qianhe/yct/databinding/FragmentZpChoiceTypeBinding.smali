.class public final Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;
.super Ljava/lang/Object;
.source "FragmentZpChoiceTypeBinding.java"


# instance fields
.field public final ivDig:Landroid/view/View;

.field public final ivFill:Landroid/view/View;

.field public final ivLeveling:Landroid/view/View;

.field public final main:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvContinue:Landroid/widget/TextView;

.field public final tvPrevious:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->rootView:Landroid/widget/LinearLayout;

    .line 47
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->ivDig:Landroid/view/View;

    .line 48
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->ivFill:Landroid/view/View;

    .line 49
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->ivLeveling:Landroid/view/View;

    .line 50
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->main:Landroid/widget/LinearLayout;

    .line 51
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->tvContinue:Landroid/widget/TextView;

    .line 52
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->tvPrevious:Landroid/widget/TextView;

    .line 53
    iput-object p8, p0, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;
    .locals 10

    .line 83
    sget v0, Lcom/qianhe/yct/R$id;->ivDig:I

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 89
    sget v0, Lcom/qianhe/yct/R$id;->ivFill:I

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 95
    sget v0, Lcom/qianhe/yct/R$id;->ivLeveling:I

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 101
    move-object v2, p0

    check-cast v2, Landroid/widget/LinearLayout;

    .line 103
    sget v0, Lcom/qianhe/yct/R$id;->tvContinue:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 109
    sget v0, Lcom/qianhe/yct/R$id;->tvPrevious:I

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 115
    sget v0, Lcom/qianhe/yct/R$id;->tvTitle:I

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 121
    new-instance v1, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;

    move-object v6, v2

    invoke-direct/range {v1 .. v9}, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 124
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 125
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;
    .locals 2

    .line 70
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_zp_choice_type:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
