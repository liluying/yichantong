.class public final Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;
.super Ljava/lang/Object;
.source "ActivityVerrifyAccuracyBinding.java"


# instance fields
.field public final armAngleScaleBar:Lcom/qianhe/yct/view/ArmAngleScaleBarView;

.field public final cvStep:Landroidx/cardview/widget/CardView;

.field public final ivStep:Lcom/qianhe/yct/view/NightAwareImageView;

.field public final lltElevations:Landroid/widget/LinearLayout;

.field public final lltErrors:Landroid/widget/LinearLayout;

.field public final lltProgress:Landroid/widget/LinearLayout;

.field public final nsvResult:Landroidx/core/widget/NestedScrollView;

.field public final nsvStepText:Landroidx/core/widget/NestedScrollView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

.field public final tvArmAngleBestTip:Landroid/widget/TextView;

.field public final tvCalibrationPointInput:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvCommonTips:Landroid/widget/TextView;

.field public final tvHeadingError:Landroid/widget/TextView;

.field public final tvNext:Landroid/widget/TextView;

.field public final tvPrevious:Landroid/widget/TextView;

.field public final tvResultHint:Landroid/widget/TextView;

.field public final tvStepAction:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/ArmAngleScaleBarView;Landroidx/cardview/widget/CardView;Lcom/qianhe/yct/view/NightAwareImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Landroidx/core/widget/NestedScrollView;Lcom/qianhe/yct/databinding/TopbarBinding;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->rootView:Landroid/widget/LinearLayout;

    .line 88
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->armAngleScaleBar:Lcom/qianhe/yct/view/ArmAngleScaleBarView;

    .line 89
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->cvStep:Landroidx/cardview/widget/CardView;

    .line 90
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->ivStep:Lcom/qianhe/yct/view/NightAwareImageView;

    .line 91
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->lltElevations:Landroid/widget/LinearLayout;

    .line 92
    iput-object p6, p0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->lltErrors:Landroid/widget/LinearLayout;

    .line 93
    iput-object p7, p0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->lltProgress:Landroid/widget/LinearLayout;

    .line 94
    iput-object p8, p0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->nsvResult:Landroidx/core/widget/NestedScrollView;

    .line 95
    iput-object p9, p0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->nsvStepText:Landroidx/core/widget/NestedScrollView;

    .line 96
    iput-object p10, p0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    .line 97
    iput-object p11, p0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvArmAngleBestTip:Landroid/widget/TextView;

    .line 98
    iput-object p12, p0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvCalibrationPointInput:Landroidx/appcompat/widget/AppCompatTextView;

    .line 99
    iput-object p13, p0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvCommonTips:Landroid/widget/TextView;

    .line 100
    iput-object p14, p0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvHeadingError:Landroid/widget/TextView;

    .line 101
    iput-object p15, p0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvNext:Landroid/widget/TextView;

    move-object/from16 p1, p16

    .line 102
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvPrevious:Landroid/widget/TextView;

    move-object/from16 p1, p17

    .line 103
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvResultHint:Landroid/widget/TextView;

    move-object/from16 p1, p18

    .line 104
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvStepAction:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;
    .locals 22

    move-object/from16 v0, p0

    .line 134
    sget v1, Lcom/qianhe/yct/R$id;->armAngleScaleBar:I

    .line 135
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/qianhe/yct/view/ArmAngleScaleBarView;

    if-eqz v5, :cond_0

    .line 140
    sget v1, Lcom/qianhe/yct/R$id;->cvStep:I

    .line 141
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/cardview/widget/CardView;

    if-eqz v6, :cond_0

    .line 146
    sget v1, Lcom/qianhe/yct/R$id;->ivStep:I

    .line 147
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/qianhe/yct/view/NightAwareImageView;

    if-eqz v7, :cond_0

    .line 152
    sget v1, Lcom/qianhe/yct/R$id;->lltElevations:I

    .line 153
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 158
    sget v1, Lcom/qianhe/yct/R$id;->lltErrors:I

    .line 159
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 164
    sget v1, Lcom/qianhe/yct/R$id;->lltProgress:I

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    .line 170
    sget v1, Lcom/qianhe/yct/R$id;->nsvResult:I

    .line 171
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/core/widget/NestedScrollView;

    if-eqz v11, :cond_0

    .line 176
    sget v1, Lcom/qianhe/yct/R$id;->nsvStepText:I

    .line 177
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/core/widget/NestedScrollView;

    if-eqz v12, :cond_0

    .line 182
    sget v1, Lcom/qianhe/yct/R$id;->topBar:I

    .line 183
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 187
    invoke-static {v2}, Lcom/qianhe/yct/databinding/TopbarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TopbarBinding;

    move-result-object v13

    .line 189
    sget v1, Lcom/qianhe/yct/R$id;->tvArmAngleBestTip:I

    .line 190
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 195
    sget v1, Lcom/qianhe/yct/R$id;->tvCalibrationPointInput:I

    .line 196
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v15, :cond_0

    .line 201
    sget v1, Lcom/qianhe/yct/R$id;->tvCommonTips:I

    .line 202
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 207
    sget v1, Lcom/qianhe/yct/R$id;->tvHeadingError:I

    .line 208
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 213
    sget v1, Lcom/qianhe/yct/R$id;->tvNext:I

    .line 214
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 219
    sget v1, Lcom/qianhe/yct/R$id;->tvPrevious:I

    .line 220
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 225
    sget v1, Lcom/qianhe/yct/R$id;->tvResultHint:I

    .line 226
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    .line 231
    sget v1, Lcom/qianhe/yct/R$id;->tvStepAction:I

    .line 232
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    .line 237
    new-instance v3, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v21}, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;-><init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/ArmAngleScaleBarView;Landroidx/cardview/widget/CardView;Lcom/qianhe/yct/view/NightAwareImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Landroidx/core/widget/NestedScrollView;Lcom/qianhe/yct/databinding/TopbarBinding;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    .line 242
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 243
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 115
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;
    .locals 2

    .line 121
    sget v0, Lcom/qianhe/yct/R$layout;->activity_verrify_accuracy:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 123
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 125
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
