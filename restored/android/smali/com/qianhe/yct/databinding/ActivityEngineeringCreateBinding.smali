.class public final Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;
.super Ljava/lang/Object;
.source "ActivityEngineeringCreateBinding.java"


# instance fields
.field public final cbIsNorth:Landroid/widget/CheckBox;

.field public final edtA:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtF:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtFalseEasting:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtFalseNorthing:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtLat0:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtLon0:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtName:Landroidx/appcompat/widget/AppCompatEditText;

.field public final edtProjHeight:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtScaleFactor:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtUtmZone:Lcom/qianhe/yct/view/NumericEditText;

.field public final ivConversionSelectArrow:Landroid/widget/ImageView;

.field public final ivConversionTypeArrow:Landroid/widget/ImageView;

.field public final ivDeformationArrow:Landroid/widget/ImageView;

.field public final ivEllipsoidArrow:Landroid/widget/ImageView;

.field public final ivProjectionArrow:Landroid/widget/ImageView;

.field public final ivRefresh:Landroid/widget/ImageView;

.field public final ivReset:Landroid/widget/ImageView;

.field public final ivUtmRefresh:Landroid/widget/ImageView;

.field public final llConversionSelect:Landroid/widget/FrameLayout;

.field public final llCustomEllipsoid:Landroid/widget/LinearLayout;

.field public final llGaussParams:Landroid/widget/LinearLayout;

.field public final llUtmParams:Landroid/widget/LinearLayout;

.field public final nsvContent:Landroidx/core/widget/NestedScrollView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final spConversionType:Landroid/widget/Spinner;

.field public final spDeformation:Landroid/widget/Spinner;

.field public final spEllipsoid:Landroid/widget/Spinner;

.field public final spProjectionType:Landroid/widget/Spinner;

.field public final topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

.field public final tvApply:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvCentralMeridian:Landroid/widget/TextView;

.field public final tvConversionParams:Landroid/widget/TextView;

