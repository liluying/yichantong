.class public final Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;
.super Ljava/lang/Object;
.source "FragmentBluetoothBinding.java"


# instance fields
.field public final main:Landroid/widget/LinearLayout;

.field public final nsv:Lcom/qianhe/yct/view/ScrollStableNestedScrollView;

.field public final rcv:Landroidx/recyclerview/widget/RecyclerView;

.field public final rcvMatched:Landroidx/recyclerview/widget/RecyclerView;

.field public final rltBle:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/ScrollStableNestedScrollView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;->rootView:Landroid/widget/LinearLayout;

    .line 43
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;->main:Landroid/widget/LinearLayout;

    .line 44
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;->nsv:Lcom/qianhe/yct/view/ScrollStableNestedScrollView;

    .line 45
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;->rcvMatched:Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;->rltBle:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;
    .locals 7

    .line 77
    move-object v1, p0

    check-cast v1, Landroid/widget/LinearLayout;

    .line 79
    sget v0, Lcom/qianhe/yct/R$id;->nsv:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/qianhe/yct/view/ScrollStableNestedScrollView;

    if-eqz v3, :cond_0

    .line 85
    sget v0, Lcom/qianhe/yct/R$id;->rcv:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_0

    .line 91
    sget v0, Lcom/qianhe/yct/R$id;->rcvMatched:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_0

    .line 97
    sget v0, Lcom/qianhe/yct/R$id;->rltBle:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_0

    .line 103
    new-instance v0, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;

    move-object v2, v1

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/ScrollStableNestedScrollView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;)V

    return-object v0

    .line 106
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;
    .locals 2

    .line 64
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_bluetooth:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
