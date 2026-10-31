.class public final Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;
.super Ljava/lang/Object;
.source "DialogPoleHeightInputBinding.java"


# instance fields
.field public final edtPoleHeight:Lcom/qianhe/yct/view/NumericEditText;

.field public final lltInput:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvCancel:Landroid/widget/TextView;

.field public final tvConfirm:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final tvUnit:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 47
    iput-object p2, p0, Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;->edtPoleHeight:Lcom/qianhe/yct/view/NumericEditText;

    .line 48
    iput-object p3, p0, Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;->lltInput:Landroid/widget/LinearLayout;

    .line 49
    iput-object p4, p0, Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;->tvCancel:Landroid/widget/TextView;

    .line 50
    iput-object p5, p0, Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;->tvConfirm:Landroid/widget/TextView;

    .line 51
    iput-object p6, p0, Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;->tvTitle:Landroid/widget/TextView;

    .line 52
    iput-object p7, p0, Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;->tvUnit:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;
    .locals 10

    .line 82
    sget v0, Lcom/qianhe/yct/R$id;->edtPoleHeight:I

    .line 83
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v4, :cond_0

    .line 88
    sget v0, Lcom/qianhe/yct/R$id;->lltInput:I

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 94
    sget v0, Lcom/qianhe/yct/R$id;->tvCancel:I

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 100
    sget v0, Lcom/qianhe/yct/R$id;->tvConfirm:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 106
    sget v0, Lcom/qianhe/yct/R$id;->tvTitle:I

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 112
    sget v0, Lcom/qianhe/yct/R$id;->tvUnit:I

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 118
    new-instance v2, Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-direct/range {v2 .. v9}, Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;
    .locals 2

    .line 69
    sget v0, Lcom/qianhe/yct/R$layout;->dialog_pole_height_input:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
