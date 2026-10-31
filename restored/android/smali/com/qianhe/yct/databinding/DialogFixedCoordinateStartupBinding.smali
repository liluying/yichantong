.class public final Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;
.super Ljava/lang/Object;
.source "DialogFixedCoordinateStartupBinding.java"


# instance fields
.field public final pregressbar:Landroid/widget/ProgressBar;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvClose:Landroid/widget/TextView;

.field public final tvCount:Landroid/widget/TextView;

.field public final tvPdop:Landroid/widget/TextView;

.field public final tvSolutionStatus:Landroid/widget/TextView;

.field public final tvTip:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;->rootView:Landroid/widget/LinearLayout;

    .line 45
    iput-object p2, p0, Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;->pregressbar:Landroid/widget/ProgressBar;

    .line 46
    iput-object p3, p0, Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;->tvClose:Landroid/widget/TextView;

    .line 47
    iput-object p4, p0, Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;->tvCount:Landroid/widget/TextView;

    .line 48
    iput-object p5, p0, Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;->tvPdop:Landroid/widget/TextView;

    .line 49
    iput-object p6, p0, Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;->tvSolutionStatus:Landroid/widget/TextView;

    .line 50
    iput-object p7, p0, Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;->tvTip:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;
    .locals 10

    .line 80
    sget v0, Lcom/qianhe/yct/R$id;->pregressbar:I

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ProgressBar;

    if-eqz v4, :cond_0

    .line 86
    sget v0, Lcom/qianhe/yct/R$id;->tvClose:I

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 92
    sget v0, Lcom/qianhe/yct/R$id;->tvCount:I

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 98
    sget v0, Lcom/qianhe/yct/R$id;->tvPdop:I

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 104
    sget v0, Lcom/qianhe/yct/R$id;->tvSolutionStatus:I

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 110
    sget v0, Lcom/qianhe/yct/R$id;->tvTip:I

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 116
    new-instance v2, Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v9}, Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 119
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 120
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;
    .locals 2

    .line 67
    sget v0, Lcom/qianhe/yct/R$layout;->dialog_fixed_coordinate_startup:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
