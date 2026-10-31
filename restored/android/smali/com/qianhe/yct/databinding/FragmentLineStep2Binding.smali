.class public final Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;
.super Ljava/lang/Object;
.source "FragmentLineStep2Binding.java"


# instance fields
.field public final edtEast:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtElev:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtHLat:Landroid/widget/EditText;

.field public final edtHLon:Landroid/widget/EditText;

.field public final edtNorth:Lcom/qianhe/yct/view/NumericEditText;

.field public final ivReset:Landroid/widget/ImageView;

.field public final linePreView:Lcom/qianhe/yct/view/LinePreView;

.field public final lleColl:Landroid/widget/LinearLayout;

.field public final lltCollect:Landroid/widget/LinearLayout;

.field public final main:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final toothView:Lcom/qianhe/yct/view/ToothView;

.field public final tvCadImport:Landroid/widget/TextView;

.field public final tvContinue:Landroid/widget/TextView;

.field public final tvMeasure:Landroid/widget/TextView;

.field public final tvPointLib:Landroid/widget/TextView;

.field public final tvPrevious:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/ImageView;Lcom/qianhe/yct/view/LinePreView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/ToothView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;->rootView:Landroid/widget/LinearLayout;

    .line 83
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    .line 84
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    .line 85
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;->edtHLat:Landroid/widget/EditText;

    .line 86
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;->edtHLon:Landroid/widget/EditText;

    .line 87
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    .line 88
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;->ivReset:Landroid/widget/ImageView;

    .line 89
    iput-object p8, p0, Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;->linePreView:Lcom/qianhe/yct/view/LinePreView;

    .line 90
    iput-object p9, p0, Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;->lleColl:Landroid/widget/LinearLayout;

    .line 91
    iput-object p10, p0, Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;->lltCollect:Landroid/widget/LinearLayout;

    .line 92
    iput-object p11, p0, Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;->main:Landroid/widget/LinearLayout;

    .line 93
    iput-object p12, p0, Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    .line 94
    iput-object p13, p0, Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;->tvCadImport:Landroid/widget/TextView;

    .line 95
    iput-object p14, p0, Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;->tvContinue:Landroid/widget/TextView;

    .line 96
    iput-object p15, p0, Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;->tvMeasure:Landroid/widget/TextView;

    move-object/from16 p1, p16

    .line 97
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;->tvPointLib:Landroid/widget/TextView;

    move-object/from16 p1, p17

    .line 98
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;->tvPrevious:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;
    .locals 21

    move-object/from16 v0, p0

    .line 128
    sget v1, Lcom/qianhe/yct/R$id;->edtEast:I

    .line 129
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v5, :cond_0

    .line 134
    sget v1, Lcom/qianhe/yct/R$id;->edtElev:I

    .line 135
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v6, :cond_0

    .line 140
    sget v1, Lcom/qianhe/yct/R$id;->edtHLat:I

    .line 141
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/EditText;

    if-eqz v7, :cond_0

    .line 146
    sget v1, Lcom/qianhe/yct/R$id;->edtHLon:I

    .line 147
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/EditText;

    if-eqz v8, :cond_0

    .line 152
    sget v1, Lcom/qianhe/yct/R$id;->edtNorth:I

    .line 153
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v9, :cond_0

    .line 158
    sget v1, Lcom/qianhe/yct/R$id;->ivReset:I

    .line 159
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    .line 164
    sget v1, Lcom/qianhe/yct/R$id;->linePreView:I

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/qianhe/yct/view/LinePreView;

    if-eqz v11, :cond_0

    .line 170
    sget v1, Lcom/qianhe/yct/R$id;->lleColl:I

    .line 171
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    .line 176
    sget v1, Lcom/qianhe/yct/R$id;->lltCollect:I

    .line 177
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_0

    .line 182
    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    .line 184
    sget v1, Lcom/qianhe/yct/R$id;->toothView:I

    .line 185
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/qianhe/yct/view/ToothView;

    if-eqz v15, :cond_0

    .line 190
    sget v1, Lcom/qianhe/yct/R$id;->tvCadImport:I

    .line 191
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 196
    sget v1, Lcom/qianhe/yct/R$id;->tvContinue:I

    .line 197
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 202
    sget v1, Lcom/qianhe/yct/R$id;->tvMeasure:I

    .line 203
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 208
    sget v1, Lcom/qianhe/yct/R$id;->tvPointLib:I

    .line 209
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 214
    sget v1, Lcom/qianhe/yct/R$id;->tvPrevious:I

    .line 215
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    .line 220
    new-instance v3, Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;

    move-object v14, v4

    invoke-direct/range {v3 .. v20}, Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;-><init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/ImageView;Lcom/qianhe/yct/view/LinePreView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/ToothView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    .line 224
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;
    .locals 2

    .line 115
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_line_step2:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 117
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 119
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
