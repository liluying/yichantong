.class public final Lcom/qianhe/yct/databinding/DialogShareWayBinding;
.super Ljava/lang/Object;
.source "DialogShareWayBinding.java"


# instance fields
.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvContent:Landroid/widget/TextView;

.field public final tvCopy:Landroid/widget/TextView;

.field public final tvShare:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/qianhe/yct/databinding/DialogShareWayBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 34
    iput-object p2, p0, Lcom/qianhe/yct/databinding/DialogShareWayBinding;->tvContent:Landroid/widget/TextView;

    .line 35
    iput-object p3, p0, Lcom/qianhe/yct/databinding/DialogShareWayBinding;->tvCopy:Landroid/widget/TextView;

    .line 36
    iput-object p4, p0, Lcom/qianhe/yct/databinding/DialogShareWayBinding;->tvShare:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/DialogShareWayBinding;
    .locals 4

    .line 66
    sget v0, Lcom/qianhe/yct/R$id;->tvContent:I

    .line 67
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 72
    sget v0, Lcom/qianhe/yct/R$id;->tvCopy:I

    .line 73
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 78
    sget v0, Lcom/qianhe/yct/R$id;->tvShare:I

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 84
    new-instance v0, Lcom/qianhe/yct/databinding/DialogShareWayBinding;

    check-cast p0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/qianhe/yct/databinding/DialogShareWayBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 86
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 87
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogShareWayBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/DialogShareWayBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/DialogShareWayBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/DialogShareWayBinding;
    .locals 2

    .line 53
    sget v0, Lcom/qianhe/yct/R$layout;->dialog_share_way:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 57
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/DialogShareWayBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/DialogShareWayBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/qianhe/yct/databinding/DialogShareWayBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
