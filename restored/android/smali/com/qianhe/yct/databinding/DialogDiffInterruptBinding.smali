.class public final Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;
.super Ljava/lang/Object;
.source "DialogDiffInterruptBinding.java"


# instance fields
.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvCancel:Landroid/widget/TextView;

.field public final tvContent:Landroid/widget/TextView;

.field public final tvHint:Landroid/widget/TextView;

.field public final tvSure:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 37
    iput-object p2, p0, Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;->tvCancel:Landroid/widget/TextView;

    .line 38
    iput-object p3, p0, Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;->tvContent:Landroid/widget/TextView;

    .line 39
    iput-object p4, p0, Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;->tvHint:Landroid/widget/TextView;

    .line 40
    iput-object p5, p0, Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;->tvSure:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;
    .locals 8

    .line 70
    sget v0, Lcom/qianhe/yct/R$id;->tvCancel:I

    .line 71
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 76
    sget v0, Lcom/qianhe/yct/R$id;->tvContent:I

    .line 77
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 82
    sget v0, Lcom/qianhe/yct/R$id;->tvHint:I

    .line 83
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 88
    sget v0, Lcom/qianhe/yct/R$id;->tvSure:I

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 94
    new-instance v2, Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-direct/range {v2 .. v7}, Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 98
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;
    .locals 2

    .line 57
    sget v0, Lcom/qianhe/yct/R$layout;->dialog_diff_interrupt:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 59
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 61
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
