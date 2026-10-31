.class public final Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;
.super Ljava/lang/Object;
.source "ActivityPolylinePointDetailBinding.java"


# instance fields
.field public final edtEast:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtElev:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtNorth:Lcom/qianhe/yct/view/NumericEditText;

.field public final ivDoubt:Landroid/widget/ImageView;

.field public final lleColl:Landroid/widget/LinearLayout;

.field public final main:Landroid/widget/LinearLayout;

.field public final nsv:Landroidx/core/widget/NestedScrollView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final toothView:Lcom/qianhe/yct/view/ToothView;

.field public final topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

.field public final tvCadImport:Landroid/widget/TextView;

.field public final tvConfirm:Landroid/widget/TextView;

.field public final tvMeasure:Landroid/widget/TextView;

.field public final tvName:Landroid/widget/TextView;

.field public final tvPointLib:Landroid/widget/TextView;

.field public final tvReset:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Lcom/qianhe/yct/view/ToothView;Lcom/qianhe/yct/databinding/TopbarBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->rootView:Landroid/widget/LinearLayout;

    .line 79
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    .line 80
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    .line 81
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    .line 82
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->ivDoubt:Landroid/widget/ImageView;

    .line 83
    iput-object p6, p0, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->lleColl:Landroid/widget/LinearLayout;

    .line 84
    iput-object p7, p0, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->main:Landroid/widget/LinearLayout;

    .line 85
    iput-object p8, p0, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->nsv:Landroidx/core/widget/NestedScrollView;

    .line 86
    iput-object p9, p0, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->toothView:Lcom/qianhe/yct/view/ToothView;

    .line 87
    iput-object p10, p0, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    .line 88
    iput-object p11, p0, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->tvCadImport:Landroid/widget/TextView;

    .line 89
    iput-object p12, p0, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->tvConfirm:Landroid/widget/TextView;

    .line 90
    iput-object p13, p0, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->tvMeasure:Landroid/widget/TextView;

    .line 91
    iput-object p14, p0, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->tvName:Landroid/widget/TextView;

    .line 92
    iput-object p15, p0, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->tvPointLib:Landroid/widget/TextView;

    move-object/from16 p1, p16

    .line 93
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->tvReset:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;
    .locals 20

    move-object/from16 v0, p0

    .line 123
    sget v1, Lcom/qianhe/yct/R$id;->edtEast:I

    .line 124
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v5, :cond_0

    .line 129
    sget v1, Lcom/qianhe/yct/R$id;->edtElev:I

    .line 130
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v6, :cond_0

    .line 135
    sget v1, Lcom/qianhe/yct/R$id;->edtNorth:I

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v7, :cond_0

    .line 141
    sget v1, Lcom/qianhe/yct/R$id;->ivDoubt:I

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 147
    sget v1, Lcom/qianhe/yct/R$id;->lleColl:I

    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 153
    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    .line 155
    sget v1, Lcom/qianhe/yct/R$id;->nsv:I

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/core/widget/NestedScrollView;

    if-eqz v11, :cond_0

    .line 161
    sget v1, Lcom/qianhe/yct/R$id;->toothView:I

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/qianhe/yct/view/ToothView;

    if-eqz v12, :cond_0

    .line 167
    sget v1, Lcom/qianhe/yct/R$id;->topBar:I

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 172
    invoke-static {v2}, Lcom/qianhe/yct/databinding/TopbarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TopbarBinding;

    move-result-object v13

    .line 174
    sget v1, Lcom/qianhe/yct/R$id;->tvCadImport:I

    .line 175
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 180
    sget v1, Lcom/qianhe/yct/R$id;->tvConfirm:I

    .line 181
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 186
    sget v1, Lcom/qianhe/yct/R$id;->tvMeasure:I

    .line 187
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 192
    sget v1, Lcom/qianhe/yct/R$id;->tvName:I

    .line 193
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 198
    sget v1, Lcom/qianhe/yct/R$id;->tvPointLib:I

    .line 199
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 204
    sget v1, Lcom/qianhe/yct/R$id;->tvReset:I

    .line 205
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 210
    new-instance v3, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    move-object v10, v4

    invoke-direct/range {v3 .. v19}, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;-><init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Lcom/qianhe/yct/view/ToothView;Lcom/qianhe/yct/databinding/TopbarBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    .line 214
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;
    .locals 2

    .line 110
    sget v0, Lcom/qianhe/yct/R$layout;->activity_polyline_point_detail:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 112
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 114
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
