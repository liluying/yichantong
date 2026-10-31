.class public abstract Lcom/qianhe/yct/dialog/ActualImageDialogHelper;
.super Ljava/lang/Object;
.source "ActualImageDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$G1AyrKzoyWuprY0QQ5ko4jm0-hI(Landroid/widget/HorizontalScrollView;Landroid/widget/LinearLayout;Ljava/util/List;Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;Ljava/util/LinkedHashMap;Landroid/view/View;)V
    .locals 0

    .line 117
    invoke-virtual {p5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 118
    invoke-static {p0, p1, p2, p5}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper;->selectGroupButton(Landroid/widget/HorizontalScrollView;Landroid/widget/LinearLayout;Ljava/util/List;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p4, p5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {p3, p0}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->switchGroup(Ljava/util/List;)V

    .line 120
    invoke-virtual {p3}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->resumeAutoScroll()V

    return-void
.end method

.method public static synthetic $r8$lambda$IUIu3PGLQBIDj2vNE7QXJeS1Gbw(Landroid/widget/HorizontalScrollView;Landroid/widget/LinearLayout;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 126
    invoke-static {p0, p1, p2, p3}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper;->selectGroupButton(Landroid/widget/HorizontalScrollView;Landroid/widget/LinearLayout;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$La3_Zimv3IzF75CmmQxYtnkrRe8(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 75
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$TD49IdTq6Hf-tzPYokhYlcX-ckc(Landroid/widget/HorizontalScrollView;Landroid/widget/LinearLayout;Ljava/lang/Runnable;)V
    .locals 4

    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v0, :cond_2

    if-gtz v1, :cond_0

    goto :goto_1

    .line 172
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x2

    .line 173
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 174
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    if-ge v1, v0, :cond_1

    sub-int/2addr v0, v1

    .line 176
    div-int/lit8 v0, v0, 0x2

    .line 177
    invoke-virtual {p1, v0, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 181
    :goto_0
    invoke-virtual {p0, v2, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    if-eqz p2, :cond_3

    .line 183
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 168
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method public static synthetic $r8$lambda$V3TGb-IUwgCQ0dv6MaKAGXy5w-s(Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;Landroid/content/DialogInterface;)V
    .locals 0

    .line 135
    invoke-virtual {p0}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->stopAutoScroll()V

    return-void
.end method

.method public static synthetic $r8$lambda$wqSWSq8uX8Ja9rps0Q97WITwaf0(Landroid/view/View;Landroid/widget/HorizontalScrollView;Landroid/widget/LinearLayout;)V
    .locals 1

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 157
    invoke-virtual {p0, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    const/4 p0, 0x0

    .line 158
    invoke-virtual {p1, p2, v0, p0}, Landroid/widget/HorizontalScrollView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smcalculateImageHeight(Landroid/content/Context;III)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper;->calculateImageHeight(Landroid/content/Context;III)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smdp(Landroid/content/Context;I)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper;->dp(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method private static calculateImageHeight(Landroid/content/Context;III)I
    .locals 1

    .line 343
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 347
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 348
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    if-lez v0, :cond_3

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    int-to-float p1, p2

    int-to-float p0, p0

    int-to-float p2, v0

    div-float/2addr p0, p2

    mul-float p1, p1, p0

    float-to-int p0, p1

    if-lez p3, :cond_2

    .line 354
    invoke-static {p0, p3}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_2
    return p0

    :cond_3
    :goto_0
    return p1
.end method

.method private static calculateMaxPagerHeight(Landroid/content/Context;ZIZ)I
    .locals 3

    const/16 v0, 0x1e

    .line 331
    invoke-static {p0, v0}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper;->dp(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x37

    invoke-static {p0, v1}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper;->dp(Landroid/content/Context;I)I

    move-result v2

    add-int/2addr v0, v2

    if-eqz p3, :cond_0

    .line 333
    invoke-static {p0, v1}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper;->dp(Landroid/content/Context;I)I

    move-result p3

    add-int/2addr v0, p3

    :cond_0
    const/16 p3, 0x14

    .line 335
    invoke-static {p0, p3}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper;->dp(Landroid/content/Context;I)I

    move-result p3

    add-int/2addr v0, p3

    sub-int p3, p2, v0

    if-eqz p1, :cond_1

    const p1, 0x3ee66666    # 0.45f

    goto :goto_0

    :cond_1
    const p1, 0x3f266666    # 0.65f

    :goto_0
    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p1, p2

    const/16 p2, 0x78

    .line 339
    invoke-static {p0, p2}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper;->dp(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static centerGroupButtons(Landroid/widget/HorizontalScrollView;Landroid/widget/LinearLayout;Ljava/lang/Runnable;)V
    .locals 1

    .line 163
    new-instance v0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$$ExternalSyntheticLambda4;-><init>(Landroid/widget/HorizontalScrollView;Landroid/widget/LinearLayout;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static dp(Landroid/content/Context;I)I
    .locals 1

    int-to-float p1, p1

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 189
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private static scrollGroupButtonIntoView(Landroid/widget/HorizontalScrollView;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 1

    .line 155
    new-instance v0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2, p0, p1}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$$ExternalSyntheticLambda5;-><init>(Landroid/view/View;Landroid/widget/HorizontalScrollView;Landroid/widget/LinearLayout;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static selectGroupButton(Landroid/widget/HorizontalScrollView;Landroid/widget/LinearLayout;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/HorizontalScrollView;",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 142
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 143
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 144
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 150
    invoke-static {p0, p1, v0}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper;->scrollGroupButtonIntoView(Landroid/widget/HorizontalScrollView;Landroid/widget/LinearLayout;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public static showCarousel(Landroid/content/Context;Landroid/content/res/Configuration;Ljava/util/LinkedHashMap;Ljava/lang/String;Z)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/res/Configuration;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v6, p4

    .line 43
    new-instance v7, Landroid/app/Dialog;

    invoke-direct {v7, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/qianhe/yct/R$layout;->dialog_actual_image:I

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    sget v2, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 46
    invoke-virtual {v7, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v9, 0x1

    .line 47
    invoke-virtual {v7, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 48
    invoke-virtual {v7, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 50
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 51
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v4, p1

    .line 52
    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    const/4 v10, 0x0

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    int-to-float v2, v2

    if-eqz v4, :cond_1

    const v5, 0x3f19999a    # 0.6f

    goto :goto_1

    :cond_1
    const v5, 0x3f666666    # 0.9f

    :goto_1
    mul-float v2, v2, v5

    float-to-int v2, v2

    .line 54
    invoke-static {v1, v4, v3, v6}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper;->calculateMaxPagerHeight(Landroid/content/Context;ZIZ)I

    move-result v5

    .line 56
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v11, -0x2

    if-eqz v3, :cond_2

    .line 58
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 59
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 60
    iput v11, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 61
    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v4, 0x106000d

    .line 62
    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 65
    :cond_2
    sget v3, Lcom/qianhe/yct/R$id;->viewPager:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/viewpager2/widget/ViewPager2;

    .line 66
    sget v4, Lcom/qianhe/yct/R$id;->hsvImageGroups:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Landroid/widget/HorizontalScrollView;

    .line 67
    sget v4, Lcom/qianhe/yct/R$id;->lltImageGroups:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroid/widget/LinearLayout;

    .line 68
    sget v4, Lcom/qianhe/yct/R$id;->lltPageIndicator:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 69
    sget v12, Lcom/qianhe/yct/R$id;->gifIv:I

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v15, 0x8

    invoke-virtual {v12, v15}, Landroid/view/View;->setVisibility(I)V

    .line 70
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 72
    sget v12, Lcom/qianhe/yct/R$id;->tvCancel:I

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v15}, Landroid/view/View;->setVisibility(I)V

    .line 73
    sget v12, Lcom/qianhe/yct/R$id;->tvSure:I

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    sget v12, Lcom/qianhe/yct/R$string;->close:I

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(I)V

    .line 75
    new-instance v12, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$$ExternalSyntheticLambda0;

    invoke-direct {v12, v7}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$$ExternalSyntheticLambda0;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual/range {p2 .. p3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v12, p3

    :goto_2
    move-object/from16 v0, p2

    goto :goto_3

    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    goto :goto_2

    .line 78
    :goto_3
    invoke-virtual {v0, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Ljava/util/List;

    .line 80
    new-instance v11, Lcom/qianhe/yct/adapter/ActualImageGifAdapter;

    invoke-direct {v11}, Lcom/qianhe/yct/adapter/ActualImageGifAdapter;-><init>()V

    if-eqz v8, :cond_4

    .line 81
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_4

    const/16 v15, 0x1e

    .line 82
    invoke-static {v1, v15}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper;->dp(Landroid/content/Context;I)I

    move-result v15

    sub-int/2addr v2, v15

    .line 83
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v1, v15, v2, v5}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper;->calculateImageHeight(Landroid/content/Context;III)I

    move-result v2

    if-lez v2, :cond_4

    .line 85
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    iput v2, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 88
    :cond_4
    invoke-virtual {v3, v11}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 90
    new-instance v0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;

    move-object v2, v3

    move-object v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;-><init>(Landroid/content/Context;Landroidx/viewpager2/widget/ViewPager2;Lcom/qianhe/yct/adapter/ActualImageGifAdapter;Landroid/widget/LinearLayout;I)V

    .line 92
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_7

    .line 94
    invoke-virtual/range {p2 .. p2}, Ljava/util/AbstractMap;->size()I

    move-result v2

    if-le v2, v9, :cond_7

    .line 95
    invoke-virtual {v13, v10}, Landroid/view/View;->setVisibility(I)V

    .line 96
    invoke-virtual {v13, v10}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/16 v2, 0x8

    .line 97
    invoke-static {v1, v2}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper;->dp(Landroid/content/Context;I)I

    move-result v2

    const/16 v3, 0xc

    .line 98
    invoke-static {v1, v3}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper;->dp(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, 0x6

    .line 99
    invoke-static {v1, v4}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper;->dp(Landroid/content/Context;I)I

    move-result v4

    .line 101
    invoke-virtual/range {p2 .. p2}, Ljava/util/AbstractMap;->size()I

    move-result v5

    .line 102
    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    const/16 v18, 0x1

    .line 103
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v9, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v16, v0

    .line 104
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 p3, v5

    const/4 v5, -0x2

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    add-int/lit8 v5, p3, -0x1

    if-ge v10, v5, :cond_5

    .line 106
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 108
    :cond_5
    invoke-virtual {v9, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v10, v10, 0x1

    .line 110
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v9, v3, v4, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 112
    sget v0, Lcom/qianhe/yct/R$drawable;->sel_theme_border_and_white:I

    invoke-virtual {v9, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 113
    sget v0, Lcom/qianhe/yct/R$color;->sel_theme_color:I

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/high16 v0, 0x41800000    # 16.0f

    const/4 v5, 0x1

    .line 114
    invoke-virtual {v9, v5, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 115
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v12

    .line 116
    new-instance v12, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$$ExternalSyntheticLambda1;

    move-object/from16 v17, p2

    invoke-direct/range {v12 .. v17}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$$ExternalSyntheticLambda1;-><init>(Landroid/widget/HorizontalScrollView;Landroid/widget/LinearLayout;Ljava/util/List;Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;Ljava/util/LinkedHashMap;)V

    move-object/from16 v11, v16

    invoke-virtual {v9, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-virtual {v14, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 123
    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v5, p3

    move-object v12, v0

    move-object v0, v11

    const/4 v9, 0x1

    goto :goto_4

    :cond_6
    move-object v11, v0

    move-object v0, v12

    .line 125
    new-instance v1, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, v13, v14, v15, v0}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$$ExternalSyntheticLambda2;-><init>(Landroid/widget/HorizontalScrollView;Landroid/widget/LinearLayout;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v13, v14, v1}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper;->centerGroupButtons(Landroid/widget/HorizontalScrollView;Landroid/widget/LinearLayout;Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_7
    move-object v11, v0

    move-object v0, v12

    const/16 v2, 0x8

    .line 128
    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    .line 129
    invoke-static {v1, v1, v15, v0}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper;->selectGroupButton(Landroid/widget/HorizontalScrollView;Landroid/widget/LinearLayout;Ljava/util/List;Ljava/lang/String;)V

    .line 132
    :goto_5
    invoke-virtual {v11, v8}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->switchGroup(Ljava/util/List;)V

    .line 133
    invoke-virtual {v11}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->startAutoScroll()V

    .line 135
    new-instance v0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$$ExternalSyntheticLambda3;

    invoke-direct {v0, v11}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;)V

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 136
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    return-void
.end method
