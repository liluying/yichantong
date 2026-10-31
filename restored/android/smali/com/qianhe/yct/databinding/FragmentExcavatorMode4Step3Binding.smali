.class public final Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;
.super Ljava/lang/Object;
.source "FragmentExcavatorMode4Step3Binding.java"


# instance fields
.field public final ivStep:Landroidx/appcompat/widget/AppCompatImageView;

.field public final lltProgress:Landroid/widget/LinearLayout;

.field public final main:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvArmAngle:Landroid/widget/TextView;

.field public final tvContinue:Landroid/widget/TextView;

.field public final tvHeadingError:Landroid/widget/TextView;

.field public final tvPrevious:Landroid/widget/TextView;

.field public final tvTipsLine1:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->rootView:Landroid/widget/LinearLayout;

    .line 53
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->ivStep:Landroidx/appcompat/widget/AppCompatImageView;

    .line 54
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->lltProgress:Landroid/widget/LinearLayout;

    .line 55
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->main:Landroid/widget/LinearLayout;

    .line 56
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->tvArmAngle:Landroid/widget/TextView;

    .line 57
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->tvContinue:Landroid/widget/TextView;

    .line 58
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->tvHeadingError:Landroid/widget/TextView;

    .line 59
    iput-object p8, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->tvPrevious:Landroid/widget/TextView;

    .line 60
    iput-object p9, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->tvTipsLine1:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;
    .locals 12

    .line 90
    sget v0, Lcom/qianhe/yct/R$id;->ivStep:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v4, :cond_0

    .line 96
    sget v0, Lcom/qianhe/yct/R$id;->lltProgress:I

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 102
    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 104
    sget v0, Lcom/qianhe/yct/R$id;->tvArmAngle:I

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 110
    sget v0, Lcom/qianhe/yct/R$id;->tvContinue:I

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 116
    sget v0, Lcom/qianhe/yct/R$id;->tvHeadingError:I

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 122
    sget v0, Lcom/qianhe/yct/R$id;->tvPrevious:I

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 128
    sget v0, Lcom/qianhe/yct/R$id;->tvTipsLine1:I

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 134
    new-instance v2, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    move-object v6, v3

    invoke-direct/range {v2 .. v11}, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;-><init>(Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 137
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 138
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;
    .locals 2

    .line 77
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_excavator_mode4_step3:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 79
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
