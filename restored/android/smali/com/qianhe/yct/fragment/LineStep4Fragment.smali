.class public Lcom/qianhe/yct/fragment/LineStep4Fragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "LineStep4Fragment.java"


# instance fields
.field private baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

.field private binding:Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;

.field private initEntity:Lcom/qianhe/baselib/bean/LineEntity;

.field private isH5Pro:Z

.field private lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep4Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/LineStep4Fragment;)Lcom/qianhe/baselib/bean/LineEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->initEntity:Lcom/qianhe/baselib/bean/LineEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlineEntity(Lcom/qianhe/yct/fragment/LineStep4Fragment;)Lcom/qianhe/baselib/bean/LineEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmINS(Lcom/qianhe/yct/fragment/LineStep4Fragment;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateEntity(Lcom/qianhe/yct/fragment/LineStep4Fragment;)Ljava/util/Queue;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep4Fragment;->createEntity()Ljava/util/Queue;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/fragment/LineStep4Fragment;)I
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/qianhe/yct/fragment/LineStep4Fragment;ID)D
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$200(Lcom/qianhe/yct/fragment/LineStep4Fragment;)I
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/qianhe/yct/fragment/LineStep4Fragment;ID)D
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide p0

    return-wide p0
.end method

.method private createEntity()Ljava/util/Queue;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/qianhe/baselib/bean/LineEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 157
    new-instance v5, Ljava/util/ArrayDeque;

    invoke-direct {v5}, Ljava/util/ArrayDeque;-><init>()V

    .line 158
    iget-object v6, v0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v7

    iput v7, v6, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    .line 159
    iget-object v6, v0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-object v7, v0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;

    iget-object v7, v7, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->ivToggle:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v7

    iget-object v8, v0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->edtSpacing:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v8}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v7

    goto :goto_0

    :cond_0
    const-wide/16 v7, 0x0

    :goto_0
    iput-wide v7, v6, Lcom/qianhe/baselib/bean/LineEntity;->pileSpacing:D

    .line 160
    iget-object v6, v0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v7, v6, Lcom/qianhe/baselib/bean/LineEntity;->east1:D

    iget-wide v9, v6, Lcom/qianhe/baselib/bean/LineEntity;->north1:D

    new-array v11, v2, [D

    aput-wide v7, v11, v3

    aput-wide v9, v11, v4

    iget-wide v7, v6, Lcom/qianhe/baselib/bean/LineEntity;->east2:D

    iget-wide v9, v6, Lcom/qianhe/baselib/bean/LineEntity;->north2:D

    new-array v12, v2, [D

    aput-wide v7, v12, v3

    aput-wide v9, v12, v4

    iget-wide v13, v6, Lcom/qianhe/baselib/bean/LineEntity;->spacing:D

    iget v15, v6, Lcom/qianhe/baselib/bean/LineEntity;->leftItems:I

    iget v6, v6, Lcom/qianhe/baselib/bean/LineEntity;->rigthItems:I

    move/from16 v16, v6

    invoke-static/range {v11 .. v16}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->generateParallelLines([D[DDII)Ljava/util/List;

    move-result-object v6

    .line 161
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u76f4\u7ebf\u603b\u6761\u6570\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "loglog"

    nop

    nop

    nop

    .line 162
    iget-object v7, v0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    invoke-interface {v5, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    .line 163
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_3

    .line 164
    new-instance v9, Lcom/google/gson/Gson;

    invoke-direct {v9}, Lcom/google/gson/Gson;-><init>()V

    new-instance v10, Lcom/google/gson/Gson;

    invoke-direct {v10}, Lcom/google/gson/Gson;-><init>()V

    iget-object v11, v0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    invoke-virtual {v10, v11}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-class v11, Lcom/qianhe/baselib/bean/LineEntity;

    invoke-virtual {v9, v10, v11}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/qianhe/baselib/bean/LineEntity;

    .line 165
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[D

    .line 166
    iget-object v11, v0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget v11, v11, Lcom/qianhe/baselib/bean/LineEntity;->leftItems:I

    const-string v12, "_"

    if-ge v7, v11, :cond_1

    .line 167
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-object v13, v13, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v12, Lcom/qianhe/yct/R$string;->parallel_lines:I

    invoke-virtual {v0, v12}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "L"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    goto :goto_2

    :cond_1
    if-le v7, v11, :cond_2

    .line 169
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-object v13, v13, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v12, Lcom/qianhe/yct/R$string;->parallel_lines:I

    invoke-virtual {v0, v12}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "R"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget v12, v12, Lcom/qianhe/baselib/bean/LineEntity;->leftItems:I

    sub-int v12, v7, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    .line 173
    :goto_2
    iget-object v11, v0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v12, v11, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    iput-wide v12, v9, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    .line 174
    iget v12, v11, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    iput v12, v9, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    .line 175
    iget-wide v12, v11, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    iput-wide v12, v9, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    .line 176
    iget-wide v12, v11, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    iput-wide v12, v9, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 177
    iget-wide v11, v11, Lcom/qianhe/baselib/base/BaseProEntity;->version:J

    iput-wide v11, v9, Lcom/qianhe/baselib/base/BaseProEntity;->version:J

    .line 178
    aget-object v11, v10, v3

    .line 179
    aget-object v10, v10, v4

    .line 180
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "\u5e73\u884c\u7ebf -> A:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "\uff0cB:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    nop

    nop

    nop

    .line 182
    aget-wide v12, v11, v3

    iput-wide v12, v9, Lcom/qianhe/baselib/bean/LineEntity;->east1:D

    .line 183
    aget-wide v12, v11, v4

    iput-wide v12, v9, Lcom/qianhe/baselib/bean/LineEntity;->north1:D

    .line 184
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v12

    aget-wide v13, v11, v3

    aget-wide v15, v11, v4

    iget-object v11, v0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    const/16 v17, 0x2

    const/16 v18, 0x0

    iget-wide v2, v11, Lcom/qianhe/baselib/bean/LineEntity;->targetElevation1:D

    new-array v11, v1, [D

    aput-wide v13, v11, v18

    aput-wide v15, v11, v4

    aput-wide v2, v11, v17

    invoke-virtual {v12, v11}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertGAUSSXYToGeodetic([D)[D

    move-result-object v2

    .line 185
    aget-wide v11, v2, v18

    iput-wide v11, v9, Lcom/qianhe/baselib/bean/LineEntity;->targetLon1:D

    .line 186
    aget-wide v11, v2, v4

    iput-wide v11, v9, Lcom/qianhe/baselib/bean/LineEntity;->targetLat1:D

    .line 187
    aget-wide v2, v10, v18

    iput-wide v2, v9, Lcom/qianhe/baselib/bean/LineEntity;->east2:D

    .line 188
    aget-wide v2, v10, v4

    iput-wide v2, v9, Lcom/qianhe/baselib/bean/LineEntity;->north2:D

    .line 189
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v2

    aget-wide v11, v10, v18

    aget-wide v13, v10, v4

    iget-object v3, v0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    move-object v15, v5

    const/4 v10, 0x1

    iget-wide v4, v3, Lcom/qianhe/baselib/bean/LineEntity;->targetElevation2:D

    new-array v3, v1, [D

    aput-wide v11, v3, v18

    aput-wide v13, v3, v10

    aput-wide v4, v3, v17

    invoke-virtual {v2, v3}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertGAUSSXYToGeodetic([D)[D

    move-result-object v2

    .line 190
    aget-wide v3, v2, v18

    iput-wide v3, v9, Lcom/qianhe/baselib/bean/LineEntity;->targetLon2:D

    .line 191
    aget-wide v3, v2, v10

    iput-wide v3, v9, Lcom/qianhe/baselib/bean/LineEntity;->targetLat2:D

    .line 193
    iget-object v2, v0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-object v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->coordinateSystem:Ljava/lang/String;

    iput-object v3, v9, Lcom/qianhe/baselib/base/BaseProEntity;->coordinateSystem:Ljava/lang/String;

    .line 194
    iget-object v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    iput-object v3, v9, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    .line 195
    iget-object v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->corsHost:Ljava/lang/String;

    iput-object v3, v9, Lcom/qianhe/baselib/base/BaseProEntity;->corsHost:Ljava/lang/String;

    .line 196
    iget v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->corsPort:I

    iput v3, v9, Lcom/qianhe/baselib/base/BaseProEntity;->corsPort:I

    .line 197
    iget-object v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->corsMount:Ljava/lang/String;

    iput-object v3, v9, Lcom/qianhe/baselib/base/BaseProEntity;->corsMount:Ljava/lang/String;

    .line 199
    iget-wide v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    iput-wide v3, v9, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    .line 200
    iget-wide v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    iput-wide v3, v9, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    .line 201
    iget-wide v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationElev:D

    iput-wide v2, v9, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationElev:D

    .line 202
    invoke-interface {v15, v9}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    move-object v15, v5

    const/4 v10, 0x1

    const/16 v17, 0x2

    const/16 v18, 0x0

    :goto_3
    add-int/2addr v7, v10

    move-object v5, v15

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_3
    move-object v15, v5

    return-object v15
.end method

.method private initView()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->lltToggle:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/fragment/LineStep4Fragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/LineStep4Fragment$1;-><init>(Lcom/qianhe/yct/fragment/LineStep4Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->edtSpacing:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/LineStep4Fragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/LineStep4Fragment$2;-><init>(Lcom/qianhe/yct/fragment/LineStep4Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 113
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/LineStep4Fragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/LineStep4Fragment$3;-><init>(Lcom/qianhe/yct/fragment/LineStep4Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/LineStep4Fragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/LineStep4Fragment$4;-><init>(Lcom/qianhe/yct/fragment/LineStep4Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep4Fragment;->showData()V

    return-void
.end method

.method private refreshData()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->customDropdownSpacing:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    return-void
.end method

.method private showData()V
    .locals 7

    .line 208
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->ivToggle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/LineEntity;->pileSpacing:D

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmpl-double v6, v1, v4

    if-lez v6, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 209
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;

    iget-object v1, v0, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->lltSpacing:Landroid/widget/LinearLayout;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->ivToggle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->edtSpacing:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/LineEntity;->pileSpacing:D

    cmpl-double v3, v1, v4

    if-nez v3, :cond_2

    const-string v1, ""

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/LineEntity;->pileSpacing:D

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide v1

    const/4 v3, 0x3

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public gga(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 0
    return-void
.end method

.method public insNavi(Lcom/qianhe/baselib/bean/InsNavi;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 237
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 54
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;

    .line 55
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 57
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v1, "LOG,REFSTATION,ONTIME,1"

    invoke-direct {p3, v0, v1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 58
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 59
    iget-object p3, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 60
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 62
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 63
    iget-object p3, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 64
    iget-object p3, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p3, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 68
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 70
    const-string p2, "initEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/LineEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->initEntity:Lcom/qianhe/baselib/bean/LineEntity;

    .line 71
    const-string p2, "baseProEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/LineEntity;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    .line 73
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep4Fragment;->initView()V

    .line 74
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 4

    .line 242
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    .line 243
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 244
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "UNLOG,REFSTATION"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/BaseStationEntity;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 227
    iput-object p1, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 79
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 80
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment;->isH5Pro:Z

    .line 81
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep4Fragment;->refreshData()V

    return-void
.end method
