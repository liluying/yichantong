.class public final Lcom/qianhe/yct/databinding/ItemHomeBinding;
.super Ljava/lang/Object;
.source "ItemHomeBinding.java"


# instance fields
.field public final ivIcon:Landroid/widget/ImageView;

.field public final lltItemContent:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/cardview/widget/CardView;

.field public final tvTitle:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ItemHomeBinding;->rootView:Landroidx/cardview/widget/CardView;

    .line 36
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ItemHomeBinding;->ivIcon:Landroid/widget/ImageView;

    .line 37
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ItemHomeBinding;->lltItemContent:Landroid/widget/LinearLayout;

    .line 38
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ItemHomeBinding;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ItemHomeBinding;
    .locals 4

    .line 68
    sget v0, Lcom/qianhe/yct/R$id;->ivIcon:I

    .line 69
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 74
    sget v0, Lcom/qianhe/yct/R$id;->lltItemContent:I

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 80
    sget v0, Lcom/qianhe/yct/R$id;->tvTitle:I

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v3, :cond_0

    .line 86
    new-instance v0, Lcom/qianhe/yct/databinding/ItemHomeBinding;

    check-cast p0, Landroidx/cardview/widget/CardView;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/qianhe/yct/databinding/ItemHomeBinding;-><init>(Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ItemHomeBinding;
    .locals 2

    .line 55
    sget v0, Lcom/qianhe/yct/R$layout;->item_home:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ItemHomeBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ItemHomeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/cardview/widget/CardView;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ItemHomeBinding;->rootView:Landroidx/cardview/widget/CardView;

    return-object v0
.end method
