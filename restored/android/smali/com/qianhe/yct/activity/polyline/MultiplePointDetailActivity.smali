.class public Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "MultiplePointDetailActivity.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

.field private cadPath:Ljava/lang/String;

.field private cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

.field private coordsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation
.end field

.field private coordsListJson:Ljava/lang/String;

.field private corsArray:[Ljava/lang/String;

.field private disableElevation:Z

.field private initCadPath:Ljava/lang/String;

.field private initJson:Ljava/lang/String;

.field private launcher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field

.field private mToothType:I

.field private overallSlopeRatio:D

.field private position:I


# direct methods
.method public static synthetic $r8$lambda$7ToeM-lkFAGW_-swOiGeoDiLfnM(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;Landroid/view/View;Z)V
    .locals 7

    if-nez p2, :cond_0

    .line 213
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    .line 213
    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    .line 214
    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    .line 215
    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    .line 216
    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v5

    move-object v0, p0

    .line 213
    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->refreshElevFromOverallSlope(DDD)D

    return-void

    :cond_0
    move-object v0, p0

    .line 0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static synthetic $r8$lambda$FsF6E9VTXcQBfJWp2zq3_TDiyBg(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;Landroid/view/View;)Z
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    const/4 p1, 0x1

    .line 130
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$ObdsvqAY692PsLYws18gtvZ3aEI(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->applyCollectedCoords(Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SkVsJuaAgFoUIazvEGC3ZZA0kqw(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 328
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 330
    const-string v0, "coords"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object v0

    .line 331
    const-string v1, "cors"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->corsArray:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 333
    invoke-direct {p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->clearCadPath()V

    const/4 p1, 0x0

    .line 334
    aget-wide v2, v0, p1

    const/4 p1, 0x1

    aget-wide v4, v0, p1

    const/4 p1, 0x2

    aget-wide v6, v0, p1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->showCoords(DDD)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$ZE1IIbG7x2dz2hpxnQT3zD_oHvU(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;I)V
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 114
    iput p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->mToothType:I

    .line 115
    invoke-direct {p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->clearCadPath()V

    .line 116
    new-instance p1, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$$ExternalSyntheticLambda8;-><init>(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)V

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->startInstrumentCollectWithPoleHeight(Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;)V

    return-void

    .line 0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static synthetic $r8$lambda$ZzgfaYYK2wJs0Z1zpknkBhqpFUE(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;I)V
    .locals 1

    .line 100
    iput p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->mToothType:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->clearCadPath()V

    .line 103
    invoke-virtual {p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->goPointLibrary()V

    return-void

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->clearCadPath()V

    .line 106
    new-instance p1, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$$ExternalSyntheticLambda8;-><init>(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)V

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->startInstrumentCollect(Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;)V

    return-void

    .line 108
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->clearCadPath()V

    .line 109
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->goCollectCoordinates(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZziGRi_YctGjKCaIjuEiFREuJQw(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;Landroid/view/View;)V
    .locals 1

    .line 157
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    .line 157
    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->mToothType:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 158
    sget p1, Lcom/qianhe/yct/R$string;->please_select_shovel_tip:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 161
    :cond_0
    iget p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->mToothType:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 162
    invoke-direct {p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->clearCadPath()V

    .line 163
    new-instance p1, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$$ExternalSyntheticLambda8;-><init>(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)V

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->startInstrumentCollect(Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;)V

    return-void

    .line 165
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->clearCadPath()V

    .line 166
    iget p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->mToothType:I

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->goCollectCoordinates(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bwZr1YC6LJ1taGfb37zNIZBmsYc(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;Landroid/view/View;)V
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    .line 122
    :try_start_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 123
    :try_start_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    :try_start_2
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    move-wide v10, v0

    move-wide v6, v2

    move-wide v8, v4

    goto :goto_1

    :catch_1
    move-wide v4, v0

    goto :goto_0

    :catch_2
    move-wide v2, v0

    move-wide v4, v2

    goto :goto_0

    .line 127
    :goto_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    iget-object p0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->cadPath:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static/range {v6 .. v11}, Lcom/qianhe/yct/activity/cad/CadEntityChooseIntent;->singlePoint(DDD)[D

    move-result-object v1

    invoke-virtual {p1, p0, v0, v1}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(Ljava/lang/String;I[D)V

    return-void
.end method

.method public static synthetic $r8$lambda$oDm-He-2RY6Qs6NJTjYw43ZSX6o(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;Ljava/lang/String;[D)V
    .locals 7

    .line 64
    iput-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->cadPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 65
    aget-wide v1, p2, p1

    const/4 p1, 0x1

    aget-wide v3, p2, p1

    const/4 p1, 0x2

    aget-wide v5, p2, p1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->showCoords(DDD)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcadPath(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->cadPath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcoordsList(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->coordsList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcoordsListJson(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->coordsListJson:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcorsArray(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)[Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->corsArray:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdisableElevation(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->disableElevation:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetinitCadPath(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->initCadPath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinitJson(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->initJson:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetposition(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->position:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcadPath(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->cadPath:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcoordsList(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->coordsList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcoordsListJson(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->coordsListJson:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyOverallSlopeElevationsToList(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->applyOverallSlopeElevationsToList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearCadPath(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->clearCadPath()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetElevText(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;D)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->setElevText(D)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowCoords(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;DDD)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->showCoords(DDD)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->cadPath:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->initCadPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;[D)Z
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->isVaildCoords([D)Z

    move-result p0

    return p0
.end method

.method private applyCollectedCoords(Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;)V
    .locals 8

    if-eqz p1, :cond_1

    .line 250
    iget-object p1, p1, Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;->coords:[D

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 251
    aget-wide v2, p1, v0

    const/4 v0, 0x1

    aget-wide v4, p1, v0

    const/4 v0, 0x2

    aget-wide v6, p1, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->showCoords(DDD)V

    :cond_1
    :goto_0
    return-void
.end method

.method private applyOverallSlopeElevationsToList()V
    .locals 20

    move-object/from16 v0, p0

    .line 297
    iget-object v1, v0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->coordsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v1, -0x1

    .line 300
    new-array v4, v3, [D

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-wide v9, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_1

    .line 302
    iget-object v11, v0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->coordsList:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [D

    iget-object v12, v0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->coordsList:Ljava/util/List;

    add-int/lit8 v13, v8, 0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [D

    invoke-static {v11, v12}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v11

    aput-wide v11, v4, v8

    add-double/2addr v9, v11

    move v8, v13

    goto :goto_0

    :cond_1
    cmpl-double v3, v9, v6

    if-nez v3, :cond_2

    goto :goto_2

    .line 306
    :cond_2
    iget-wide v11, v0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->overallSlopeRatio:D

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    div-double/2addr v11, v13

    mul-double v11, v11, v9

    .line 307
    iget-object v3, v0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->coordsList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    aget-wide v13, v3, v2

    const/4 v3, 0x1

    :goto_1
    if-ge v3, v1, :cond_3

    add-int/lit8 v5, v3, -0x1

    .line 310
    aget-wide v15, v4, v5

    add-double/2addr v6, v15

    div-double v15, v6, v9

    .line 312
    iget-object v5, v0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->coordsList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    mul-double v15, v15, v11

    add-double/2addr v15, v13

    const-wide v17, 0x408f400000000000L    # 1000.0

    mul-double v15, v15, v17

    move/from16 v19, v3

    const/4 v8, 0x2

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double v2, v2, v17

    aput-wide v2, v5, v8

    add-int/lit8 v3, v19, 0x1

    const/4 v2, 0x2

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private clearCadPath()V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->initCadPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->cadPath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private initActivityResultLauncher()V
    .locals 2

    .line 326
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$$ExternalSyntheticLambda7;-><init>(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private refreshElevFromOverallSlope(DDD)D
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->coordsList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->coordsList:Ljava/util/List;

    iget v2, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->position:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v2, 0x0

    .line 280
    aput-wide p1, v0, v2

    const/4 p1, 0x1

    .line 281
    aput-wide p3, v0, p1

    .line 282
    iget p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->position:I

    if-nez p1, :cond_1

    .line 283
    aput-wide p5, v0, v1

    .line 285
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->applyOverallSlopeElevationsToList()V

    .line 286
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->coordsList:Ljava/util/List;

    iget p2, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->position:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    aget-wide p2, p1, v1

    .line 287
    invoke-direct {p0, p2, p3}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->setElevText(D)V

    return-wide p2

    .line 276
    :cond_2
    :goto_0
    invoke-direct {p0, p5, p6}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->setElevText(D)V

    return-wide p5
.end method

.method private setElevText(D)V
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    const-wide/16 v1, 0x0

    cmpl-double v3, p1, v1

    if-eqz v3, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p0, p1, p2, v1}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showCoords(DDD)V
    .locals 6

    .line 255
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    const-string v1, ""

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    cmpl-double v5, p1, v3

    if-eqz v5, :cond_0

    invoke-virtual {p0, p1, p2, v2}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    cmpl-double v5, p3, v3

    if-eqz v5, :cond_1

    invoke-virtual {p0, p3, p4, v2}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->disableElevation:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->coordsList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 258
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->refreshElevFromOverallSlope(DDD)D

    move-object p1, p0

    return-void

    :cond_2
    move-object p1, p0

    .line 260
    invoke-direct {p0, p5, p6}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->setElevText(D)V

    return-void
.end method


# virtual methods
.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public goCollectCoordinates(I)V
    .locals 2

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qianhe/yct/activity/CollectCoordsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    const-string/jumbo v1, "toothType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public goPointLibrary()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-static {p0}, Lcom/qianhe/yct/activity/pointlib/PointLibraryIntent;->pickPoint(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method protected initData()V
    .locals 3

    .line 343
    invoke-direct {p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->initActivityResultLauncher()V

    .line 344
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$5;-><init>(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)V

    const-string v2, "back"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->collect_coordinates:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TopbarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    .line 63
    new-instance v0, Lcom/qianhe/yct/activity/cad/CadPickHelper;

    new-instance v1, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/qianhe/yct/activity/cad/CadPickHelper;-><init>(Landroidx/activity/ComponentActivity;Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    .line 67
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 70
    const-string v1, "cadPath"

    const-string v2, "coordsListJson"

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->coordsListJson:Ljava/lang/String;

    iput-object v3, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->initJson:Ljava/lang/String;

    .line 72
    const-string v3, "position"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->position:I

    .line 73
    const-string v3, "name"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    iget-object v5, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->cadPath:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 77
    const-string v3, ""

    iput-object v3, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->cadPath:Ljava/lang/String;

    .line 79
    :cond_0
    iget-object v3, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->cadPath:Ljava/lang/String;

    iput-object v3, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->initCadPath:Ljava/lang/String;

    .line 81
    const-string v3, "disableElevation"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->disableElevation:Z

    .line 82
    const-string v3, "overallSlopeRatio"

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->overallSlopeRatio:D

    .line 83
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    iget-boolean v3, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->disableElevation:Z

    const/4 v5, 0x1

    xor-int/2addr v3, v5

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 84
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->coordsListJson:Ljava/lang/String;

    new-instance v6, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$1;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$1;-><init>(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)V

    .line 85
    invoke-virtual {v6}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 84
    invoke-virtual {v0, v3, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->coordsList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 86
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->coordsList:Ljava/util/List;

    iget v3, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->position:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 88
    aget-wide v7, v0, v4

    aget-wide v9, v0, v5

    const/4 v3, 0x2

    aget-wide v11, v0, v3

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->showCoords(DDD)V

    goto :goto_0

    :cond_1
    move-object v6, p0

    :goto_0
    if-eqz p1, :cond_3

    .line 92
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->coordsListJson:Ljava/lang/String;

    .line 95
    :cond_2
    iget-object v0, v6, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->cadPath:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->cadPath:Ljava/lang/String;

    .line 96
    const-string v0, "initCadPath"

    iget-object v1, v6, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->initCadPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->initCadPath:Ljava/lang/String;

    .line 99
    :cond_3
    iget-object p1, v6, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->toothView:Lcom/qianhe/yct/view/ToothView;

    new-instance v0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/ToothView;->setOnToothClickListener(Lcom/qianhe/yct/view/ToothView$OnToothClickListener;)V

    .line 112
    iget-object p1, v6, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->toothView:Lcom/qianhe/yct/view/ToothView;

    new-instance v0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/ToothView;->setOnToothLongClickListener(Lcom/qianhe/yct/view/ToothView$OnToothLongClickListener;)V

    .line 119
    iget-object p1, v6, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->tvCadImport:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object p1, v6, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->tvCadImport:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 133
    iget-object p1, v6, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->tvReset:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2;-><init>(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object p1, v6, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->tvMeasure:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object p1, v6, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->tvPointLib:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$3;-><init>(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object p1, v6, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->tvConfirm:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;-><init>(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-boolean p1, v6, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->disableElevation:Z

    if-eqz p1, :cond_4

    .line 211
    new-instance p1, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$$ExternalSyntheticLambda6;-><init>(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)V

    .line 219
    iget-object v0, v6, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 220
    iget-object v0, v6, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_4
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 384
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 385
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onHorizontalAngleRange(Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onINsNavi(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 237
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 238
    const-string v0, "coordsListJson"

    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->coordsListJson:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->coordsListJson:Ljava/lang/String;

    .line 239
    const-string v0, "cadPath"

    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->cadPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->cadPath:Ljava/lang/String;

    .line 240
    const-string v0, "initCadPath"

    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->initCadPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->initCadPath:Ljava/lang/String;

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 226
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 228
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->coordsListJson:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 229
    const-string v1, "coordsListJson"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_0
    const-string v0, "cadPath"

    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->cadPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v0, "initCadPath"

    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->initCadPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
