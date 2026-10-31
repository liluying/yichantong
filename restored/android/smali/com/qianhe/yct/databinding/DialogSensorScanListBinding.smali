.class public final Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;
.super Ljava/lang/Object;
.source "DialogSensorScanListBinding.java"


# instance fields
.field public final lltBottom:Landroid/widget/LinearLayout;

.field public final progressBar:Landroid/widget/ProgressBar;

.field public final rcv:Landroidx/recyclerview/widget/RecyclerView;

.field public final rltInfo:Landroid/widget/RelativeLayout;

.field public final rltScan:Landroid/widget/RelativeLayout;

.field public final root:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvCancel:Landroid/widget/TextView;

.field public final tvScan:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 58
    iput-object p2, p0, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->lltBottom:Landroid/widget/LinearLayout;

    .line 59
    iput-object p3, p0, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->progressBar:Landroid/widget/ProgressBar;

    .line 60
    iput-object p4, p0, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    iput-object p5, p0, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->rltInfo:Landroid/widget/RelativeLayout;

    .line 62
    iput-object p6, p0, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->rltScan:Landroid/widget/RelativeLayout;

    .line 63
    iput-object p7, p0, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->root:Landroid/widget/RelativeLayout;

    .line 64
    iput-object p8, p0, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->tvCancel:Landroid/widget/TextView;

    .line 65
    iput-object p9, p0, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->tvScan:Landroid/widget/TextView;

    .line 66
    iput-object p10, p0, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;
    .locals 13

    .line 96
    sget v0, Lcom/qianhe/yct/R$id;->lltBottom:I

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 102
    sget v0, Lcom/qianhe/yct/R$id;->progressBar:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ProgressBar;

    if-eqz v5, :cond_0

    .line 108
    sget v0, Lcom/qianhe/yct/R$id;->rcv:I

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_0

    .line 114
    sget v0, Lcom/qianhe/yct/R$id;->rltInfo:I

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_0

    .line 120
    sget v0, Lcom/qianhe/yct/R$id;->rltScan:I

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_0

    .line 126
    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 128
    sget v0, Lcom/qianhe/yct/R$id;->tvCancel:I

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 134
    sget v0, Lcom/qianhe/yct/R$id;->tvScan:I

    .line 135
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 140
    sget v0, Lcom/qianhe/yct/R$id;->tvTitle:I

    .line 141
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 146
    new-instance v2, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    move-object v9, v3

    invoke-direct/range {v2 .. v12}, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 150
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;
    .locals 2

    .line 83
    sget v0, Lcom/qianhe/yct/R$layout;->dialog_sensor_scan_list:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
