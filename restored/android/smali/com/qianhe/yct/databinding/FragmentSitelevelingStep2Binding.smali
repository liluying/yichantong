.class public final Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;
.super Ljava/lang/Object;
.source "FragmentSitelevelingStep2Binding.java"


# instance fields
.field public final edtRatio:Lcom/qianhe/yct/view/NumericEditText;

.field public final ivStatus:Landroid/widget/ImageView;

.field public final lltRatio:Landroid/widget/LinearLayout;

.field public final main:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvContinue:Landroid/widget/TextView;

.field public final tvPrevious:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;->rootView:Landroid/widget/LinearLayout;

    .line 47
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    .line 48
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;->ivStatus:Landroid/widget/ImageView;

    .line 49
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;->lltRatio:Landroid/widget/LinearLayout;

    .line 50
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;->main:Landroid/widget/LinearLayout;

    .line 51
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;->tvContinue:Landroid/widget/TextView;

    .line 52
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;->tvPrevious:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;
    .locals 10

    .line 82
    sget v0, Lcom/qianhe/yct/R$id;->edtRatio:I

    .line 83
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v4, :cond_0

    .line 88
    sget v0, Lcom/qianhe/yct/R$id;->ivStatus:I

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 94
    sget v0, Lcom/qianhe/yct/R$id;->lltRatio:I

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 100
    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 102
    sget v0, Lcom/qianhe/yct/R$id;->tvContinue:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 108
    sget v0, Lcom/qianhe/yct/R$id;->tvPrevious:I

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 114
    new-instance v2, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;

    move-object v7, v3

    invoke-direct/range {v2 .. v9}, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;-><init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 118
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;
    .locals 2

    .line 69
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_siteleveling_step2:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
