.class public final Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;
.super Ljava/lang/Object;
.source "FragmentBasestationInfoBinding.java"


# instance fields
.field public final lltCorsAccountExpire:Landroid/widget/LinearLayout;

.field public final main:Landroidx/core/widget/NestedScrollView;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final tvBaseStationHigh:Landroid/widget/TextView;

.field public final tvBaseStationId:Landroid/widget/TextView;

.field public final tvBaseStationLat:Landroid/widget/TextView;

.field public final tvBaseStationLon:Landroid/widget/TextView;

.field public final tvCorsAccountExpire:Landroid/widget/TextView;

.field public final tvCorsConnectType:Landroid/widget/TextView;

.field public final tvDistance:Landroid/widget/TextView;

.field public final tvEast:Landroid/widget/TextView;

.field public final tvElev:Landroid/widget/TextView;

.field public final tvNorth:Landroid/widget/TextView;

.field public final tvReceptionData:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 70
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->lltCorsAccountExpire:Landroid/widget/LinearLayout;

    .line 71
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->main:Landroidx/core/widget/NestedScrollView;

    .line 72
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->tvBaseStationHigh:Landroid/widget/TextView;

    .line 73
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->tvBaseStationId:Landroid/widget/TextView;

    .line 74
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->tvBaseStationLat:Landroid/widget/TextView;

    .line 75
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->tvBaseStationLon:Landroid/widget/TextView;

    .line 76
    iput-object p8, p0, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->tvCorsAccountExpire:Landroid/widget/TextView;

    .line 77
    iput-object p9, p0, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->tvCorsConnectType:Landroid/widget/TextView;

    .line 78
    iput-object p10, p0, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->tvDistance:Landroid/widget/TextView;

    .line 79
    iput-object p11, p0, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->tvEast:Landroid/widget/TextView;

    .line 80
    iput-object p12, p0, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->tvElev:Landroid/widget/TextView;

    .line 81
    iput-object p13, p0, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->tvNorth:Landroid/widget/TextView;

    .line 82
    iput-object p14, p0, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->tvReceptionData:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;
    .locals 18

    move-object/from16 v0, p0

    .line 112
    sget v1, Lcom/qianhe/yct/R$id;->lltCorsAccountExpire:I

    .line 113
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 118
    move-object v4, v0

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    .line 120
    sget v1, Lcom/qianhe/yct/R$id;->tvBaseStationHigh:I

    .line 121
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 126
    sget v1, Lcom/qianhe/yct/R$id;->tvBaseStationId:I

    .line 127
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 132
    sget v1, Lcom/qianhe/yct/R$id;->tvBaseStationLat:I

    .line 133
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 138
    sget v1, Lcom/qianhe/yct/R$id;->tvBaseStationLon:I

    .line 139
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 144
    sget v1, Lcom/qianhe/yct/R$id;->tvCorsAccountExpire:I

    .line 145
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 150
    sget v1, Lcom/qianhe/yct/R$id;->tvCorsConnectType:I

    .line 151
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 156
    sget v1, Lcom/qianhe/yct/R$id;->tvDistance:I

    .line 157
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 162
    sget v1, Lcom/qianhe/yct/R$id;->tvEast:I

    .line 163
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 168
    sget v1, Lcom/qianhe/yct/R$id;->tvElev:I

    .line 169
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 174
    sget v1, Lcom/qianhe/yct/R$id;->tvNorth:I

    .line 175
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 180
    sget v1, Lcom/qianhe/yct/R$id;->tvReceptionData:I

    .line 181
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 186
    new-instance v3, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;

    move-object v6, v4

    invoke-direct/range {v3 .. v17}, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    .line 191
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;
    .locals 2

    .line 99
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_basestation_info:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 101
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 103
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
