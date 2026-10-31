.class public final Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;
.super Ljava/lang/Object;
.source "FragmentPolylineStep1Binding.java"


# instance fields
.field public final edtEndDepthValue:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtHeightDiff:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtRatio:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtStartDepthValue:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtWidth:Lcom/qianhe/yct/view/NumericEditText;

.field public final fillDigTypeA:Lcom/qianhe/yct/view/DitchTypeDropdown;

.field public final fillDigTypeB:Lcom/qianhe/yct/view/DitchTypeDropdown;

.field public final ivStatus:Landroid/widget/ImageView;

.field public final lltFillDig:Landroid/widget/LinearLayout;

.field public final lltHeightDiff:Landroid/widget/LinearLayout;

.field public final lltRatio:Landroid/widget/LinearLayout;

.field public final main:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final spSlopeMode:Landroid/widget/Spinner;

.field public final tvContinue:Landroid/widget/TextView;

.field public final tvPrevious:Landroid/widget/TextView;

.field public final tvSlopeTip:Landroid/widget/TextView;

.field public final tvUseFillDig:Landroid/widget/TextView;

.field public final unitDropdown:Lcom/qianhe/yct/view/UnitDropdownView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/DitchTypeDropdown;Lcom/qianhe/yct/view/DitchTypeDropdown;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/Spinner;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/qianhe/yct/view/UnitDropdownView;)V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->rootView:Landroid/widget/LinearLayout;

    .line 195
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->edtEndDepthValue:Lcom/qianhe/yct/view/NumericEditText;

    .line 196
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->edtHeightDiff:Lcom/qianhe/yct/view/NumericEditText;

    .line 197
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    .line 198
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->edtStartDepthValue:Lcom/qianhe/yct/view/NumericEditText;

    .line 199
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->edtWidth:Lcom/qianhe/yct/view/NumericEditText;

    .line 200
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->fillDigTypeA:Lcom/qianhe/yct/view/DitchTypeDropdown;

    .line 201
    iput-object p8, p0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->fillDigTypeB:Lcom/qianhe/yct/view/DitchTypeDropdown;

    .line 202
    iput-object p9, p0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->ivStatus:Landroid/widget/ImageView;

    .line 203
    iput-object p10, p0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->lltFillDig:Landroid/widget/LinearLayout;

    .line 204
    iput-object p11, p0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->lltHeightDiff:Landroid/widget/LinearLayout;

    .line 205
    iput-object p12, p0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->lltRatio:Landroid/widget/LinearLayout;

    .line 206
    iput-object p13, p0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->main:Landroid/widget/LinearLayout;

    .line 207
    iput-object p14, p0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->spSlopeMode:Landroid/widget/Spinner;

    .line 208
    iput-object p15, p0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->tvContinue:Landroid/widget/TextView;

    move-object/from16 p1, p16

    .line 209
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->tvPrevious:Landroid/widget/TextView;

    move-object/from16 p1, p17

    .line 210
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->tvSlopeTip:Landroid/widget/TextView;

    move-object/from16 p1, p18

    .line 211
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->tvUseFillDig:Landroid/widget/TextView;

    move-object/from16 p1, p19

    .line 212
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->unitDropdown:Lcom/qianhe/yct/view/UnitDropdownView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;
    .locals 22

    move-object/from16 v0, p0

    .line 242
    sget v1, Lcom/qianhe/yct/R$id;->edtEndDepthValue:I

    .line 243
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/qianhe/yct/view/NumericEditText;

    .line 245
    sget v1, Lcom/qianhe/yct/R$id;->edtHeightDiff:I

    .line 246
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/qianhe/yct/view/NumericEditText;

    .line 248
    sget v1, Lcom/qianhe/yct/R$id;->edtRatio:I

    .line 249
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v6, :cond_0

    .line 254
    sget v1, Lcom/qianhe/yct/R$id;->edtStartDepthValue:I

    .line 255
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/qianhe/yct/view/NumericEditText;

    .line 257
    sget v1, Lcom/qianhe/yct/R$id;->edtWidth:I

    .line 258
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v8, :cond_0

    .line 263
    sget v1, Lcom/qianhe/yct/R$id;->fillDigTypeA:I

    .line 264
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/qianhe/yct/view/DitchTypeDropdown;

    .line 266
    sget v1, Lcom/qianhe/yct/R$id;->fillDigTypeB:I

    .line 267
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/qianhe/yct/view/DitchTypeDropdown;

    .line 269
    sget v1, Lcom/qianhe/yct/R$id;->ivStatus:I

    .line 270
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    .line 275
    sget v1, Lcom/qianhe/yct/R$id;->lltFillDig:I

    .line 276
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/LinearLayout;

    .line 278
    sget v1, Lcom/qianhe/yct/R$id;->lltHeightDiff:I

    .line 279
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/LinearLayout;

    .line 281
    sget v1, Lcom/qianhe/yct/R$id;->lltRatio:I

    .line 282
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_0

    .line 287
    move-object v3, v0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 289
    sget v1, Lcom/qianhe/yct/R$id;->spSlopeMode:I

    .line 290
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/Spinner;

    if-eqz v16, :cond_0

    .line 295
    sget v1, Lcom/qianhe/yct/R$id;->tvContinue:I

    .line 296
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 301
    sget v1, Lcom/qianhe/yct/R$id;->tvPrevious:I

    .line 302
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 307
    sget v1, Lcom/qianhe/yct/R$id;->tvSlopeTip:I

    .line 308
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 313
    sget v1, Lcom/qianhe/yct/R$id;->tvUseFillDig:I

    .line 314
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Landroid/widget/TextView;

    .line 316
    sget v1, Lcom/qianhe/yct/R$id;->unitDropdown:I

    .line 317
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Lcom/qianhe/yct/view/UnitDropdownView;

    if-eqz v21, :cond_0

    .line 322
    new-instance v2, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    move-object v15, v3

    invoke-direct/range {v2 .. v21}, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;-><init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/DitchTypeDropdown;Lcom/qianhe/yct/view/DitchTypeDropdown;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/Spinner;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/qianhe/yct/view/UnitDropdownView;)V

    return-object v2

    .line 327
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 328
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 223
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;
    .locals 2

    .line 229
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_polyline_step1:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 231
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 233
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
