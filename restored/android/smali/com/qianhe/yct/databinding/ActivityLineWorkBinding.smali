.class public final Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;
.super Ljava/lang/Object;
.source "ActivityLineWorkBinding.java"


# instance fields
.field public final cadView:Lcom/qh/xcad/XCadView;

.field public final edtName:Landroid/widget/TextView;

.field public final ivDirection:Landroid/widget/ImageView;

.field public final ivMapState:Landroid/widget/ImageView;

.field public final ivResetLocation:Landroid/widget/ImageView;

.field public final ivSound:Landroid/widget/ImageView;

.field public final ivStartPoint:Landroid/widget/ImageView;

.field public final ivStatusH:Landroid/widget/ImageView;

.field public final ivStatusV:Landroid/widget/ImageView;

.field public final llt:Landroid/widget/LinearLayout;

.field public final lltBtn:Landroid/widget/LinearLayout;

.field public final lltH5:Landroid/widget/LinearLayout;

.field public final lltH5Pro:Landroid/widget/LinearLayout;

.field public final main:Landroid/widget/LinearLayout;

.field public final mapContainer:Lcom/qianhe/yct/view/map/MapContainerView;

.field public final rollAngleView:Lcom/qianhe/yct/view/RollAngleView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final toothTipView:Lcom/qianhe/yct/view/ToothTipDropdownView;

.field public final topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

.field public final tvArmAngle:Landroid/widget/TextView;

.field public final tvBoundTip:Landroid/widget/TextView;

.field public final tvDiffH:Landroid/widget/TextView;

.field public final tvDiffV:Landroid/widget/TextView;

.field public final tvDistanceDesH:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvDistanceDesV:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvMachineNumber:Landroid/widget/TextView;

.field public final tvProTitle:Landroid/widget/TextView;

.field public final tvProjectDistance:Landroid/widget/TextView;

.field public final tvStartDistance:Landroid/widget/TextView;

.field public final tvStatusH:Landroid/widget/TextView;

.field public final tvStatusV:Landroid/widget/TextView;

.field public final tvUnitH:Landroid/widget/TextView;

.field public final tvUnitV:Landroid/widget/TextView;

