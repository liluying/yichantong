.class public final Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;
.super Ljava/lang/Object;
.source "ActivityBluetoothDebugBinding.java"


# instance fields
.field public final btnScan:Landroid/widget/Button;

.field public final main:Landroid/widget/LinearLayout;

.field public final rcv:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/qianhe/yct/databinding/TitlebarBinding;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;->rootView:Landroid/widget/LinearLayout;

    .line 38
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;->btnScan:Landroid/widget/Button;

    .line 39
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;->main:Landroid/widget/LinearLayout;

    .line 40
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;
    .locals 8

    .line 71
    sget v0, Lcom/qianhe/yct/R$id;->btnScan:I

    .line 72
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 77
    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 79
    sget v0, Lcom/qianhe/yct/R$id;->rcv:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_0

    .line 85
    sget v0, Lcom/qianhe/yct/R$id;->topBar:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    invoke-static {v1}, Lcom/qianhe/yct/databinding/TitlebarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TitlebarBinding;

    move-result-object v7

    .line 92
    new-instance v2, Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;

    move-object v5, v3

    invoke-direct/range {v2 .. v7}, Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/qianhe/yct/databinding/TitlebarBinding;)V

    return-object v2

    .line 95
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 96
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;
    .locals 2

    .line 58
    sget v0, Lcom/qianhe/yct/R$layout;->activity_bluetooth_debug:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 62
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
