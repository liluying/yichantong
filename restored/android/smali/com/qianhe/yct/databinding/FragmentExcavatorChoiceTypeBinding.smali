.class public final Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;
.super Ljava/lang/Object;
.source "FragmentExcavatorChoiceTypeBinding.java"


# instance fields
.field public final ivType1:Landroidx/appcompat/widget/AppCompatImageView;

.field public final ivType2:Landroidx/appcompat/widget/AppCompatImageView;

.field public final lltType1:Landroid/widget/LinearLayout;

.field public final lltType2:Landroid/widget/LinearLayout;

.field public final main:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvContinue:Landroid/widget/TextView;

.field public final tvPrevious:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final tvTypeDes1:Landroid/widget/TextView;

.field public final tvTypeDes2:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->rootView:Landroid/widget/LinearLayout;

    .line 59
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->ivType1:Landroidx/appcompat/widget/AppCompatImageView;

    .line 60
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->ivType2:Landroidx/appcompat/widget/AppCompatImageView;

    .line 61
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->lltType1:Landroid/widget/LinearLayout;

    .line 62
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->lltType2:Landroid/widget/LinearLayout;

    .line 63
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->main:Landroid/widget/LinearLayout;

    .line 64
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->tvContinue:Landroid/widget/TextView;

    .line 65
    iput-object p8, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->tvPrevious:Landroid/widget/TextView;

    .line 66
    iput-object p9, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->tvTitle:Landroid/widget/TextView;

    .line 67
    iput-object p10, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->tvTypeDes1:Landroid/widget/TextView;

    .line 68
    iput-object p11, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->tvTypeDes2:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;
    .locals 14

    .line 98
    sget v0, Lcom/qianhe/yct/R$id;->ivType1:I

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v4, :cond_0

    .line 104
    sget v0, Lcom/qianhe/yct/R$id;->ivType2:I

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v5, :cond_0

    .line 110
    sget v0, Lcom/qianhe/yct/R$id;->lltType1:I

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 116
    sget v0, Lcom/qianhe/yct/R$id;->lltType2:I

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 122
    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 124
    sget v0, Lcom/qianhe/yct/R$id;->tvContinue:I

    .line 125
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 130
    sget v0, Lcom/qianhe/yct/R$id;->tvPrevious:I

    .line 131
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 136
    sget v0, Lcom/qianhe/yct/R$id;->tvTitle:I

    .line 137
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 142
    sget v0, Lcom/qianhe/yct/R$id;->tvTypeDes1:I

    .line 143
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 148
    sget v0, Lcom/qianhe/yct/R$id;->tvTypeDes2:I

    .line 149
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 154
    new-instance v2, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;

    move-object v8, v3

    invoke-direct/range {v2 .. v13}, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;-><init>(Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 157
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 158
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;
    .locals 2

    .line 85
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_excavator_choice_type:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
