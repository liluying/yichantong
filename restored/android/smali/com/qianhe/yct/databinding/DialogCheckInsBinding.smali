.class public final Lcom/qianhe/yct/databinding/DialogCheckInsBinding;
.super Ljava/lang/Object;
.source "DialogCheckInsBinding.java"


# instance fields
.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvInsStatus:Landroid/widget/TextView;

.field public final tvOk:Landroid/widget/TextView;

.field public final tvSolutionStatus:Landroid/widget/TextView;

.field public final tvWarning1:Landroid/widget/TextView;

.field public final tvWarning2:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/qianhe/yct/databinding/DialogCheckInsBinding;->rootView:Landroid/widget/LinearLayout;

    .line 41
    iput-object p2, p0, Lcom/qianhe/yct/databinding/DialogCheckInsBinding;->tvInsStatus:Landroid/widget/TextView;

    .line 42
    iput-object p3, p0, Lcom/qianhe/yct/databinding/DialogCheckInsBinding;->tvOk:Landroid/widget/TextView;

    .line 43
    iput-object p4, p0, Lcom/qianhe/yct/databinding/DialogCheckInsBinding;->tvSolutionStatus:Landroid/widget/TextView;

    .line 44
    iput-object p5, p0, Lcom/qianhe/yct/databinding/DialogCheckInsBinding;->tvWarning1:Landroid/widget/TextView;

    .line 45
    iput-object p6, p0, Lcom/qianhe/yct/databinding/DialogCheckInsBinding;->tvWarning2:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/DialogCheckInsBinding;
    .locals 9

    .line 75
    sget v0, Lcom/qianhe/yct/R$id;->tvInsStatus:I

    .line 76
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 81
    sget v0, Lcom/qianhe/yct/R$id;->tvOk:I

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 87
    sget v0, Lcom/qianhe/yct/R$id;->tvSolutionStatus:I

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 93
    sget v0, Lcom/qianhe/yct/R$id;->tvWarning1:I

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 99
    sget v0, Lcom/qianhe/yct/R$id;->tvWarning2:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 105
    new-instance v2, Lcom/qianhe/yct/databinding/DialogCheckInsBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v8}, Lcom/qianhe/yct/databinding/DialogCheckInsBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 108
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 109
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogCheckInsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/DialogCheckInsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/DialogCheckInsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/DialogCheckInsBinding;
    .locals 2

    .line 62
    sget v0, Lcom/qianhe/yct/R$layout;->dialog_check_ins:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 64
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/DialogCheckInsBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/DialogCheckInsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/qianhe/yct/databinding/DialogCheckInsBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
