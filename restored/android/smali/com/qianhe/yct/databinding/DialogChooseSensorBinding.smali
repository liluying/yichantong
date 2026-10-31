.class public final Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;
.super Ljava/lang/Object;
.source "DialogChooseSensorBinding.java"


# instance fields
.field public final root:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvCancel:Landroid/widget/TextView;

.field public final tvName:Landroid/widget/TextView;

.field public final tvNext:Landroid/widget/TextView;

.field public final tvScan:Landroid/widget/TextView;

.field public final tvStatus:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;->rootView:Landroid/widget/LinearLayout;

    .line 47
    iput-object p2, p0, Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;->root:Landroid/widget/LinearLayout;

    .line 48
    iput-object p3, p0, Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;->tvCancel:Landroid/widget/TextView;

    .line 49
    iput-object p4, p0, Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;->tvName:Landroid/widget/TextView;

    .line 50
    iput-object p5, p0, Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;->tvNext:Landroid/widget/TextView;

    .line 51
    iput-object p6, p0, Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;->tvScan:Landroid/widget/TextView;

    .line 52
    iput-object p7, p0, Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;->tvStatus:Landroid/widget/TextView;

    .line 53
    iput-object p8, p0, Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;
    .locals 9

    .line 83
    move-object v1, p0

    check-cast v1, Landroid/widget/LinearLayout;

    .line 85
    sget v0, Lcom/qianhe/yct/R$id;->tvCancel:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 91
    sget v0, Lcom/qianhe/yct/R$id;->tvName:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 97
    sget v0, Lcom/qianhe/yct/R$id;->tvNext:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 103
    sget v0, Lcom/qianhe/yct/R$id;->tvScan:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 109
    sget v0, Lcom/qianhe/yct/R$id;->tvStatus:I

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 115
    sget v0, Lcom/qianhe/yct/R$id;->tvTitle:I

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 121
    new-instance v0, Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;

    move-object v2, v1

    invoke-direct/range {v0 .. v8}, Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;
    .locals 2

    .line 70
    sget v0, Lcom/qianhe/yct/R$layout;->dialog_choose_sensor:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
