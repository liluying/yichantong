.class public Lcom/qianhe/yct/adapter/ConverParamsListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ConverParamsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/adapter/ConverParamsListAdapter$MyViewHolder;,
        Lcom/qianhe/yct/adapter/ConverParamsListAdapter$OnActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private currentTransParamLocalId:J

.field private final format:Ljava/text/SimpleDateFormat;

.field private final idStrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
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
            "Lcom/qianhe/baselib/bean/GnssTransParamEntity;",
            ">;"
        }
    .end annotation
.end field

.field private onActionListener:Lcom/qianhe/yct/adapter/ConverParamsListAdapter$OnActionListener;

.field private showSelUi:Z


# direct methods
.method public static synthetic $r8$lambda$6ZX1EyHNbQ2nxsMyLZRnOiePA_k(Lcom/qianhe/yct/adapter/ConverParamsListAdapter;Lcom/qianhe/baselib/bean/GnssTransParamEntity;Landroid/view/View;)Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->showSelUi:Z

    if-nez v0, :cond_0

    .line 97
    invoke-direct {p0, p2, p1}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->showPopupMenu(Landroid/view/View;Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$J2qeXrlMeJWxGAxVyyfL1u9XCIY(Lcom/qianhe/yct/adapter/ConverParamsListAdapter;Lcom/qianhe/baselib/bean/GnssTransParamEntity;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 2

    .line 125
    iget-object p3, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->idStrList:Ljava/util/ArrayList;

    .line 125
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 126
    iget-object p3, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->idStrList:Ljava/util/ArrayList;

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object p3, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ConverParamsListAdapter$OnActionListener;

    if-eqz p3, :cond_0

    .line 128
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->idStrList:Ljava/util/ArrayList;

    invoke-interface {p3, v0}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$OnActionListener;->onSelItem(Ljava/util/ArrayList;)V

    .line 129
    iget-object p0, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ConverParamsListAdapter$OnActionListener;

    const/4 p3, 0x1

    invoke-interface {p0, p3, p1}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$OnActionListener;->onMenuAction(ILcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    .line 131
    :cond_0
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$KehA6mOGDDdHJIQOJtFglpI0Eso(Lcom/qianhe/yct/adapter/ConverParamsListAdapter;Lcom/qianhe/yct/adapter/ConverParamsListAdapter$MyViewHolder;Lcom/qianhe/baselib/bean/GnssTransParamEntity;Landroid/view/View;)V
    .locals 2

    .line 79
    iget-boolean p3, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->showSelUi:Z

    if-eqz p3, :cond_4

    .line 80
    iget-object p1, p1, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$MyViewHolder;->ivSel:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_1

    .line 81
    iget-boolean p1, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->isMultiple:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->idStrList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->idStrList:Ljava/util/ArrayList;

    iget-wide v0, p2, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 83
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->idStrList:Ljava/util/ArrayList;

    iget-wide p2, p2, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->idStrList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p3, 0x1

    if-le p1, p3, :cond_2

    .line 86
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->idStrList:Ljava/util/ArrayList;

    iget-wide p2, p2, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 88
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ConverParamsListAdapter$OnActionListener;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->idStrList:Ljava/util/ArrayList;

    invoke-interface {p1, p2}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$OnActionListener;->onSelItem(Ljava/util/ArrayList;)V

    .line 89
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 90
    :cond_4
    iget-object p0, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ConverParamsListAdapter$OnActionListener;

    if-eqz p0, :cond_5

    .line 91
    invoke-interface {p0, p2}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$OnActionListener;->onItemClick(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    :cond_5
    return-void
.end method

.method public static synthetic $r8$lambda$LidB8R8ttnJHS9ucdPETdxsc-gc(Lcom/qianhe/yct/adapter/ConverParamsListAdapter;Lcom/qianhe/baselib/bean/GnssTransParamEntity;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ConverParamsListAdapter$OnActionListener;

    if-eqz p0, :cond_0

    const/4 p3, 0x2

    .line 136
    invoke-interface {p0, p3, p1}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$OnActionListener;->onMenuAction(ILcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    .line 138
    :cond_0
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/GnssTransParamEntity;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->format:Ljava/text/SimpleDateFormat;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->idStrList:Ljava/util/ArrayList;

    .line 43
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 44
    iput-object p2, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->mData:Ljava/util/List;

    return-void
.end method

.method private buildTypeDesc(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)Ljava/lang/String;
    .locals 2

    .line 105
    iget v0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lcom/qianhe/yct/R$string;->four_params:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 108
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lcom/qianhe/yct/R$string;->seven_params:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_1
    const-string v0, ""

    .line 110
    :goto_0
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->getControlPointList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u00b7 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lcom/qianhe/yct/R$string;->with_control_points:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method private showPopupMenu(Landroid/view/View;Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V
    .locals 8

    .line 117
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$layout;->popup_conver_params_menu:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 118
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 120
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 121
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v2, 0x41200000    # 10.0f

    .line 122
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 124
    sget v2, Lcom/qianhe/yct/R$id;->tvDelete:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, p2, v1}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/adapter/ConverParamsListAdapter;Lcom/qianhe/baselib/bean/GnssTransParamEntity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    sget v2, Lcom/qianhe/yct/R$id;->tvModify:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, p2, v1}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/adapter/ConverParamsListAdapter;Lcom/qianhe/baselib/bean/GnssTransParamEntity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-virtual {v0, v4, v4}, Landroid/view/View;->measure(II)V

    .line 142
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 143
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
    iget-object v6, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v6}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 149
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

    .line 152
    invoke-virtual {v1, p1, v7, v4, p2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method public closeSelUi()V
    .locals 2

    const/4 v0, 0x0

    .line 193
    iput-boolean v0, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->showSelUi:Z

    .line 194
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->idStrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 195
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ConverParamsListAdapter$OnActionListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->idStrList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$OnActionListener;->onSelItem(Ljava/util/ArrayList;)V

    .line 196
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->mData:Ljava/util/List;

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

    .line 32
    check-cast p1, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/ConverParamsListAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/qianhe/yct/adapter/ConverParamsListAdapter$MyViewHolder;I)V
    .locals 9
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 56
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    .line 58
    iget-boolean v0, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->showSelUi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->idStrList:Ljava/util/ArrayList;

    iget-wide v2, p2, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->idStrList:Ljava/util/ArrayList;

    iget-wide v2, p2, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ConverParamsListAdapter$OnActionListener;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->idStrList:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$OnActionListener;->onSelItem(Ljava/util/ArrayList;)V

    .line 65
    :cond_1
    iget-object v0, p1, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/qianhe/yct/utils/ConfigLayoutHelper;->applyLocaleNameStyle(Landroid/widget/TextView;)V

    .line 66
    iget-object v0, p1, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p1, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$MyViewHolder;->tvType:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->buildTypeDesc(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-wide v2, p2, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->createTime:J

    .line 69
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0xa

    if-ne v0, v4, :cond_2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    .line 70
    :cond_2
    iget-object v0, p1, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$MyViewHolder;->tvTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->format:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p1, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$MyViewHolder;->fltSel:Landroid/widget/FrameLayout;

    iget-boolean v2, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->showSelUi:Z

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v0, p1, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$MyViewHolder;->ivSel:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->idStrList:Ljava/util/ArrayList;

    iget-wide v5, p2, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 75
    iget-wide v5, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->currentTransParamLocalId:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_4

    iget-wide v7, p2, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    cmp-long v0, v7, v5

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 76
    :goto_1
    iget-object v0, p1, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$MyViewHolder;->tvCurrentUse:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->showSelUi:Z

    if-nez v1, :cond_5

    const/4 v3, 0x0

    :cond_5
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v0, p1, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$MyViewHolder;->item:Landroid/view/View;

    new-instance v1, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/adapter/ConverParamsListAdapter;Lcom/qianhe/yct/adapter/ConverParamsListAdapter$MyViewHolder;Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object p1, p1, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$MyViewHolder;->item:Landroid/view/View;

    new-instance v0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/adapter/ConverParamsListAdapter;Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/ConverParamsListAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/ConverParamsListAdapter$MyViewHolder;
    .locals 2

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$layout;->item_conver_params:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 51
    new-instance p2, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$MyViewHolder;

    invoke-direct {p2, p1}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public selectAll(Z)V
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->idStrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->mData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    .line 169
    iget-object v1, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->idStrList:Ljava/util/ArrayList;

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 173
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ConverParamsListAdapter$OnActionListener;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->idStrList:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$OnActionListener;->onSelItem(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public selectCurrentItem()V
    .locals 5

    .line 184
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->idStrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 185
    iget-wide v0, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->currentTransParamLocalId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 186
    iget-object v2, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->idStrList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 189
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ConverParamsListAdapter$OnActionListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->idStrList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$OnActionListener;->onSelItem(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public setCurrentTransParamLocalId(J)V
    .locals 0

    .line 200
    iput-wide p1, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->currentTransParamLocalId:J

    .line 201
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/GnssTransParamEntity;",
            ">;)V"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->mData:Ljava/util/List;

    .line 162
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnActionListener(Lcom/qianhe/yct/adapter/ConverParamsListAdapter$OnActionListener;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ConverParamsListAdapter$OnActionListener;

    return-void
.end method

.method public showSelUi(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->showSelUi:Z

    .line 178
    iput-boolean p1, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->isMultiple:Z

    .line 179
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
