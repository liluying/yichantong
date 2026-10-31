.class public final Lcom/qianhe/yct/databinding/FragmentLocationBinding;
.super Ljava/lang/Object;
.source "FragmentLocationBinding.java"


# instance fields
.field public final lltDataStaus:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final tvCentralMeridian:Landroid/widget/TextView;

.field public final tvDataStatus:Landroid/widget/TextView;

.field public final tvDiffDelay:Landroid/widget/TextView;

.field public final tvEast:Landroid/widget/TextView;

.field public final tvElev:Landroid/widget/TextView;

.field public final tvGeoHeight:Landroid/widget/TextView;

.field public final tvHDOP:Landroid/widget/TextView;

.field public final tvHRMS:Landroid/widget/TextView;

.field public final tvHeading:Landroid/widget/TextView;

.field public final tvLat:Landroid/widget/TextView;

.field public final tvLocalTime:Landroid/widget/TextView;

.field public final tvLon:Landroid/widget/TextView;

.field public final tvNorth:Landroid/widget/TextView;

.field public final tvQuality:Landroid/widget/TextView;

.field public final tvUTC:Landroid/widget/TextView;

.field public final tvVDOP:Landroid/widget/TextView;

.field public final tvVRMS:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 86
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->lltDataStaus:Landroid/widget/LinearLayout;

    .line 87
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvCentralMeridian:Landroid/widget/TextView;

    .line 88
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvDataStatus:Landroid/widget/TextView;

    .line 89
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvDiffDelay:Landroid/widget/TextView;

    .line 90
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvEast:Landroid/widget/TextView;

    .line 91
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvElev:Landroid/widget/TextView;

    .line 92
    iput-object p8, p0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvGeoHeight:Landroid/widget/TextView;

    .line 93
    iput-object p9, p0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvHDOP:Landroid/widget/TextView;

    .line 94
    iput-object p10, p0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvHRMS:Landroid/widget/TextView;

    .line 95
    iput-object p11, p0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvHeading:Landroid/widget/TextView;

    .line 96
    iput-object p12, p0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvLat:Landroid/widget/TextView;

    .line 97
    iput-object p13, p0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvLocalTime:Landroid/widget/TextView;

    .line 98
    iput-object p14, p0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvLon:Landroid/widget/TextView;

    .line 99
    iput-object p15, p0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvNorth:Landroid/widget/TextView;

    move-object/from16 p1, p16

    .line 100
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvQuality:Landroid/widget/TextView;

    move-object/from16 p1, p17

    .line 101
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvUTC:Landroid/widget/TextView;

    move-object/from16 p1, p18

    .line 102
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvVDOP:Landroid/widget/TextView;

    move-object/from16 p1, p19

    .line 103
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->tvVRMS:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentLocationBinding;
    .locals 23

    move-object/from16 v0, p0

    .line 133
    sget v1, Lcom/qianhe/yct/R$id;->lltDataStaus:I

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 139
    sget v1, Lcom/qianhe/yct/R$id;->tvCentralMeridian:I

    .line 140
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 145
    sget v1, Lcom/qianhe/yct/R$id;->tvDataStatus:I

    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 151
    sget v1, Lcom/qianhe/yct/R$id;->tvDiffDelay:I

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 157
    sget v1, Lcom/qianhe/yct/R$id;->tvEast:I

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 163
    sget v1, Lcom/qianhe/yct/R$id;->tvElev:I

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 169
    sget v1, Lcom/qianhe/yct/R$id;->tvGeoHeight:I

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 175
    sget v1, Lcom/qianhe/yct/R$id;->tvHDOP:I

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 181
    sget v1, Lcom/qianhe/yct/R$id;->tvHRMS:I

    .line 182
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 187
    sget v1, Lcom/qianhe/yct/R$id;->tvHeading:I

    .line 188
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 193
    sget v1, Lcom/qianhe/yct/R$id;->tvLat:I

    .line 194
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 199
    sget v1, Lcom/qianhe/yct/R$id;->tvLocalTime:I

    .line 200
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 205
    sget v1, Lcom/qianhe/yct/R$id;->tvLon:I

    .line 206
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 211
    sget v1, Lcom/qianhe/yct/R$id;->tvNorth:I

    .line 212
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 217
    sget v1, Lcom/qianhe/yct/R$id;->tvQuality:I

    .line 218
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 223
    sget v1, Lcom/qianhe/yct/R$id;->tvUTC:I

    .line 224
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    .line 229
    sget v1, Lcom/qianhe/yct/R$id;->tvVDOP:I

    .line 230
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    .line 235
    sget v1, Lcom/qianhe/yct/R$id;->tvVRMS:I

    .line 236
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    if-eqz v22, :cond_0

    .line 241
    new-instance v3, Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    move-object v4, v0

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    invoke-direct/range {v3 .. v22}, Lcom/qianhe/yct/databinding/FragmentLocationBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    .line 245
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 246
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentLocationBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentLocationBinding;
    .locals 2

    .line 120
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_location:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 122
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 124
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentLocationBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentLocationBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
