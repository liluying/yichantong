.class public Lcom/qianhe/yct/adapter/PointListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PointListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/adapter/PointListAdapter$MyViewHolder;,
        Lcom/qianhe/yct/adapter/PointListAdapter$OnActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
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
            "Lcom/qianhe/baselib/bean/PointlibEntity;",
            ">;"
        }
    .end annotation
.end field

.field private onActionListener:Lcom/qianhe/yct/adapter/PointListAdapter$OnActionListener;

.field private showSelUi:Z


# direct methods
.method public static synthetic $r8$lambda$gVySlhDqx5SqpWDNtn-xbRDH6bc(Lcom/qianhe/yct/adapter/PointListAdapter;Lcom/qianhe/baselib/bean/PointlibEntity;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/PointListAdapter$OnActionListener;

    if-eqz p0, :cond_0

    const/4 p3, 0x2

    .line 134
    invoke-interface {p0, p3, p1}, Lcom/qianhe/yct/adapter/PointListAdapter$OnActionListener;->onMenuAction(ILcom/qianhe/baselib/bean/PointlibEntity;)V

    .line 135
    :cond_0
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$rWnd-_XCU39uZ9AXkjRawv3X47o(Lcom/qianhe/yct/adapter/PointListAdapter;Lcom/qianhe/baselib/bean/PointlibEntity;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 2

    .line 128
    iget-object p3, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->idStrList:Ljava/util/List;

    .line 128
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->idStrList:Ljava/util/List;

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    iget-object p3, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/PointListAdapter$OnActionListener;

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {p3, v0}, Lcom/qianhe/yct/adapter/PointListAdapter$OnActionListener;->onSelItem(Ljava/util/List;)V

    .line 130
    :cond_1
    iget-object p0, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/PointListAdapter$OnActionListener;

    if-eqz p0, :cond_2

    const/4 p3, 0x1

    invoke-interface {p0, p3, p1}, Lcom/qianhe/yct/adapter/PointListAdapter$OnActionListener;->onMenuAction(ILcom/qianhe/baselib/bean/PointlibEntity;)V

    .line 131
    :cond_2
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/PointListAdapter;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->idStrList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisMultiple(Lcom/qianhe/yct/adapter/PointListAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->isMultiple:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/PointListAdapter;)Lcom/qianhe/yct/adapter/PointListAdapter$OnActionListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/PointListAdapter$OnActionListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshowSelUi(Lcom/qianhe/yct/adapter/PointListAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->showSelUi:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowPopupMenu(Lcom/qianhe/yct/adapter/PointListAdapter;Landroid/view/View;Lcom/qianhe/baselib/bean/PointlibEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/adapter/PointListAdapter;->showPopupMenu(Landroid/view/View;Lcom/qianhe/baselib/bean/PointlibEntity;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/PointlibEntity;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 43
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->format:Ljava/text/SimpleDateFormat;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->idStrList:Ljava/util/List;

    .line 49
    iput-object p1, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 50
    iput-object p2, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->mData:Ljava/util/List;

    return-void
.end method

.method private showPopupMenu(Landroid/view/View;Lcom/qianhe/baselib/bean/PointlibEntity;)V
    .locals 8

    .line 118
    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$layout;->popup_point_menu:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 119
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 122
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 123
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v2, 0x41200000    # 10.0f

    .line 124
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 127
    sget v2, Lcom/qianhe/yct/R$id;->tvDelete:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/qianhe/yct/adapter/PointListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p2, v1}, Lcom/qianhe/yct/adapter/PointListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/adapter/PointListAdapter;Lcom/qianhe/baselib/bean/PointlibEntity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    sget v2, Lcom/qianhe/yct/R$id;->tvModify:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/qianhe/yct/adapter/PointListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, p2, v1}, Lcom/qianhe/yct/adapter/PointListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/adapter/PointListAdapter;Lcom/qianhe/baselib/bean/PointlibEntity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {v0, v4, v4}, Landroid/view/View;->measure(II)V

    .line 140
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 141
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/4 v2, 0x2

    .line 144
    new-array v5, v2, [I

    .line 145
    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 146
    aget v3, v5, v3

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 148
    iget-object v6, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v6}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 151
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

    .line 161
    invoke-virtual {v1, p1, v7, v4, p2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method public closeSelUi()V
    .locals 2

    const/4 v0, 0x0

    .line 181
    iput-boolean v0, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->showSelUi:Z

    .line 182
    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 183
    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/PointListAdapter$OnActionListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/qianhe/yct/adapter/PointListAdapter$OnActionListener;->onSelItem(Ljava/util/List;)V

    .line 184
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

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

    .line 40
    check-cast p1, Lcom/qianhe/yct/adapter/PointListAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/PointListAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/PointListAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/qianhe/yct/adapter/PointListAdapter$MyViewHolder;I)V
    .locals 8
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 63
    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 65
    iget-boolean v0, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->showSelUi:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->idStrList:Ljava/util/List;

    iget-wide v1, p2, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->idStrList:Ljava/util/List;

    iget-wide v1, p2, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/PointListAdapter$OnActionListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/qianhe/yct/adapter/PointListAdapter$OnActionListener;->onSelItem(Ljava/util/List;)V

    .line 69
    :cond_1
    iget-object v0, p1, Lcom/qianhe/yct/adapter/PointListAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/qianhe/yct/utils/ConfigLayoutHelper;->applyLocaleNameStyle(Landroid/widget/TextView;)V

    .line 70
    iget-object v0, p1, Lcom/qianhe/yct/adapter/PointListAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-wide v0, p2, Lcom/qianhe/baselib/bean/PointlibEntity;->createTime:J

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 72
    iget-object v1, p1, Lcom/qianhe/yct/adapter/PointListAdapter$MyViewHolder;->tvTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->format:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    const/16 v4, 0xa

    if-ne v0, v4, :cond_2

    iget-wide v4, p2, Lcom/qianhe/baselib/bean/PointlibEntity;->createTime:J

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    goto :goto_0

    :cond_2
    iget-wide v4, p2, Lcom/qianhe/baselib/bean/PointlibEntity;->createTime:J

    :goto_0
    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p1, Lcom/qianhe/yct/adapter/PointListAdapter$MyViewHolder;->ivSel:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->idStrList:Ljava/util/List;

    iget-wide v2, p2, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 74
    iget-object v0, p1, Lcom/qianhe/yct/adapter/PointListAdapter$MyViewHolder;->fltSel:Landroid/view/View;

    iget-boolean v1, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->showSelUi:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v0, p1, Lcom/qianhe/yct/adapter/PointListAdapter$MyViewHolder;->item:Landroid/view/View;

    new-instance v1, Lcom/qianhe/yct/adapter/PointListAdapter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/qianhe/yct/adapter/PointListAdapter$1;-><init>(Lcom/qianhe/yct/adapter/PointListAdapter;Lcom/qianhe/baselib/bean/PointlibEntity;Lcom/qianhe/yct/adapter/PointListAdapter$MyViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p1, Lcom/qianhe/yct/adapter/PointListAdapter$MyViewHolder;->item:Landroid/view/View;

    new-instance v1, Lcom/qianhe/yct/adapter/PointListAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/qianhe/yct/adapter/PointListAdapter$2;-><init>(Lcom/qianhe/yct/adapter/PointListAdapter;Lcom/qianhe/baselib/bean/PointlibEntity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 102
    iget-object p1, p1, Lcom/qianhe/yct/adapter/PointListAdapter$MyViewHolder;->item:Landroid/view/View;

    new-instance v0, Lcom/qianhe/yct/adapter/PointListAdapter$3;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/adapter/PointListAdapter$3;-><init>(Lcom/qianhe/yct/adapter/PointListAdapter;Lcom/qianhe/baselib/bean/PointlibEntity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/PointListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/PointListAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/PointListAdapter$MyViewHolder;
    .locals 2

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$layout;->item_projectlist:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 58
    new-instance p2, Lcom/qianhe/yct/adapter/PointListAdapter$MyViewHolder;

    invoke-direct {p2, p1}, Lcom/qianhe/yct/adapter/PointListAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

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

    .line 188
    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 189
    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 190
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public selecteAll(Z)V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->idStrList:Ljava/util/List;

    iget-object v1, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 201
    iget-object p1, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/PointListAdapter$OnActionListener;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/qianhe/yct/adapter/PointListAdapter$OnActionListener;->onSelItem(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/PointlibEntity;",
            ">;)V"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->mData:Ljava/util/List;

    .line 171
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnActionListener(Lcom/qianhe/yct/adapter/PointListAdapter$OnActionListener;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/PointListAdapter$OnActionListener;

    return-void
.end method

.method public showSelUi(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->showSelUi:Z

    .line 176
    iput-boolean p1, p0, Lcom/qianhe/yct/adapter/PointListAdapter;->isMultiple:Z

    .line 177
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
