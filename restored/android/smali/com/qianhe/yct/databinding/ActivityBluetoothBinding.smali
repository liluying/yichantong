.class public final Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;
.super Ljava/lang/Object;
.source "ActivityBluetoothBinding.java"


# instance fields
.field public final fltBottom:Landroid/widget/FrameLayout;

.field public final lltBtn:Landroid/widget/LinearLayout;

.field public final lltDemo:Landroid/widget/LinearLayout;

.field public final main:Landroid/widget/RelativeLayout;

.field public final progressBar:Landroid/widget/ProgressBar;

.field public final rltScan:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field public final topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

.field public final tvClearPair:Landroid/widget/TextView;

.field public final tvDisconnectNow:Landroid/widget/TextView;

.field public final tvScan:Landroid/widget/TextView;

.field public final tvStopDemo:Landroid/widget/TextView;

.field public final viewPager2:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/ProgressBar;Landroid/widget/RelativeLayout;Lcom/google/android/material/tabs/TabLayout;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 73
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->fltBottom:Landroid/widget/FrameLayout;

    .line 74
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->lltBtn:Landroid/widget/LinearLayout;

    .line 75
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->lltDemo:Landroid/widget/LinearLayout;

    .line 76
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->main:Landroid/widget/RelativeLayout;

    .line 77
    iput-object p6, p0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->progressBar:Landroid/widget/ProgressBar;

    .line 78
    iput-object p7, p0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->rltScan:Landroid/widget/RelativeLayout;

    .line 79
    iput-object p8, p0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 80
    iput-object p9, p0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    .line 81
    iput-object p10, p0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvClearPair:Landroid/widget/TextView;

    .line 82
    iput-object p11, p0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvDisconnectNow:Landroid/widget/TextView;

    .line 83
    iput-object p12, p0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvScan:Landroid/widget/TextView;

    .line 84
    iput-object p13, p0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvStopDemo:Landroid/widget/TextView;

    .line 85
    iput-object p14, p0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;
    .locals 18

    move-object/from16 v0, p0

    .line 115
    sget v1, Lcom/qianhe/yct/R$id;->fltBottom:I

    .line 116
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    .line 121
    sget v1, Lcom/qianhe/yct/R$id;->lltBtn:I

    .line 122
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 127
    sget v1, Lcom/qianhe/yct/R$id;->lltDemo:I

    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 133
    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 135
    sget v1, Lcom/qianhe/yct/R$id;->progressBar:I

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ProgressBar;

    if-eqz v9, :cond_0

    .line 141
    sget v1, Lcom/qianhe/yct/R$id;->rltScan:I

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_0

    .line 147
    sget v1, Lcom/qianhe/yct/R$id;->tabLayout:I

    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/google/android/material/tabs/TabLayout;

    if-eqz v11, :cond_0

    .line 153
    sget v1, Lcom/qianhe/yct/R$id;->topBar:I

    .line 154
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 158
    invoke-static {v2}, Lcom/qianhe/yct/databinding/TitlebarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TitlebarBinding;

    move-result-object v12

    .line 160
    sget v1, Lcom/qianhe/yct/R$id;->tvClearPair:I

    .line 161
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 166
    sget v1, Lcom/qianhe/yct/R$id;->tvDisconnectNow:I

    .line 167
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 172
    sget v1, Lcom/qianhe/yct/R$id;->tvScan:I

    .line 173
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 178
    sget v1, Lcom/qianhe/yct/R$id;->tvStopDemo:I

    .line 179
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 184
    sget v1, Lcom/qianhe/yct/R$id;->viewPager2:I

    .line 185
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v17, :cond_0

    .line 190
    new-instance v3, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    move-object v8, v4

    invoke-direct/range {v3 .. v17}, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/ProgressBar;Landroid/widget/RelativeLayout;Lcom/google/android/material/tabs/TabLayout;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/viewpager2/widget/ViewPager2;)V

    return-object v3

    .line 194
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;
    .locals 2

    .line 102
    sget v0, Lcom/qianhe/yct/R$layout;->activity_bluetooth:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 104
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 106
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
