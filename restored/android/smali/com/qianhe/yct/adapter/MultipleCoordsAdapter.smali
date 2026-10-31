.class public Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MultipleCoordsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;,
        Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final activity:Landroidx/fragment/app/FragmentActivity;

.field private final editState:I

.field private highlightInsertIndex:I

.field private insertPopupWindow:Landroid/widget/PopupWindow;

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation
.end field

.field private onActionListener:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener;

.field private final segmentRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private showSegmentRatio:Z

.field private updatingRatioUi:Z


# direct methods
.method public static synthetic $r8$lambda$6onFQOjTxpHbYj9EvLjXyyPX-kc(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;)V
    .locals 1

    const/4 v0, 0x0

    .line 260
    iput-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->insertPopupWindow:Landroid/widget/PopupWindow;

    return-void
.end method

.method public static synthetic $r8$lambda$70H49SFwmqj-ju-oB7Ms0NxEdRw(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;ILandroid/view/View;)V
    .locals 0

    .line 247
    invoke-direct {p0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->dismissInsertPopup()V

    .line 248
    iget-object p0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->onActionListener:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener;

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    .line 249
    invoke-interface {p0, p1, p2}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener;->onInsert(IZ)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$B4UMWCj3IQe3gMTA25GzU5s7mWE(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;ILandroid/view/View;)V
    .locals 0

    .line 235
    invoke-direct {p0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->dismissInsertPopup()V

    .line 236
    iget-object p0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->onActionListener:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener;

    if-eqz p0, :cond_0

    const/4 p2, 0x1

    .line 237
    invoke-interface {p0, p1, p2}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener;->onInsert(IZ)V

    :cond_0
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetactivity(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteditState(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->editState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmList(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->mList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;)Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->onActionListener:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsegmentRatios(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->segmentRatios:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetupdatingRatioUi(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->updatingRatioUi:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputhighlightInsertIndex(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->highlightInsertIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowInsertPopup(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->showInsertPopup(Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/util/List<",
            "[D>;I)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->segmentRatios:Ljava/util/List;

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->highlightInsertIndex:I

    .line 55
    iput-object p1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 56
    iput-object p2, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->mList:Ljava/util/List;

    .line 57
    iput p3, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->editState:I

    return-void
.end method

.method private dismissInsertPopup()V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->insertPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->insertPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 272
    iput-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->insertPopupWindow:Landroid/widget/PopupWindow;

    return-void
.end method

.method private formatRatio(D)Ljava/lang/String;
    .locals 2

    .line 277
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    const-string p1, "%.3f"

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 278
    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 279
    const-string p2, "0+$"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\.$"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private showInsertPopup(Landroid/view/View;I)V
    .locals 10

    .line 225
    invoke-direct {p0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->dismissInsertPopup()V

    .line 226
    iget-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$layout;->popup_window:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 227
    sget v1, Lcom/qianhe/yct/R$id;->container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 229
    iget-object v2, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$layout;->item_dropdown:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u200e"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    sget v7, Lcom/qianhe/yct/R$string;->insert_point_above:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x3

    .line 231
    invoke-virtual {v2, v3}, Landroid/view/View;->setTextDirection(I)V

    const/4 v6, 0x1

    .line 232
    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    .line 233
    sget v7, Lcom/qianhe/yct/R$drawable;->bg_ripple_round_white:I

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 234
    new-instance v7, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, p2}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;I)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v7, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lcom/qianhe/yct/R$layout;->item_dropdown:I

    invoke-virtual {v7, v8, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 242
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    sget v9, Lcom/qianhe/yct/R$string;->insert_point_below:I

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {v7, v3}, Landroid/view/View;->setTextDirection(I)V

    .line 244
    invoke-virtual {v7, v6}, Landroid/view/View;->setClickable(Z)V

    .line 245
    sget v3, Lcom/qianhe/yct/R$drawable;->bg_ripple_round_white:I

    invoke-virtual {v7, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 246
    new-instance v3, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p2}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;I)V

    invoke-virtual {v7, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 254
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 256
    new-instance p2, Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1, v1, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object p2, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->insertPopupWindow:Landroid/widget/PopupWindow;

    .line 257
    invoke-virtual {p2, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 258
    iget-object p2, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->insertPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    sget v2, Lcom/qianhe/yct/R$drawable;->bg_round_white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    iget-object p2, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->insertPopupWindow:Landroid/widget/PopupWindow;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {p2, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 260
    iget-object p2, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->insertPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;)V

    invoke-virtual {p2, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 262
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/view/View;->measure(II)V

    .line 263
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 265
    iget-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->insertPopupWindow:Landroid/widget/PopupWindow;

    const v1, 0x800003

    invoke-virtual {v0, p1, p2, v4, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method public addCoords([D)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-virtual {p0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->syncSegmentRatioSize()V

    const/4 p1, -0x1

    .line 299
    iput p1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->highlightInsertIndex:I

    .line 300
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 342
    iget-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->segmentRatios:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, -0x1

    .line 343
    iput v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->highlightInsertIndex:I

    .line 344
    invoke-direct {p0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->dismissInsertPopup()V

    .line 345
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSegmentRatios()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->segmentRatios:Ljava/util/List;

    return-object v0
.end method

.method public insertCoords(I[DZ)V
    .locals 3

    if-ltz p1, :cond_4

    .line 313
    iget-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 317
    iget-object v1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const-wide/16 v1, 0x0

    if-nez p1, :cond_1

    .line 320
    iget-object p2, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->segmentRatios:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const/4 v0, 0x0

    invoke-interface {p2, v0, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-lt p1, v0, :cond_2

    .line 323
    iget-object p2, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->segmentRatios:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 328
    iget-object p2, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->segmentRatios:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 331
    :cond_3
    iget-object p2, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->segmentRatios:Ljava/util/List;

    add-int/lit8 p3, p1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 334
    :goto_0
    invoke-virtual {p0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->syncSegmentRatioSize()V

    .line 336
    iput p1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->highlightInsertIndex:I

    .line 337
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    :goto_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 41
    check-cast p1, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;I)V
    .locals 8
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 122
    const-string v2, "P%s(%s)"

    const/4 v3, 0x1

    if-nez p2, :cond_0

    .line 123
    iget-object v4, p1, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;->tvCoordinate:Landroid/widget/TextView;

    add-int/lit8 v5, p2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    sget v7, Lcom/qianhe/yct/R$string;->starting_point:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v1

    aput-object v6, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object v4, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->mList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne p2, v4, :cond_1

    .line 125
    iget-object v4, p1, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;->tvCoordinate:Landroid/widget/TextView;

    add-int/lit8 v5, p2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    sget v7, Lcom/qianhe/yct/R$string;->ending_point:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v1

    aput-object v6, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p1, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;->tvCoordinate:Landroid/widget/TextView;

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const-string v2, "P%s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :goto_0
    iget-object v0, p1, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;->tvCoordinate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 131
    iget v4, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->highlightInsertIndex:I

    if-ne p2, v4, :cond_2

    sget v4, Lcom/qianhe/yct/R$color;->theme:I

    goto :goto_1

    :cond_2
    sget v4, Lcom/qianhe/yct/R$color;->text_black:I

    .line 130
    :goto_1
    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v0, p1, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;->tvModify:Landroid/widget/TextView;

    iget v2, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->editState:I

    const/16 v4, 0x8

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v0, p1, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;->ivDel:Landroid/widget/ImageView;

    iget v2, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->editState:I

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v0, p1, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;->ivDel:Landroid/widget/ImageView;

    new-instance v2, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;-><init>(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p1, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;->item:Landroid/view/View;

    new-instance v2, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$2;

    invoke-direct {v2, p0, p1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$2;-><init>(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p1, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;->item:Landroid/view/View;

    new-instance v2, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$3;

    invoke-direct {v2, p0, p1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$3;-><init>(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 182
    iget-boolean v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->showSegmentRatio:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-ge p2, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    .line 183
    :goto_4
    iget-object v2, p1, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;->lltSegmentRatio:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    const/4 v4, 0x0

    :cond_6
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v2, p1, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;->ratioWatcher:Landroid/text/TextWatcher;

    if-eqz v2, :cond_7

    .line 185
    iget-object v4, p1, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;->edtSegmentRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_7
    if-eqz v0, :cond_a

    .line 188
    invoke-virtual {p0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->syncSegmentRatioSize()V

    .line 189
    iget-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->segmentRatios:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    .line 190
    iget-object v0, p1, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;->edtSegmentRatio:Lcom/qianhe/yct/view/NumericEditText;

    iget v2, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->editState:I

    if-nez v2, :cond_8

    const/4 v2, 0x1

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 191
    iput-boolean v3, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->updatingRatioUi:Z

    if-nez p2, :cond_9

    .line 193
    iget-object p2, p1, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;->edtSegmentRatio:Lcom/qianhe/yct/view/NumericEditText;

    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 195
    :cond_9
    iget-object v0, p1, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;->edtSegmentRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->formatRatio(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :goto_6
    iput-boolean v1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->updatingRatioUi:Z

    .line 198
    new-instance p2, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$4;

    invoke-direct {p2, p0, p1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$4;-><init>(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;)V

    iput-object p2, p1, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;->ratioWatcher:Landroid/text/TextWatcher;

    .line 220
    iget-object p1, p1, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;->edtSegmentRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_a
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;
    .locals 2

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$layout;->item_polyline_coords:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 117
    new-instance p2, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;

    invoke-direct {p2, p1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setOnActionListener(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->onActionListener:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener;

    return-void
.end method

.method public setSegmentRatio(ILjava/lang/Double;)V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->syncSegmentRatioSize()V

    if-ltz p1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->segmentRatios:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->segmentRatios:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    .line 101
    iput-boolean p2, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->updatingRatioUi:Z

    .line 102
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    const/4 p1, 0x0

    .line 103
    iput-boolean p1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->updatingRatioUi:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setSegmentRatios(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->segmentRatios:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->segmentRatios:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->syncSegmentRatioSize()V

    const/4 p1, 0x1

    .line 90
    iput-boolean p1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->updatingRatioUi:Z

    .line 91
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 p1, 0x0

    .line 92
    iput-boolean p1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->updatingRatioUi:Z

    return-void
.end method

.method public setShowSegmentRatio(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->showSegmentRatio:Z

    .line 62
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public syncSegmentRatioSize()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->segmentRatios:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->segmentRatios:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->segmentRatios:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 80
    iget-object v1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->segmentRatios:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method
