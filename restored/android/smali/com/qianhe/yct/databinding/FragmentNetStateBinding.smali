.class public final Lcom/qianhe/yct/databinding/FragmentNetStateBinding;
.super Ljava/lang/Object;
.source "FragmentNetStateBinding.java"


# instance fields
.field public final lltWifiStatus:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final tvAddress:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvDNS:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvGateway:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvMask:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvMobileState:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvMode:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvSIMiccid:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvSIMimei:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvSIMtype:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvState:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvWifiName:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 67
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->lltWifiStatus:Landroid/widget/LinearLayout;

    .line 68
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->tvAddress:Landroidx/appcompat/widget/AppCompatTextView;

    .line 69
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->tvDNS:Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->tvGateway:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->tvMask:Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->tvMobileState:Landroidx/appcompat/widget/AppCompatTextView;

    .line 73
    iput-object p8, p0, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->tvMode:Landroidx/appcompat/widget/AppCompatTextView;

    .line 74
    iput-object p9, p0, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->tvSIMiccid:Landroidx/appcompat/widget/AppCompatTextView;

    .line 75
    iput-object p10, p0, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->tvSIMimei:Landroidx/appcompat/widget/AppCompatTextView;

    .line 76
    iput-object p11, p0, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->tvSIMtype:Landroidx/appcompat/widget/AppCompatTextView;

    .line 77
    iput-object p12, p0, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->tvState:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    iput-object p13, p0, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->tvWifiName:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentNetStateBinding;
    .locals 17

    move-object/from16 v0, p0

    .line 108
    sget v1, Lcom/qianhe/yct/R$id;->lltWifiStatus:I

    .line 109
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 114
    sget v1, Lcom/qianhe/yct/R$id;->tvAddress:I

    .line 115
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v6, :cond_0

    .line 120
    sget v1, Lcom/qianhe/yct/R$id;->tvDNS:I

    .line 121
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v7, :cond_0

    .line 126
    sget v1, Lcom/qianhe/yct/R$id;->tvGateway:I

    .line 127
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v8, :cond_0

    .line 132
    sget v1, Lcom/qianhe/yct/R$id;->tvMask:I

    .line 133
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v9, :cond_0

    .line 138
    sget v1, Lcom/qianhe/yct/R$id;->tvMobileState:I

    .line 139
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v10, :cond_0

    .line 144
    sget v1, Lcom/qianhe/yct/R$id;->tvMode:I

    .line 145
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v11, :cond_0

    .line 150
    sget v1, Lcom/qianhe/yct/R$id;->tvSIMiccid:I

    .line 151
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v12, :cond_0

    .line 156
    sget v1, Lcom/qianhe/yct/R$id;->tvSIMimei:I

    .line 157
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v13, :cond_0

    .line 162
    sget v1, Lcom/qianhe/yct/R$id;->tvSIMtype:I

    .line 163
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v14, :cond_0

    .line 168
    sget v1, Lcom/qianhe/yct/R$id;->tvState:I

    .line 169
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v15, :cond_0

    .line 174
    sget v1, Lcom/qianhe/yct/R$id;->tvWifiName:I

    .line 175
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v16, :cond_0

    .line 180
    new-instance v3, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;

    move-object v4, v0

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    invoke-direct/range {v3 .. v16}, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v3

    .line 184
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentNetStateBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentNetStateBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentNetStateBinding;
    .locals 2

    .line 95
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_net_state:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 99
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentNetStateBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentNetStateBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
