.class public final Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;
.super Ljava/lang/Object;
.source "FragmentSpStep1Binding.java"


# instance fields
.field public final edtEast:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtElev:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtHLat:Landroid/widget/EditText;

.field public final edtHLon:Landroid/widget/EditText;

.field public final edtNorth:Lcom/qianhe/yct/view/NumericEditText;

.field public final ivReset:Landroid/widget/ImageView;

.field public final ivSelA:Landroid/widget/ImageView;

.field public final ivStep1:Landroid/widget/ImageView;

.field public final lltColl:Landroid/widget/LinearLayout;

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

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->rootView:Landroid/widget/LinearLayout;

    .line 91
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    .line 92
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    .line 93
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->edtHLat:Landroid/widget/EditText;

    .line 94
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->edtHLon:Landroid/widget/EditText;

    .line 95
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    .line 96
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->ivReset:Landroid/widget/ImageView;

    .line 97
    iput-object p8, p0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->ivSelA:Landroid/widget/ImageView;

    .line 98
    iput-object p9, p0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->ivStep1:Landroid/widget/ImageView;

    .line 99
    iput-object p10, p0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->lltColl:Landroid/widget/LinearLayout;

    .line 100
    iput-object p11, p0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->lltCollect:Landroid/widget/LinearLayout;

    .line 101
    iput-object p12, p0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->lltSel:Landroid/widget/LinearLayout;

    .line 102
    iput-object p13, p0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->main:Landroid/widget/LinearLayout;

    .line 103
    iput-object p14, p0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    .line 104
    iput-object p15, p0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->tvCadImport:Landroid/widget/TextView;

    move-object/from16 p1, p16

    .line 105
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->tvContinue:Landroid/widget/TextView;

    move-object/from16 p1, p17

    .line 106
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->tvMeasure:Landroid/widget/TextView;

    move-object/from16 p1, p18

    .line 107
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->tvPointLib:Landroid/widget/TextView;

    move-object/from16 p1, p19

    .line 108
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->tvPrevious:Landroid/widget/TextView;

    move-object/from16 p1, p20

    .line 109
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->tvSpType:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;
    .locals 24

    move-object/from16 v0, p0

    .line 139
    sget v1, Lcom/qianhe/yct/R$id;->edtEast:I

    .line 140
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v5, :cond_0

    .line 145
    sget v1, Lcom/qianhe/yct/R$id;->edtElev:I

    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v6, :cond_0

    .line 151
    sget v1, Lcom/qianhe/yct/R$id;->edtHLat:I

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/EditText;

    if-eqz v7, :cond_0

    .line 157
    sget v1, Lcom/qianhe/yct/R$id;->edtHLon:I

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/EditText;

    if-eqz v8, :cond_0

    .line 163
    sget v1, Lcom/qianhe/yct/R$id;->edtNorth:I

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v9, :cond_0

    .line 169
    sget v1, Lcom/qianhe/yct/R$id;->ivReset:I

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    .line 175
    sget v1, Lcom/qianhe/yct/R$id;->ivSelA:I

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    .line 181
    sget v1, Lcom/qianhe/yct/R$id;->ivStep1:I

    .line 182
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    .line 187
    sget v1, Lcom/qianhe/yct/R$id;->lltColl:I

    .line 188
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_0

    .line 193
    sget v1, Lcom/qianhe/yct/R$id;->lltCollect:I

    .line 194
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_0

    .line 199
    sget v1, Lcom/qianhe/yct/R$id;->lltSel:I

    .line 200
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/LinearLayout;

    if-eqz v15, :cond_0

    .line 205
    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    .line 207
    sget v1, Lcom/qianhe/yct/R$id;->toothView:I

    .line 208
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/qianhe/yct/view/ToothView;

    if-eqz v17, :cond_0

    .line 213
    sget v1, Lcom/qianhe/yct/R$id;->tvCadImport:I

    .line 214
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 219
    sget v1, Lcom/qianhe/yct/R$id;->tvContinue:I

    .line 220
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 225
    sget v1, Lcom/qianhe/yct/R$id;->tvMeasure:I

    .line 226
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    .line 231
    sget v1, Lcom/qianhe/yct/R$id;->tvPointLib:I

    .line 232
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    .line 237
    sget v1, Lcom/qianhe/yct/R$id;->tvPrevious:I

    .line 238
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    if-eqz v22, :cond_0

    .line 243
    sget v1, Lcom/qianhe/yct/R$id;->tvSpType:I

    .line 244
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/TextView;

    if-eqz v23, :cond_0

    .line 249
    new-instance v3, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    move-object/from16 v16, v4

    invoke-direct/range {v3 .. v23}, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;-><init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/ToothView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    .line 253
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 120
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;
    .locals 2

    .line 126
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_sp_step1:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 128
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 130
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