.field public final workView:Lcom/qianhe/yct/view/WorkView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/qh/xcad/XCadView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/map/MapContainerView;Lcom/qianhe/yct/view/RollAngleView;Lcom/qianhe/yct/view/ToothTipDropdownView;Lcom/qianhe/yct/databinding/TopbarBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/qianhe/yct/view/WorkView;)V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->rootView:Landroid/widget/LinearLayout;

    .line 169
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    .line 170
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->edtName:Landroid/widget/TextView;

    .line 171
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivDirection:Landroid/widget/ImageView;

    .line 172
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivMapState:Landroid/widget/ImageView;

    .line 173
    iput-object p6, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivResetLocation:Landroid/widget/ImageView;

    .line 174
    iput-object p7, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivSound:Landroid/widget/ImageView;

    .line 175
    iput-object p8, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivStartPoint:Landroid/widget/ImageView;

    .line 176
    iput-object p9, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivStatusH:Landroid/widget/ImageView;

    .line 177
    iput-object p10, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivStatusV:Landroid/widget/ImageView;

    .line 178
    iput-object p11, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->llt:Landroid/widget/LinearLayout;

    .line 179
    iput-object p12, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    .line 180
    iput-object p13, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->lltH5:Landroid/widget/LinearLayout;

    .line 181
    iput-object p14, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->lltH5Pro:Landroid/widget/LinearLayout;

    .line 182
    iput-object p15, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->main:Landroid/widget/LinearLayout;

    move-object/from16 p1, p16

    .line 183
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->mapContainer:Lcom/qianhe/yct/view/map/MapContainerView;

    move-object/from16 p1, p17

    .line 184
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->rollAngleView:Lcom/qianhe/yct/view/RollAngleView;

    move-object/from16 p1, p18

    .line 185
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->toothTipView:Lcom/qianhe/yct/view/ToothTipDropdownView;

    move-object/from16 p1, p19

    .line 186
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    move-object/from16 p1, p20

    .line 187
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    move-object/from16 p1, p21

    .line 188
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvBoundTip:Landroid/widget/TextView;

    move-object/from16 p1, p22

    .line 189
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvDiffH:Landroid/widget/TextView;

    move-object/from16 p1, p23

    .line 190
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvDiffV:Landroid/widget/TextView;

    move-object/from16 p1, p24

    .line 191
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvDistanceDesH:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 p1, p25

    .line 192
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvDistanceDesV:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 p1, p26

    .line 193
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvMachineNumber:Landroid/widget/TextView;

    move-object/from16 p1, p27

    .line 194
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvProTitle:Landroid/widget/TextView;

    move-object/from16 p1, p28

    .line 195
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvProjectDistance:Landroid/widget/TextView;

    move-object/from16 p1, p29

    .line 196
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvStartDistance:Landroid/widget/TextView;

    move-object/from16 p1, p30

    .line 197
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvStatusH:Landroid/widget/TextView;

    move-object/from16 p1, p31

    .line 198
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvStatusV:Landroid/widget/TextView;

    move-object/from16 p1, p32

    .line 199
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvUnitH:Landroid/widget/TextView;

    move-object/from16 p1, p33

    .line 200
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvUnitV:Landroid/widget/TextView;

    move-object/from16 p1, p34

    .line 201
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->workView:Lcom/qianhe/yct/view/WorkView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;
    .locals 38

    move-object/from16 v0, p0

    .line 231
    sget v1, Lcom/qianhe/yct/R$id;->cadView:I

    .line 232
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/qh/xcad/XCadView;

    if-eqz v5, :cond_0

    .line 237
    sget v1, Lcom/qianhe/yct/R$id;->edtName:I

    .line 238
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    .line 240
    sget v1, Lcom/qianhe/yct/R$id;->ivDirection:I

    .line 241
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 246
    sget v1, Lcom/qianhe/yct/R$id;->ivMapState:I

    .line 247
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 252
    sget v1, Lcom/qianhe/yct/R$id;->ivResetLocation:I

    .line 253
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    .line 258
    sget v1, Lcom/qianhe/yct/R$id;->ivSound:I

    .line 259
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    .line 264
    sget v1, Lcom/qianhe/yct/R$id;->ivStartPoint:I

    .line 265
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    .line 270
    sget v1, Lcom/qianhe/yct/R$id;->ivStatusH:I

    .line 271
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    .line 276
    sget v1, Lcom/qianhe/yct/R$id;->ivStatusV:I

    .line 277
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    .line 282
    sget v1, Lcom/qianhe/yct/R$id;->llt:I

    .line 283
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/LinearLayout;

    .line 285
    sget v1, Lcom/qianhe/yct/R$id;->lltBtn:I

    .line 286
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/LinearLayout;

    if-eqz v15, :cond_0

    .line 291
    sget v1, Lcom/qianhe/yct/R$id;->lltH5:I

    .line 292
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/LinearLayout;

    if-eqz v16, :cond_0

    .line 297
    sget v1, Lcom/qianhe/yct/R$id;->lltH5Pro:I

    .line 298
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/LinearLayout;

    if-eqz v17, :cond_0

    .line 303
    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    .line 305
    sget v1, Lcom/qianhe/yct/R$id;->mapContainer:I

    .line 306
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/qianhe/yct/view/map/MapContainerView;

    if-eqz v19, :cond_0

    .line 311
    sget v1, Lcom/qianhe/yct/R$id;->rollAngleView:I

    .line 312
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/qianhe/yct/view/RollAngleView;

    if-eqz v20, :cond_0

    .line 317
    sget v1, Lcom/qianhe/yct/R$id;->toothTipView:I

    .line 318
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Lcom/qianhe/yct/view/ToothTipDropdownView;

    if-eqz v21, :cond_0

    .line 323
    sget v1, Lcom/qianhe/yct/R$id;->topBar:I

    .line 324
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 328
    invoke-static {v2}, Lcom/qianhe/yct/databinding/TopbarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TopbarBinding;

    move-result-object v22

    .line 330
    sget v1, Lcom/qianhe/yct/R$id;->tvArmAngle:I

    .line 331
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/TextView;

    if-eqz v23, :cond_0

    .line 336
    sget v1, Lcom/qianhe/yct/R$id;->tvBoundTip:I

    .line 337
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/TextView;

    if-eqz v24, :cond_0

    .line 342
    sget v1, Lcom/qianhe/yct/R$id;->tvDiffH:I

    .line 343
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/TextView;

    if-eqz v25, :cond_0

    .line 348
    sget v1, Lcom/qianhe/yct/R$id;->tvDiffV:I

    .line 349
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroid/widget/TextView;

    if-eqz v26, :cond_0

    .line 354
    sget v1, Lcom/qianhe/yct/R$id;->tvDistanceDesH:I

    .line 355
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v27, :cond_0

    .line 360
    sget v1, Lcom/qianhe/yct/R$id;->tvDistanceDesV:I

    .line 361
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v28, :cond_0

    .line 366
    sget v1, Lcom/qianhe/yct/R$id;->tvMachineNumber:I

    .line 367
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Landroid/widget/TextView;

    if-eqz v29, :cond_0

    .line 372
    sget v1, Lcom/qianhe/yct/R$id;->tvProTitle:I

    .line 373
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, Landroid/widget/TextView;

    if-eqz v30, :cond_0

    .line 378
    sget v1, Lcom/qianhe/yct/R$id;->tvProjectDistance:I

    .line 379
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v31, v2

    check-cast v31, Landroid/widget/TextView;

    if-eqz v31, :cond_0

    .line 384
    sget v1, Lcom/qianhe/yct/R$id;->tvStartDistance:I

    .line 385
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v32, v2

    check-cast v32, Landroid/widget/TextView;

    if-eqz v32, :cond_0

    .line 390
    sget v1, Lcom/qianhe/yct/R$id;->tvStatusH:I

    .line 391
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v33, v2

    check-cast v33, Landroid/widget/TextView;

    if-eqz v33, :cond_0

    .line 396
    sget v1, Lcom/qianhe/yct/R$id;->tvStatusV:I

    .line 397
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v34, v2

    check-cast v34, Landroid/widget/TextView;

    if-eqz v34, :cond_0

    .line 402
    sget v1, Lcom/qianhe/yct/R$id;->tvUnitH:I

    .line 403
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v35, v2

    check-cast v35, Landroid/widget/TextView;

    if-eqz v35, :cond_0

    .line 408
    sget v1, Lcom/qianhe/yct/R$id;->tvUnitV:I

    .line 409
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v36, v2

    check-cast v36, Landroid/widget/TextView;

    if-eqz v36, :cond_0

    .line 414
    sget v1, Lcom/qianhe/yct/R$id;->workView:I

    .line 415
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v37, v2

    check-cast v37, Lcom/qianhe/yct/view/WorkView;

    if-eqz v37, :cond_0

    .line 420
    new-instance v3, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    move-object/from16 v18, v4

    invoke-direct/range {v3 .. v37}, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;-><init>(Landroid/widget/LinearLayout;Lcom/qh/xcad/XCadView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/map/MapContainerView;Lcom/qianhe/yct/view/RollAngleView;Lcom/qianhe/yct/view/ToothTipDropdownView;Lcom/qianhe/yct/databinding/TopbarBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/qianhe/yct/view/WorkView;)V

    return-object v3

    .line 427
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 428
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 212
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;
    .locals 2

    .line 218
    sget v0, Lcom/qianhe/yct/R$layout;->activity_line_work:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 220
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 222
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
