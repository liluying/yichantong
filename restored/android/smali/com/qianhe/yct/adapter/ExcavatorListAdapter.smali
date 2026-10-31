.class public Lcom/qianhe/yct/adapter/ExcavatorListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ExcavatorListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;,
        Lcom/qianhe/yct/adapter/ExcavatorListAdapter$OnActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private calibParamsId:Ljava/lang/String;

.field private deviceExcavatorName:Ljava/lang/String;

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
            "Lcom/qianhe/baselib/bean/ExcavatorEntity;",
            ">;"
        }
    .end annotation
.end field

.field private onActionListener:Lcom/qianhe/yct/adapter/ExcavatorListAdapter$OnActionListener;

.field private showSelUi:Z


# direct methods
.method public static synthetic $r8$lambda$I5xy8MUFHZgtFqcuYk_02xYCcRg(Lcom/qianhe/yct/adapter/ExcavatorListAdapter;Lcom/qianhe/baselib/bean/ExcavatorEntity;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ExcavatorListAdapter$OnActionListener;

    if-eqz p0, :cond_0

    const/4 p3, 0x2

    .line 130
    invoke-interface {p0, p3, p1}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$OnActionListener;->onMenuAction(ILcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 131
    :cond_0
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$xNcevctBXxElIQxTSGk6ht7Z0MM(Lcom/qianhe/yct/adapter/ExcavatorListAdapter;Lcom/qianhe/baselib/bean/ExcavatorEntity;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 2

    .line 124
    iget-object p3, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->idStrList:Ljava/util/List;

    .line 124
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->idStrList:Ljava/util/List;

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_0
    iget-object p3, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ExcavatorListAdapter$OnActionListener;

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {p3, v0}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$OnActionListener;->onSelItem(Ljava/util/List;)V

    .line 126
    :cond_1
    iget-object p0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ExcavatorListAdapter$OnActionListener;

    if-eqz p0, :cond_2

    const/4 p3, 0x1

    invoke-interface {p0, p3, p1}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$OnActionListener;->onMenuAction(ILcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 127
    :cond_2
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/ExcavatorListAdapter;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->idStrList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisMultiple(Lcom/qianhe/yct/adapter/ExcavatorListAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->isMultiple:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ExcavatorListAdapter;)Lcom/qianhe/yct/adapter/ExcavatorListAdapter$OnActionListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ExcavatorListAdapter$OnActionListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshowSelUi(Lcom/qianhe/yct/adapter/ExcavatorListAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->showSelUi:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowPopupMenu(Lcom/qianhe/yct/adapter/ExcavatorListAdapter;Landroid/view/View;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->showPopupMenu(Landroid/view/View;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ExcavatorEntity;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 46
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->format:Ljava/text/SimpleDateFormat;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->idStrList:Ljava/util/List;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->calibParamsId:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->deviceExcavatorName:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 55
    iput-object p2, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->mData:Ljava/util/List;

    return-void
.end method

.method private selectCurrentItem()V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 225
    invoke-virtual {p0, v1}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->isCurrentUsage(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->idStrList:Ljava/util/List;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private showPopupMenu(Landroid/view/View;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 8

    .line 115
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$layout;->popup_excavator_menu:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 116
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 118
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 119
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v2, 0x41200000    # 10.0f

    .line 120
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 123
    sget v2, Lcom/qianhe/yct/R$id;->tvDelete:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p2, v1}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/adapter/ExcavatorListAdapter;Lcom/qianhe/baselib/bean/ExcavatorEntity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    sget v2, Lcom/qianhe/yct/R$id;->tvDetails:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, p2, v1}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/adapter/ExcavatorListAdapter;Lcom/qianhe/baselib/bean/ExcavatorEntity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-virtual {v0, v4, v4}, Landroid/view/View;->measure(II)V

    .line 136
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 137
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/4 v2, 0x2

    .line 140
    new-array v5, v2, [I

    .line 141
    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 142
    aget v3, v5, v3

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 144
    iget-object v6, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v6}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 147
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

    .line 157
    invoke-virtual {v1, p1, v7, v4, p2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method public closeSelUi()V
    .locals 2

    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->showSelUi:Z

    .line 234
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 235
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ExcavatorListAdapter$OnActionListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$OnActionListener;->onSelItem(Ljava/util/List;)V

    .line 236
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isCurrentUsage(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->calibParamsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->calibParamsId:Ljava/lang/String;

    iget-object v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->deviceExcavatorName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->deviceExcavatorName:Ljava/lang/String;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->calibParamsId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->matchesExcavator(Ljava/lang/String;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z

    move-result p1

    return p1
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

    .line 43
    check-cast p1, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;I)V
    .locals 8
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 68
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 70
    iget-boolean v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->showSelUi:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->idStrList:Ljava/util/List;

    iget-wide v1, p2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->idStrList:Ljava/util/List;

    iget-wide v1, p2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ExcavatorListAdapter$OnActionListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$OnActionListener;->onSelItem(Ljava/util/List;)V

    .line 74
    :cond_1
    iget-object v0, p1, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/qianhe/yct/utils/ConfigLayoutHelper;->applyLocaleNameStyle(Landroid/widget/TextView;)V

    .line 75
    iget-object v0, p1, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-wide v0, p2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->createTime:J

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 77
    iget-object v1, p1, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;->tvTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->format:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    const/16 v4, 0xa

    if-ne v0, v4, :cond_2

    iget-wide v4, p2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->createTime:J

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    goto :goto_0

    :cond_2
    iget-wide v4, p2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->createTime:J

    :goto_0
    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p1, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;->ivSel:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->idStrList:Ljava/util/List;

    iget-wide v2, p2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 79
    iget-object v0, p1, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;->fltSel:Landroid/view/View;

    iget-boolean v1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->showSelUi:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object v0, p1, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;->tvCurrentUse:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->isCurrentUsage(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p1, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;->ivSensor:Landroid/widget/ImageView;

    iget v1, p2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v4, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v4}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v4

    if-ne v1, v4, :cond_5

    const/4 v2, 0x0

    :cond_5
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object v0, p1, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;->item:Landroid/view/View;

    new-instance v1, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$1;-><init>(Lcom/qianhe/yct/adapter/ExcavatorListAdapter;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object p1, p1, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;->item:Landroid/view/View;

    new-instance v0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$2;-><init>(Lcom/qianhe/yct/adapter/ExcavatorListAdapter;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;
    .locals 2

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$layout;->item_excavatorlist:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 63
    new-instance p2, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;

    invoke-direct {p2, p1}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public refreshIdStrList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 241
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 242
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public selecteAll(Z)V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->idStrList:Ljava/util/List;

    iget-object v1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 179
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ExcavatorListAdapter$OnActionListener;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$OnActionListener;->onSelItem(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public setCurrentExcavator(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ExcavatorEntity;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->calibParamsId:Ljava/lang/String;

    .line 204
    invoke-static {p1, p2}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->resolveExcavatorName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->deviceExcavatorName:Ljava/lang/String;

    .line 205
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnActionListener(Lcom/qianhe/yct/adapter/ExcavatorListAdapter$OnActionListener;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ExcavatorListAdapter$OnActionListener;

    return-void
.end method

.method public showSelUi(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->showSelUi(ZZ)V

    return-void
.end method

.method public showSelUi(ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->showSelUi:Z

    .line 214
    iput-boolean p1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->isMultiple:Z

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 216
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 217
    invoke-direct {p0}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->selectCurrentItem()V

    .line 219
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 220
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ExcavatorListAdapter$OnActionListener;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {p1, p2}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$OnActionListener;->onSelItem(Ljava/util/List;)V

    :cond_1
    return-void
.end method
