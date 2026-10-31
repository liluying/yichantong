.class public Lcom/qianhe/yct/adapter/ShareProjectAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ShareProjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/adapter/ShareProjectAdapter$MyViewHolder;,
        Lcom/qianhe/yct/adapter/ShareProjectAdapter$OnActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final format:Ljava/text/SimpleDateFormat;

.field private isProhibitEdit:Z

.field private final mActivity:Landroidx/appcompat/app/AppCompatActivity;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;"
        }
    .end annotation
.end field

.field private onActionListener:Lcom/qianhe/yct/adapter/ShareProjectAdapter$OnActionListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/qianhe/yct/adapter/ShareProjectAdapter;)Landroidx/appcompat/app/AppCompatActivity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ShareProjectAdapter;)Lcom/qianhe/yct/adapter/ShareProjectAdapter$OnActionListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ShareProjectAdapter$OnActionListener;

    return-object p0
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;Z)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->format:Ljava/text/SimpleDateFormat;

    .line 59
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 60
    iput-object p2, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->mData:Ljava/util/List;

    .line 61
    iput-boolean p3, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->isProhibitEdit:Z

    return-void
.end method

.method public static startWorkActivity(Landroidx/appcompat/app/AppCompatActivity;Lcom/qianhe/baselib/base/BaseProEntity;Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 4

    if-eqz p0, :cond_d

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 163
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 164
    iget v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->ZHAOPING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 165
    const-class v1, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 166
    :cond_1
    iget v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->SHUAPO:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 167
    const-class v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 168
    :cond_2
    iget v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->WAGOU:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 169
    const-class v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 170
    :cond_3
    iget v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->DIKE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 171
    const-class v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 172
    :cond_4
    iget v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 173
    const-class v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 174
    :cond_5
    iget v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->POLY_LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 175
    const-class v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 176
    :cond_6
    iget v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->ONEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 177
    const-class v1, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 178
    :cond_7
    iget v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->THREEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_8

    .line 179
    const-class v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 180
    :cond_8
    iget v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->SITELEVELING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_9

    .line 181
    const-class v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 182
    :cond_9
    iget v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->ARBITRARYLINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_a

    .line 183
    const-class v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 184
    :cond_a
    iget v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->CURVEDSLOPE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_b

    .line 185
    const-class v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 186
    :cond_b
    iget v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->MULTI_POINT_AREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_d

    .line 187
    const-class v1, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 191
    :goto_0
    const-string v1, "id"

    iget-wide v2, p1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 192
    const-string v1, "proType"

    iget p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    const-string p1, "pagePosition"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_c

    .line 195
    const-string p1, "shared_engineering"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 197
    :cond_c
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_d
    :goto_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->mData:Ljava/util/List;

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

    .line 52
    check-cast p1, Lcom/qianhe/yct/adapter/ShareProjectAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/ShareProjectAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/qianhe/yct/adapter/ShareProjectAdapter$MyViewHolder;I)V
    .locals 7
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 74
    iget-object v3, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->mData:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 75
    iget-object v3, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    sget v4, Lcom/qianhe/yct/R$string;->unknown:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 78
    iget v4, p2, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v5, Lcom/qianhe/baselib/enums/ProjectEnum;->ZHAOPING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v5}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 79
    iget-object v3, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    sget v4, Lcom/qianhe/yct/R$string;->leveling:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 80
    :cond_0
    iget v4, p2, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v5, Lcom/qianhe/baselib/enums/ProjectEnum;->SHUAPO:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v5}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 81
    iget-object v3, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    sget v4, Lcom/qianhe/yct/R$string;->slope:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 82
    :cond_1
    iget v4, p2, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v5, Lcom/qianhe/baselib/enums/ProjectEnum;->WAGOU:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v5}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 83
    iget-object v3, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    sget v4, Lcom/qianhe/yct/R$string;->ditch:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 84
    :cond_2
    iget v4, p2, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v5, Lcom/qianhe/baselib/enums/ProjectEnum;->DIKE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v5}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 85
    iget-object v3, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    sget v4, Lcom/qianhe/yct/R$string;->dike:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 86
    :cond_3
    iget v4, p2, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v5, Lcom/qianhe/baselib/enums/ProjectEnum;->LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v5}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 87
    iget-object v3, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    sget v4, Lcom/qianhe/yct/R$string;->line:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 88
    :cond_4
    iget v4, p2, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v5, Lcom/qianhe/baselib/enums/ProjectEnum;->POLY_LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v5}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 89
    iget-object v3, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    sget v4, Lcom/qianhe/yct/R$string;->polyline:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 90
    :cond_5
    iget v4, p2, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v5, Lcom/qianhe/baselib/enums/ProjectEnum;->ONEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v5}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 91
    iget-object v3, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    sget v4, Lcom/qianhe/yct/R$string;->one_point_area:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 92
    :cond_6
    iget v4, p2, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v5, Lcom/qianhe/baselib/enums/ProjectEnum;->THREEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v5}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v5

    if-ne v4, v5, :cond_7

    .line 93
    iget-object v3, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    sget v4, Lcom/qianhe/yct/R$string;->three_point_area:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 94
    :cond_7
    iget v4, p2, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v5, Lcom/qianhe/baselib/enums/ProjectEnum;->SITELEVELING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v5}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v5

    if-ne v4, v5, :cond_8

    .line 95
    iget-object v3, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    sget v4, Lcom/qianhe/yct/R$string;->site_leveling:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 96
    :cond_8
    iget v4, p2, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v5, Lcom/qianhe/baselib/enums/ProjectEnum;->ARBITRARYLINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v5}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v5

    if-ne v4, v5, :cond_9

    .line 97
    iget-object v3, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    sget v4, Lcom/qianhe/yct/R$string;->arbitrary_line:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 98
    :cond_9
    iget v4, p2, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v5, Lcom/qianhe/baselib/enums/ProjectEnum;->CURVEDSLOPE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v5}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v5

    if-ne v4, v5, :cond_a

    .line 99
    iget-object v3, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    sget v4, Lcom/qianhe/yct/R$string;->curved_slope:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 100
    :cond_a
    iget v4, p2, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v5, Lcom/qianhe/baselib/enums/ProjectEnum;->MULTI_POINT_AREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v5}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v5

    if-ne v4, v5, :cond_b

    .line 101
    iget-object v3, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    sget v4, Lcom/qianhe/yct/R$string;->multi_point_area:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    :cond_b
    :goto_0
    iget-object v4, p1, Lcom/qianhe/yct/adapter/ShareProjectAdapter$MyViewHolder;->tvType:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    sget v6, Lcom/qianhe/yct/R$string;->type:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v2

    aput-object v3, v6, v0

    const-string v3, "%s\uff1a%s"

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v4, p1, Lcom/qianhe/yct/adapter/ShareProjectAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    sget v6, Lcom/qianhe/yct/R$string;->name:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v2

    aput-object v6, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p1, Lcom/qianhe/yct/adapter/ShareProjectAdapter$MyViewHolder;->ivDel:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->isProhibitEdit:Z

    if-eqz v1, :cond_c

    const/16 v2, 0x8

    :cond_c
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object v0, p1, Lcom/qianhe/yct/adapter/ShareProjectAdapter$MyViewHolder;->ivDel:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/adapter/ShareProjectAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/qianhe/yct/adapter/ShareProjectAdapter$1;-><init>(Lcom/qianhe/yct/adapter/ShareProjectAdapter;Lcom/qianhe/baselib/base/BaseProEntity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object p1, p1, Lcom/qianhe/yct/adapter/ShareProjectAdapter$MyViewHolder;->lltItem:Landroid/view/View;

    new-instance v0, Lcom/qianhe/yct/adapter/ShareProjectAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/adapter/ShareProjectAdapter$2;-><init>(Lcom/qianhe/yct/adapter/ShareProjectAdapter;Lcom/qianhe/baselib/base/BaseProEntity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/ShareProjectAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/ShareProjectAdapter$MyViewHolder;
    .locals 2

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$layout;->item_share_project_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 69
    new-instance p2, Lcom/qianhe/yct/adapter/ShareProjectAdapter$MyViewHolder;

    invoke-direct {p2, p1}, Lcom/qianhe/yct/adapter/ShareProjectAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public refrshData(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;Z)V"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->mData:Ljava/util/List;

    .line 154
    iput-boolean p2, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->isProhibitEdit:Z

    .line 155
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnActionListener(Lcom/qianhe/yct/adapter/ShareProjectAdapter$OnActionListener;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ShareProjectAdapter$OnActionListener;

    return-void
.end method
