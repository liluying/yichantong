.class public final Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;
.super Ljava/lang/Object;
.source "FragmentNetworkConfigBinding.java"


# instance fields
.field public final edtAPNPsw:Landroid/widget/EditText;

.field public final edtAPNname:Landroid/widget/EditText;

.field public final edtAPNuser:Landroid/widget/EditText;

.field public final edtWifiName:Landroid/widget/EditText;

.field public final edtWifiPassword:Landroid/widget/EditText;

.field public final ivScanWifi:Landroid/widget/ImageView;

.field public final lltMobileConfig:Landroid/widget/LinearLayout;

.field public final lltMobileItem:Landroid/widget/LinearLayout;

.field public final lltWifiConfig:Landroid/widget/LinearLayout;

.field public final lltWifiItem:Landroid/widget/LinearLayout;

.field public final main:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvMobileNet:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvSave:Landroid/widget/TextView;

.field public final tvWifiRole:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->rootView:Landroid/widget/LinearLayout;

    .line 75
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtAPNPsw:Landroid/widget/EditText;

    .line 76
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtAPNname:Landroid/widget/EditText;

    .line 77
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtAPNuser:Landroid/widget/EditText;

    .line 78
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtWifiName:Landroid/widget/EditText;

    .line 79
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtWifiPassword:Landroid/widget/EditText;

    .line 80
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->ivScanWifi:Landroid/widget/ImageView;

    .line 81
    iput-object p8, p0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->lltMobileConfig:Landroid/widget/LinearLayout;

    .line 82
    iput-object p9, p0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->lltMobileItem:Landroid/widget/LinearLayout;

    .line 83
    iput-object p10, p0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->lltWifiConfig:Landroid/widget/LinearLayout;

    .line 84
    iput-object p11, p0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->lltWifiItem:Landroid/widget/LinearLayout;

    .line 85
    iput-object p12, p0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->main:Landroid/widget/LinearLayout;

    .line 86
    iput-object p13, p0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->tvMobileNet:Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    iput-object p14, p0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->tvSave:Landroid/widget/TextView;

    .line 88
    iput-object p15, p0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->tvWifiRole:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;
    .locals 19

    move-object/from16 v0, p0

    .line 118
    sget v1, Lcom/qianhe/yct/R$id;->edtAPNPsw:I

    .line 119
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/EditText;

    if-eqz v5, :cond_0

    .line 124
    sget v1, Lcom/qianhe/yct/R$id;->edtAPNname:I

    .line 125
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/EditText;

    if-eqz v6, :cond_0

    .line 130
    sget v1, Lcom/qianhe/yct/R$id;->edtAPNuser:I

    .line 131
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/EditText;

    if-eqz v7, :cond_0

    .line 136
    sget v1, Lcom/qianhe/yct/R$id;->edtWifiName:I

    .line 137
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/EditText;

    if-eqz v8, :cond_0

    .line 142
    sget v1, Lcom/qianhe/yct/R$id;->edtWifiPassword:I

    .line 143
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/EditText;

    if-eqz v9, :cond_0

    .line 148
    sget v1, Lcom/qianhe/yct/R$id;->ivScanWifi:I

    .line 149
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    .line 154
    sget v1, Lcom/qianhe/yct/R$id;->lltMobileConfig:I

    .line 155
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 160
    sget v1, Lcom/qianhe/yct/R$id;->lltMobileItem:I

    .line 161
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    .line 166
    sget v1, Lcom/qianhe/yct/R$id;->lltWifiConfig:I

    .line 167
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_0

    .line 172
    sget v1, Lcom/qianhe/yct/R$id;->lltWifiItem:I

    .line 173
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_0

    .line 178
    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    .line 180
    sget v1, Lcom/qianhe/yct/R$id;->tvMobileNet:I

    .line 181
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v16, :cond_0

    .line 186
    sget v1, Lcom/qianhe/yct/R$id;->tvSave:I

    .line 187
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 192
    sget v1, Lcom/qianhe/yct/R$id;->tvWifiRole:I

    .line 193
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v18, :cond_0

    .line 198
    new-instance v3, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    move-object v15, v4

    invoke-direct/range {v3 .. v18}, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v3

    .line 202
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;
    .locals 2

    .line 105
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_network_config:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 107
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 109
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
