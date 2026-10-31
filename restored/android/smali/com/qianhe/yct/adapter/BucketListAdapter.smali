.class public Lcom/qianhe/yct/adapter/BucketListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BucketListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;,
        Lcom/qianhe/yct/adapter/BucketListAdapter$OnActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private calibParamsId:Ljava/lang/String;

.field private currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private currentName:Ljava/lang/String;

.field private currentParam:Ljava/lang/String;

.field private final format:Ljava/text/SimpleDateFormat;

.field private final idStrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isMultiple:Z

.field private final mActivity:Landroidx/appcompat/app/AppCompatActivity;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ShovelEntity;",
            ">;"
        }
    .end annotation
.end field

.field private onActionListener:Lcom/qianhe/yct/adapter/BucketListAdapter$OnActionListener;

.field private showSelUi:Z


# direct methods
.method public static synthetic $r8$lambda$2B2l0cgbrYw3xgCkZ36-dwHHbWY(Lcom/qianhe/yct/adapter/BucketListAdapter;Lcom/qianhe/baselib/bean/ShovelEntity;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/BucketListAdapter$OnActionListener;

    if-eqz p0, :cond_0

    const/4 p3, 0x2

    .line 131
    invoke-interface {p0, p3, p1}, Lcom/qianhe/yct/adapter/BucketListAdapter$OnActionListener;->onMenuAction(ILcom/qianhe/baselib/bean/ShovelEntity;)V

    .line 133
    :cond_0
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$asKOQFCsTADNxhI_5rY_vQg-Azs(Lcom/qianhe/yct/adapter/BucketListAdapter;Lcom/qianhe/baselib/bean/ShovelEntity;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 2

    .line 120
    iget-object p3, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->idStrList:Ljava/util/List;

    .line 120
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 121
    iget-object p3, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->idStrList:Ljava/util/List;

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object p3, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/BucketListAdapter$OnActionListener;

    if-eqz p3, :cond_0

    .line 123
    iget-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {p3, v0}, Lcom/qianhe/yct/adapter/BucketListAdapter$OnActionListener;->onSelItem(Ljava/util/List;)V

    .line 124
    iget-object p0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/BucketListAdapter$OnActionListener;

    const/4 p3, 0x1

    invoke-interface {p0, p3, p1}, Lcom/qianhe/yct/adapter/BucketListAdapter$OnActionListener;->onMenuAction(ILcom/qianhe/baselib/bean/ShovelEntity;)V

    .line 126
    :cond_0
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$pqPOcCmazo4DMVjk1lUfQ0vjSBc(Lcom/qianhe/yct/adapter/BucketListAdapter;Lcom/qianhe/baselib/bean/ShovelEntity;Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;Landroid/view/View;)V
    .locals 2

    .line 85
    iget-boolean p3, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->showSelUi:Z

    if-nez p3, :cond_0

    .line 86
    iget-object p0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/BucketListAdapter$OnActionListener;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1}, Lcom/qianhe/yct/adapter/BucketListAdapter$OnActionListener;->onClick(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    return-void

    .line 88
    :cond_0
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 89
    iget-object p2, p2, Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;->ivSel:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result p2

    if-nez p2, :cond_2

    .line 90
    iget-boolean p2, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->isMultiple:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 91
    :cond_1
    iget-object p2, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_2
    iget-object p2, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_3

    iget-object p2, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 95
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 96
    iget-object p1, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/BucketListAdapter$OnActionListener;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/qianhe/yct/adapter/BucketListAdapter$OnActionListener;->onSelItem(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public static synthetic $r8$lambda$rl0oRRH5-7JJHjk6PvIisxLmhns(Lcom/qianhe/yct/adapter/BucketListAdapter;Lcom/qianhe/baselib/bean/ShovelEntity;Landroid/view/View;)Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->showSelUi:Z

    if-nez v0, :cond_0

    .line 102
    invoke-direct {p0, p2, p1}, Lcom/qianhe/yct/adapter/BucketListAdapter;->showPopupMenu(Landroid/view/View;Lcom/qianhe/baselib/bean/ShovelEntity;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ShovelEntity;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->format:Ljava/text/SimpleDateFormat;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->idStrList:Ljava/util/List;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->currentName:Ljava/lang/String;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->currentParam:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->calibParamsId:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 50
    iput-object p2, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->mData:Ljava/util/List;

    return-void
.end method

.method private selectCurrentItem()V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->currentName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->currentParam:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 195
    iget-object v2, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->currentName:Ljava/lang/String;

    iget-object v3, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->currentParam:Ljava/lang/String;

    iget-object v3, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    iget-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->idStrList:Ljava/util/List;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private shouldAppendFineTuneSuffix(Lcom/qianhe/baselib/bean/ShovelEntity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 281
    iget-object v1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParams:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    invoke-static {p2, p3}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper;->alreadyHasFineTuneMark(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    .line 287
    :cond_1
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getAutoGenerateParamsObj()Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->useDistanceMeasure:Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private showPopupMenu(Landroid/view/View;Lcom/qianhe/baselib/bean/ShovelEntity;)V
    .locals 8

    .line 110
    iget-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$layout;->popup_bucket_menu:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 111
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 113
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 114
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v2, 0x41200000    # 10.0f

    .line 116
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 119
    sget v2, Lcom/qianhe/yct/R$id;->tvDelete:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/qianhe/yct/adapter/BucketListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, p2, v1}, Lcom/qianhe/yct/adapter/BucketListAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/adapter/BucketListAdapter;Lcom/qianhe/baselib/bean/ShovelEntity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    sget v2, Lcom/qianhe/yct/R$id;->tvModify:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/qianhe/yct/adapter/BucketListAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, p2, v1}, Lcom/qianhe/yct/adapter/BucketListAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/adapter/BucketListAdapter;Lcom/qianhe/baselib/bean/ShovelEntity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    invoke-virtual {v0, v4, v4}, Landroid/view/View;->measure(II)V

    .line 138
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 139
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/4 v2, 0x2

    .line 141
    new-array v5, v2, [I

    .line 142
    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 143
    aget v3, v5, v3

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 145
    iget-object v6, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v6}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v7, p2

    div-int/2addr v7, v2

    add-int/2addr v3, v5

    add-int/2addr v3, v0

    add-int/lit16 v6, v6, -0x96

    if-le v3, v6, :cond_0

    neg-int p2, v0

    sub-int v4, p2, v5

    :cond_0
    const p2, 0x800003

    .line 158
    invoke-virtual {v1, p1, v7, v4, p2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method public clearCurrentParam()V
    .locals 1

    .line 251
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->calibParamsId:Ljava/lang/String;

    .line 252
    iput-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->currentName:Ljava/lang/String;

    .line 253
    iput-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->currentParam:Ljava/lang/String;

    .line 254
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public closeSelUi()V
    .locals 1

    const/4 v0, 0x0

    .line 203
    iput-boolean v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->showSelUi:Z

    .line 204
    iget-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 205
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isCurrentUsage(Lcom/qianhe/baselib/bean/ShovelEntity;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 215
    iget-object v1, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->calibParamsId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->calibParamsId:Ljava/lang/String;

    iget-object v2, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v1, v2}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->supportsBucketCurrentUsage(Ljava/lang/String;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 221
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->calibParamsId:Ljava/lang/String;

    iget-object v2, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->mData:Ljava/util/List;

    iget-object v3, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v1, v2, v3}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->matchBucketFromList(Ljava/lang/String;Ljava/util/List;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object v1

    if-nez v1, :cond_2

    .line 223
    iget-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->calibParamsId:Ljava/lang/String;

    iget-object v1, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v0, p1, v1}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->matchesBucket(Ljava/lang/String;Lcom/qianhe/baselib/bean/ShovelEntity;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z

    move-result p1

    return p1

    .line 225
    :cond_2
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-lez v7, :cond_4

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    cmp-long v9, v7, v5

    if-lez v9, :cond_4

    cmp-long p1, v2, v7

    if-nez p1, :cond_3

    return v4

    :cond_3
    return v0

    .line 228
    :cond_4
    iget-object v2, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v4

    :cond_5
    :goto_0
    return v0
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

    .line 37
    check-cast p1, Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/BucketListAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;I)V
    .locals 5
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 62
    iget-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 63
    iget-object v0, p1, Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/qianhe/yct/utils/ConfigLayoutHelper;->applyLocaleNameStyle(Landroid/widget/TextView;)V

    .line 64
    iget-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper;->fineTuneNameMark(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p2, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 67
    :goto_0
    invoke-direct {p0, p2, v1, v0}, Lcom/qianhe/yct/adapter/BucketListAdapter;->shouldAppendFineTuneSuffix(Lcom/qianhe/baselib/bean/ShovelEntity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    :cond_1
    iget-object v0, p1, Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-wide v0, p2, Lcom/qianhe/baselib/bean/ShovelEntity;->createTime:J

    .line 72
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 73
    :cond_2
    iget-object v2, p1, Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;->tvTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->format:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p1, Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;->ivSel:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->idStrList:Ljava/util/List;

    iget-wide v2, p2, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 76
    iget-object v0, p1, Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;->fltSel:Landroid/view/View;

    iget-boolean v1, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->showSelUi:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object v0, p1, Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;->tvCurrentUse:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/qianhe/yct/adapter/BucketListAdapter;->isCurrentUsage(Lcom/qianhe/baselib/bean/ShovelEntity;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v0, p1, Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;->ivSensor:Landroid/widget/ImageView;

    iget v1, p2, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    sget-object v4, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v4}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v4

    if-ne v1, v4, :cond_5

    const/4 v2, 0x0

    :cond_5
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    iget-object v0, p1, Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;->item:Landroid/view/View;

    new-instance v1, Lcom/qianhe/yct/adapter/BucketListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/qianhe/yct/adapter/BucketListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/adapter/BucketListAdapter;Lcom/qianhe/baselib/bean/ShovelEntity;Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object p1, p1, Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;->item:Landroid/view/View;

    new-instance v0, Lcom/qianhe/yct/adapter/BucketListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/adapter/BucketListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/adapter/BucketListAdapter;Lcom/qianhe/baselib/bean/ShovelEntity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/BucketListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;
    .locals 2

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$layout;->item_bucketlist:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 57
    new-instance p2, Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;

    invoke-direct {p2, p1}, Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public selecteAll(Z)V
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->mData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 170
    iget-object v1, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->idStrList:Ljava/util/List;

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 174
    iget-object p1, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/BucketListAdapter$OnActionListener;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/qianhe/yct/adapter/BucketListAdapter$OnActionListener;->onSelItem(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public setCurrentParam(Ljava/lang/String;Ljava/util/List;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ShovelEntity;",
            ">;",
            "Lcom/qianhe/baselib/bean/ExcavatorEntity;",
            ")V"
        }
    .end annotation

    .line 232
    iput-object p3, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 233
    invoke-static {p1, p3}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->supportsBucketCurrentUsage(Ljava/lang/String;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/qianhe/yct/adapter/BucketListAdapter;->clearCurrentParam()V

    return-void

    .line 237
    :cond_0
    const-string v0, ""

    if-eqz p1, :cond_1

    move-object v1, p1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->calibParamsId:Ljava/lang/String;

    .line 238
    iput-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->currentName:Ljava/lang/String;

    .line 239
    iput-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->currentParam:Ljava/lang/String;

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 241
    invoke-static {p1, p2, p3}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->matchBucketFromList(Ljava/lang/String;Ljava/util/List;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 243
    iget-object p2, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->currentName:Ljava/lang/String;

    .line 244
    iget-object p1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    iput-object p1, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->currentParam:Ljava/lang/String;

    .line 247
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnActionListener(Lcom/qianhe/yct/adapter/BucketListAdapter$OnActionListener;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/BucketListAdapter$OnActionListener;

    return-void
.end method

.method public showSelUi(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/adapter/BucketListAdapter;->showSelUi(ZZ)V

    return-void
.end method

.method public showSelUi(ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->showSelUi:Z

    .line 183
    iput-boolean p1, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->isMultiple:Z

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 186
    invoke-direct {p0}, Lcom/qianhe/yct/adapter/BucketListAdapter;->selectCurrentItem()V

    .line 188
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 189
    iget-object p1, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/BucketListAdapter$OnActionListener;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/qianhe/yct/adapter/BucketListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {p1, p2}, Lcom/qianhe/yct/adapter/BucketListAdapter$OnActionListener;->onSelItem(Ljava/util/List;)V

    :cond_1
    return-void
.end method
