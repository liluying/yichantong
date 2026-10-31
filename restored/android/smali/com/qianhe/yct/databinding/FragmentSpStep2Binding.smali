.class public final Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;
.super Ljava/lang/Object;
.source "FragmentSpStep2Binding.java"


# instance fields
.field public final edtEast:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtElev:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtHLat:Landroid/widget/EditText;

.field public final edtHLon:Landroid/widget/EditText;

.field public final edtNorth:Lcom/qianhe/yct/view/NumericEditText;

.field public final ivReset:Landroid/widget/ImageView;

.field public final ivSelB:Landroid/widget/ImageView;

.field public final ivStep2:Landroid/widget/ImageView;

.field public final lleColl:Landroid/widget/LinearLayout;

.field public final lltCollect:Landroid/widget/LinearLayout;

.field public final lltSel:Landroid/widget/LinearLayout;

.field public final main:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final toothView:Lcom/qianhe/yct/view/ToothView;

.field public final tvCadImport:Landroid/widget/TextView;

.field public final tvContinue:Landroid/widget/TextView;

.field public final tvMeasure:Landroid/widget/TextView;

.field public final tvPointLib:Landroid/widget/TextView;

.field public final tvPrevious:Landroid/widget/TextView;

.field public final tvSpType:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/ToothView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->rootView:Landroid/widget/LinearLayout;

    .line 104
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    .line 105
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    .line 106
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->edtHLat:Landroid/widget/EditText;

    .line 107
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->edtHLon:Landroid/widget/EditText;

    .line 108
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    .line 109
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->ivReset:Landroid/widget/ImageView;

    .line 110
    iput-object p8, p0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->ivSelB:Landroid/widget/ImageView;

    .line 111
    iput-object p9, p0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->ivStep2:Landroid/widget/ImageView;

    .line 112
    iput-object p10, p0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->lleColl:Landroid/widget/LinearLayout;

    .line 113
    iput-object p11, p0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->lltCollect:Landroid/widget/LinearLayout;

    .line 114
    iput-object p12, p0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->lltSel:Landroid/widget/LinearLayout;

    .line 115
    iput-object p13, p0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->main:Landroid/widget/LinearLayout;

    .line 116
    iput-object p14, p0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    .line 117
    iput-object p15, p0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->tvCadImport:Landroid/widget/TextView;

    move-object/from16 p1, p16

    .line 118
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->tvContinue:Landroid/widget/TextView;

    move-object/from16 p1, p17

    .line 119
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->tvMeasure:Landroid/widget/TextView;

    move-object/from16 p1, p18

    .line 120
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->tvPointLib:Landroid/widget/TextView;

    move-object/from16 p1, p19

    .line 121
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->tvPrevious:Landroid/widget/TextView;

    move-object/from16 p1, p20

    .line 122
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->tvSpType:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;
    .locals 24

    move-object/from16 v0, p0

    .line 152
    sget v1, Lcom/qianhe/yct/R$id;->edtEast:I

    .line 153
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v5, :cond_0

    .line 158
    sget v1, Lcom/qianhe/yct/R$id;->edtElev:I

    .line 159
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v6, :cond_0

    .line 164
    sget v1, Lcom/qianhe/yct/R$id;->edtHLat:I

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/EditText;

    if-eqz v7, :cond_0

    .line 170
    sget v1, Lcom/qianhe/yct/R$id;->edtHLon:I

    .line 171
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/EditText;

    if-eqz v8, :cond_0

    .line 176
    sget v1, Lcom/qianhe/yct/R$id;->edtNorth:I

    .line 177
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v9, :cond_0

    .line 182
    sget v1, Lcom/qianhe/yct/R$id;->ivReset:I

    .line 183
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    .line 188
    sget v1, Lcom/qianhe/yct/R$id;->ivSelB:I

    .line 189
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    .line 194
    sget v1, Lcom/qianhe/yct/R$id;->ivStep2:I

    .line 195
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    .line 200
    sget v1, Lcom/qianhe/yct/R$id;->lleColl:I

    .line 201
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/LinearLayout;

    .line 203
    sget v1, Lcom/qianhe/yct/R$id;->lltCollect:I

    .line 204
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_0

    .line 209
    sget v1, Lcom/qianhe/yct/R$id;->lltSel:I

    .line 210
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/LinearLayout;

    if-eqz v15, :cond_0

    .line 215
    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    .line 217
    sget v1, Lcom/qianhe/yct/R$id;->toothView:I

    .line 218
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/qianhe/yct/view/ToothView;

    if-eqz v17, :cond_0

    .line 223
    sget v1, Lcom/qianhe/yct/R$id;->tvCadImport:I

    .line 224
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 229
    sget v1, Lcom/qianhe/yct/R$id;->tvContinue:I

    .line 230
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 235
    sget v1, Lcom/qianhe/yct/R$id;->tvMeasure:I

    .line 236
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    .line 241
    sget v1, Lcom/qianhe/yct/R$id;->tvPointLib:I

    .line 242
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    .line 247
    sget v1, Lcom/qianhe/yct/R$id;->tvPrevious:I

    .line 248
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    if-eqz v22, :cond_0

    .line 253
    sget v1, Lcom/qianhe/yct/R$id;->tvSpType:I

    .line 254
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/TextView;

    if-eqz v23, :cond_0

    .line 259
    new-instance v3, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    move-object/from16 v16, v4

    invoke-direct/range {v3 .. v23}, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;-><init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/ToothView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    .line 263
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 133
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;
    .locals 2

    .line 139
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_sp_step2:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 141
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 143
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
