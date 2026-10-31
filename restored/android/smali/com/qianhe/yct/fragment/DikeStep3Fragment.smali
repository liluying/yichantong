.class public Lcom/qianhe/yct/fragment/DikeStep3Fragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "DikeStep3Fragment.java"


# instance fields
.field private baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

.field private binding:Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

.field private cachedEast1:D

.field private cachedEast2:D

.field private cachedElev1:D

.field private cachedElev2:D

.field private cachedNorth1:D

.field private cachedNorth2:D

.field private coordsSnapshotTaken:Z

.field private dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

.field private initEntity:Lcom/qianhe/baselib/bean/DikeEntity;

.field private isH5Pro:Z

.field private mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DikeStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdikeEntity(Lcom/qianhe/yct/fragment/DikeStep3Fragment;)Lcom/qianhe/baselib/bean/DikeEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/DikeStep3Fragment;)Lcom/qianhe/baselib/bean/DikeEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmINS(Lcom/qianhe/yct/fragment/DikeStep3Fragment;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateEntity(Lcom/qianhe/yct/fragment/DikeStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->createEntity()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfillLengthFromAbIfEmpty(Lcom/qianhe/yct/fragment/DikeStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->fillLengthFromAbIfEmpty()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetLengthMeter(Lcom/qianhe/yct/fragment/DikeStep3Fragment;)D
    .locals 2

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->getLengthMeter()D

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mnext(Lcom/qianhe/yct/fragment/DikeStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->next()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    return-void
.end method

.method private createEntity()V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    .line 171
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/DikeEntity;->depthA:D

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->depthA:D

    .line 172
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/DikeEntity;->depthB:D

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->depthB:D

    .line 173
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->getLengthMeter()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->length:D

    .line 174
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->edtWidth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    .line 175
    iget-object v2, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-virtual {p0, v3, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v0

    iput-wide v0, v2, Lcom/qianhe/baselib/bean/DikeEntity;->width:D

    .line 176
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    if-eqz v0, :cond_0

    .line 178
    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/BaseStationEntity;->lon:D

    const/16 v0, 0x8

    invoke-virtual {p0, v2, v3, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    .line 179
    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/BaseStationEntity;->lat:D

    invoke-virtual {p0, v2, v3, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    .line 180
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/BaseStationEntity;->elev:D

    const/4 v3, 0x3

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationElev:D

    :cond_0
    return-void
.end method

.method private fillLengthFromAbIfEmpty()V
    .locals 5

    .line 160
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->edtLength:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->getAbPlanarDistanceMeter()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    .line 165
    iget-object v2, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->edtLength:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v3

    invoke-virtual {p0, v3, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide v0

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v1, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getAbPlanarDistanceMeter()D
    .locals 12

    .line 146
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->east1:D

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/DikeEntity;->north1:D

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation1:D

    const/4 v7, 0x3

    new-array v8, v7, [D

    const/4 v9, 0x0

    aput-wide v1, v8, v9

    const/4 v1, 0x1

    aput-wide v3, v8, v1

    const/4 v2, 0x2

    aput-wide v5, v8, v2

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/DikeEntity;->east2:D

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/DikeEntity;->north2:D

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation2:D

    new-array v0, v7, [D

    aput-wide v3, v0, v9

    aput-wide v5, v0, v1

    aput-wide v10, v0, v2

    invoke-static {v8, v0}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getLengthMeter()D
    .locals 5

    .line 152
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->edtLength:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->getAbPlanarDistanceMeter()D

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method private haveCoordsChanged()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->coordsSnapshotTaken:Z

    if-nez v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->haveCoordsChangedFromInit()Z

    move-result v0

    return v0

    .line 200
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->haveCoordsChangedFromCache()Z

    move-result v0

    return v0
.end method

.method private haveCoordsChangedFromCache()Z
    .locals 4

    .line 213
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/DikeEntity;->east1:D

    iget-wide v2, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->cachedEast1:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/DikeEntity;->north1:D

    iget-wide v2, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->cachedNorth1:D

    .line 214
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation1:D

    iget-wide v2, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->cachedElev1:D

    .line 215
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/DikeEntity;->east2:D

    iget-wide v2, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->cachedEast2:D

    .line 216
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/DikeEntity;->north2:D

    iget-wide v2, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->cachedNorth2:D

    .line 217
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation2:D

    iget-wide v2, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->cachedElev2:D

    .line 218
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private haveCoordsChangedFromInit()Z
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/DikeEntity;->east1:D

    iget-object v2, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/DikeEntity;->east1:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/DikeEntity;->north1:D

    iget-object v2, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/DikeEntity;->north1:D

    .line 205
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation1:D

    iget-object v2, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation1:D

    .line 206
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/DikeEntity;->east2:D

    iget-object v2, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/DikeEntity;->east2:D

    .line 207
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/DikeEntity;->north2:D

    iget-object v2, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/DikeEntity;->north2:D

    .line 208
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation2:D

    iget-object v2, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation2:D

    .line 209
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private initView()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/DikeStep3Fragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DikeStep3Fragment$1;-><init>(Lcom/qianhe/yct/fragment/DikeStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 106
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/DikeStep3Fragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DikeStep3Fragment$2;-><init>(Lcom/qianhe/yct/fragment/DikeStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/DikeStep3Fragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DikeStep3Fragment$3;-><init>(Lcom/qianhe/yct/fragment/DikeStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->showData()V

    return-void
.end method

.method private next()V
    .locals 4

    .line 275
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->start_jobs:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 276
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 278
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 279
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private recalculateFromCoords()V
    .locals 6

    .line 233
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->length:D

    .line 234
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->getAbPlanarDistanceMeter()D

    move-result-wide v3

    .line 235
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->edtLength:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v5

    invoke-virtual {p0, v5, v3, v4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide v3

    const/4 v5, 0x2

    invoke-virtual {p0, v3, v4, v5}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->ratio:D

    .line 237
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->refreshData()V

    return-void
.end method

.method private refreshData()V
    .locals 8

    .line 242
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->lengthDropdown:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 253
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/DikeEnum;->FLAT:Lcom/qianhe/baselib/enums/DikeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/DikeEnum;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v0, v1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->lltRatio:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->tickA:I

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    if-ne v1, v3, :cond_1

    iget v6, v0, Lcom/qianhe/baselib/bean/DikeEntity;->tickB:I

    if-ne v6, v3, :cond_1

    .line 257
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->lltRatio:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iput-wide v4, v0, Lcom/qianhe/baselib/bean/DikeEntity;->ratio:D

    return-void

    :cond_1
    if-ne v1, v3, :cond_2

    .line 259
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/DikeEntity;->depthB:D

    cmpl-double v1, v6, v4

    if-eqz v1, :cond_2

    .line 260
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->lltRatio:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iput-wide v4, v0, Lcom/qianhe/baselib/bean/DikeEntity;->ratio:D

    return-void

    .line 262
    :cond_2
    iget v1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->tickB:I

    if-ne v1, v3, :cond_3

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/DikeEntity;->depthA:D

    cmpl-double v1, v6, v4

    if-eqz v1, :cond_3

    .line 263
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->lltRatio:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iput-wide v4, v0, Lcom/qianhe/baselib/bean/DikeEntity;->ratio:D

    return-void

    .line 265
    :cond_3
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/DikeEntity;->depthA:D

    cmpl-double v1, v6, v4

    if-eqz v1, :cond_4

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/DikeEntity;->depthB:D

    cmpl-double v3, v0, v4

    if-eqz v3, :cond_4

    .line 266
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->lltRatio:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iput-wide v4, v0, Lcom/qianhe/baselib/bean/DikeEntity;->ratio:D

    return-void

    .line 269
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->lltRatio:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showData()V
    .locals 10

    .line 185
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->edtLength:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 187
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->edtWidth:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->lengthDropdown:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 189
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/DikeEntity;->ratio:D

    const-string v3, ""

    const-wide/16 v4, 0x0

    cmpl-double v6, v1, v4

    if-eqz v6, :cond_3

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->getAbPlanarDistanceMeter()D

    move-result-wide v0

    .line 191
    iget-object v2, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->edtLength:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v6

    iget-object v7, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v7, v7, Lcom/qianhe/baselib/bean/DikeEntity;->length:D

    cmpl-double v9, v7, v4

    if-eqz v9, :cond_4

    move-wide v0, v7

    :cond_4
    invoke-virtual {p0, v6, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide v0

    const/4 v6, 0x2

    invoke-virtual {p0, v0, v1, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->edtWidth:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/DikeEntity;->width:D

    cmpl-double v6, v1, v4

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/DikeEntity;->width:D

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v3

    :cond_5
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->refreshData()V

    return-void
.end method

.method private takeCoordsSnapshot()V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->east1:D

    iput-wide v1, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->cachedEast1:D

    .line 223
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->north1:D

    iput-wide v1, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->cachedNorth1:D

    .line 224
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation1:D

    iput-wide v1, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->cachedElev1:D

    .line 225
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->east2:D

    iput-wide v1, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->cachedEast2:D

    .line 226
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->north2:D

    iput-wide v1, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->cachedNorth2:D

    .line 227
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation2:D

    iput-wide v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->cachedElev2:D

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->coordsSnapshotTaken:Z

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

    .line 297
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 53
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    .line 54
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 56
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v1, "LOG,REFSTATION,ONTIME,1"

    invoke-direct {p3, v0, v1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 58
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 59
    iget-object p3, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 60
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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
    iget-object p3, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 64
    iget-object p3, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    check-cast p2, Lcom/qianhe/baselib/bean/DikeEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    .line 71
    const-string p2, "baseProEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/DikeEntity;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    .line 73
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->initView()V

    .line 74
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentDikeStep3Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 4

    .line 307
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    .line 308
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 309
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

    .line 302
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

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

    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->isH5Pro:Z

    .line 81
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->haveCoordsChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->recalculateFromCoords()V

    goto :goto_0

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->refreshData()V

    .line 86
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep3Fragment;->takeCoordsSnapshot()V

    return-void
.end method