.field public final tvDefaultEngineeringTip:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Landroidx/appcompat/widget/AppCompatEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->rootView:Landroid/widget/LinearLayout;

    .line 147
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->cbIsNorth:Landroid/widget/CheckBox;

    .line 148
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtA:Lcom/qianhe/yct/view/NumericEditText;

    .line 149
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtF:Lcom/qianhe/yct/view/NumericEditText;

    .line 150
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtFalseEasting:Lcom/qianhe/yct/view/NumericEditText;

    .line 151
    iput-object p6, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtFalseNorthing:Lcom/qianhe/yct/view/NumericEditText;

    .line 152
    iput-object p7, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtLat0:Lcom/qianhe/yct/view/NumericEditText;

    .line 153
    iput-object p8, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtLon0:Lcom/qianhe/yct/view/NumericEditText;

    .line 154
    iput-object p9, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    .line 155
    iput-object p10, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtProjHeight:Lcom/qianhe/yct/view/NumericEditText;

    .line 156
    iput-object p11, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtScaleFactor:Lcom/qianhe/yct/view/NumericEditText;

    .line 157
    iput-object p12, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtUtmZone:Lcom/qianhe/yct/view/NumericEditText;

    .line 158
    iput-object p13, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->ivConversionSelectArrow:Landroid/widget/ImageView;

    .line 159
    iput-object p14, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->ivConversionTypeArrow:Landroid/widget/ImageView;

    .line 160
    iput-object p15, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->ivDeformationArrow:Landroid/widget/ImageView;

    move-object/from16 p1, p16

    .line 161
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->ivEllipsoidArrow:Landroid/widget/ImageView;

    move-object/from16 p1, p17

    .line 162
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->ivProjectionArrow:Landroid/widget/ImageView;

    move-object/from16 p1, p18

    .line 163
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->ivRefresh:Landroid/widget/ImageView;

    move-object/from16 p1, p19

    .line 164
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->ivReset:Landroid/widget/ImageView;

    move-object/from16 p1, p20

    .line 165
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->ivUtmRefresh:Landroid/widget/ImageView;

    move-object/from16 p1, p21

    .line 166
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->llConversionSelect:Landroid/widget/FrameLayout;

    move-object/from16 p1, p22

    .line 167
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->llCustomEllipsoid:Landroid/widget/LinearLayout;

    move-object/from16 p1, p23

    .line 168
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->llGaussParams:Landroid/widget/LinearLayout;

    move-object/from16 p1, p24

    .line 169
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->llUtmParams:Landroid/widget/LinearLayout;

    move-object/from16 p1, p25

    .line 170
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->nsvContent:Landroidx/core/widget/NestedScrollView;

    move-object/from16 p1, p26

    .line 171
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spConversionType:Landroid/widget/Spinner;

    move-object/from16 p1, p27

    .line 172
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spDeformation:Landroid/widget/Spinner;

    move-object/from16 p1, p28

    .line 173
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spEllipsoid:Landroid/widget/Spinner;

    move-object/from16 p1, p29

    .line 174
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spProjectionType:Landroid/widget/Spinner;

    move-object/from16 p1, p30

    .line 175
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    move-object/from16 p1, p31

    .line 176
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->tvApply:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 p1, p32

    .line 177
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->tvCentralMeridian:Landroid/widget/TextView;

    move-object/from16 p1, p33

    .line 178
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->tvConversionParams:Landroid/widget/TextView;

    move-object/from16 p1, p34

    .line 179
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->tvDefaultEngineeringTip:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;
    .locals 38

    move-object/from16 v0, p0

    .line 209
    sget v1, Lcom/qianhe/yct/R$id;->cbIsNorth:I

    .line 210
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/CheckBox;

    if-eqz v5, :cond_0

    .line 215
    sget v1, Lcom/qianhe/yct/R$id;->edtA:I

    .line 216
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v6, :cond_0

    .line 221
    sget v1, Lcom/qianhe/yct/R$id;->edtF:I

    .line 222
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v7, :cond_0

    .line 227
    sget v1, Lcom/qianhe/yct/R$id;->edtFalseEasting:I

    .line 228
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v8, :cond_0

    .line 233
    sget v1, Lcom/qianhe/yct/R$id;->edtFalseNorthing:I

    .line 234
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v9, :cond_0

    .line 239
    sget v1, Lcom/qianhe/yct/R$id;->edtLat0:I

    .line 240
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v10, :cond_0

    .line 245
    sget v1, Lcom/qianhe/yct/R$id;->edtLon0:I

    .line 246
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v11, :cond_0

    .line 251
    sget v1, Lcom/qianhe/yct/R$id;->edtName:I

    .line 252
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz v12, :cond_0

    .line 257
    sget v1, Lcom/qianhe/yct/R$id;->edtProjHeight:I

    .line 258
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v13, :cond_0

    .line 263
    sget v1, Lcom/qianhe/yct/R$id;->edtScaleFactor:I

    .line 264
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v14, :cond_0

    .line 269
    sget v1, Lcom/qianhe/yct/R$id;->edtUtmZone:I

    .line 270
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v15, :cond_0

    .line 275
    sget v1, Lcom/qianhe/yct/R$id;->ivConversionSelectArrow:I

    .line 276
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_0

    .line 281
    sget v1, Lcom/qianhe/yct/R$id;->ivConversionTypeArrow:I

    .line 282
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/ImageView;

    if-eqz v17, :cond_0

    .line 287
    sget v1, Lcom/qianhe/yct/R$id;->ivDeformationArrow:I

    .line 288
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/ImageView;

    if-eqz v18, :cond_0

    .line 293
    sget v1, Lcom/qianhe/yct/R$id;->ivEllipsoidArrow:I

    .line 294
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/ImageView;

    if-eqz v19, :cond_0

    .line 299
    sget v1, Lcom/qianhe/yct/R$id;->ivProjectionArrow:I

    .line 300
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/ImageView;

    if-eqz v20, :cond_0

    .line 305
    sget v1, Lcom/qianhe/yct/R$id;->ivRefresh:I

    .line 306
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/ImageView;

    if-eqz v21, :cond_0

    .line 311
    sget v1, Lcom/qianhe/yct/R$id;->ivReset:I

    .line 312
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/ImageView;

    if-eqz v22, :cond_0

    .line 317
    sget v1, Lcom/qianhe/yct/R$id;->ivUtmRefresh:I

    .line 318
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/ImageView;

    if-eqz v23, :cond_0

    .line 323
    sget v1, Lcom/qianhe/yct/R$id;->llConversionSelect:I

    .line 324
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/FrameLayout;

    if-eqz v24, :cond_0

    .line 329
    sget v1, Lcom/qianhe/yct/R$id;->llCustomEllipsoid:I

    .line 330
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/LinearLayout;

    if-eqz v25, :cond_0

    .line 335
    sget v1, Lcom/qianhe/yct/R$id;->llGaussParams:I

    .line 336
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroid/widget/LinearLayout;

    if-eqz v26, :cond_0

    .line 341
    sget v1, Lcom/qianhe/yct/R$id;->llUtmParams:I

    .line 342
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroid/widget/LinearLayout;

    if-eqz v27, :cond_0

    .line 347
    sget v1, Lcom/qianhe/yct/R$id;->nsvContent:I

    .line 348
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Landroidx/core/widget/NestedScrollView;

    if-eqz v28, :cond_0

    .line 353
    sget v1, Lcom/qianhe/yct/R$id;->spConversionType:I

    .line 354
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Landroid/widget/Spinner;

    if-eqz v29, :cond_0

    .line 359
    sget v1, Lcom/qianhe/yct/R$id;->spDeformation:I

    .line 360
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, Landroid/widget/Spinner;

    if-eqz v30, :cond_0

    .line 365
    sget v1, Lcom/qianhe/yct/R$id;->spEllipsoid:I

    .line 366
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v31, v2

    check-cast v31, Landroid/widget/Spinner;

    if-eqz v31, :cond_0

    .line 371
    sget v1, Lcom/qianhe/yct/R$id;->spProjectionType:I

    .line 372
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v32, v2

    check-cast v32, Landroid/widget/Spinner;

    if-eqz v32, :cond_0

    .line 377
    sget v1, Lcom/qianhe/yct/R$id;->topBar:I

    .line 378
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 382
    invoke-static {v2}, Lcom/qianhe/yct/databinding/TitlebarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TitlebarBinding;

    move-result-object v33

    .line 384
    sget v1, Lcom/qianhe/yct/R$id;->tvApply:I

    .line 385
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v34, v2

    check-cast v34, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v34, :cond_0

    .line 390
    sget v1, Lcom/qianhe/yct/R$id;->tvCentralMeridian:I

    .line 391
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v35, v2

    check-cast v35, Landroid/widget/TextView;

    if-eqz v35, :cond_0

    .line 396
    sget v1, Lcom/qianhe/yct/R$id;->tvConversionParams:I

    .line 397
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v36, v2

    check-cast v36, Landroid/widget/TextView;

    if-eqz v36, :cond_0

    .line 402
    sget v1, Lcom/qianhe/yct/R$id;->tvDefaultEngineeringTip:I

    .line 403
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v37, v2

    check-cast v37, Landroid/widget/TextView;

    if-eqz v37, :cond_0

    .line 408
    new-instance v3, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v37}, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Landroidx/appcompat/widget/AppCompatEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    .line 416
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 417
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 190
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;
    .locals 2

    .line 196
    sget v0, Lcom/qianhe/yct/R$layout;->activity_engineering_create:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 198
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 200
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
