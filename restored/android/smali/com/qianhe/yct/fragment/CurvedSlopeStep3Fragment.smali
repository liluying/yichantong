.class public Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "CurvedSlopeStep3Fragment.java"


# instance fields
.field private baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

.field private binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

.field private cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

.field private curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

.field private initEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

.field private isH5Pro:Z

.field private launcher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation
.end field

.field private multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

.field private pointsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8Gig6HZNHz7idGI3aV8DDG5S7Pc(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;Landroid/view/View;)V
    .locals 2

    .line 113
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    .line 113
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    iget-object p0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->mList:Ljava/util/List;

    .line 115
    invoke-static {p0}, Lcom/qianhe/yct/activity/cad/CadEntityChooseIntent;->flattenPoints(Ljava/util/List;)[D

    move-result-object p0

    const/4 v1, -0x1

    .line 113
    invoke-virtual {p1, v0, v1, p0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(Ljava/lang/String;I[D)V

    return-void
.end method

.method public static synthetic $r8$lambda$8KZA7oX82a90cAJcBnQWSYvKriY(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    .line 279
    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->rcvCoords:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {p0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$AU7Rv9Mj5IMgVo_dd2_4aKTS0iQ(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;Landroid/view/View;)Z
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    const/4 p1, -0x1

    .line 117
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$V_ow2h7aSPew0R7ROyuzoU71rS0(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;Landroid/view/View;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->confirmClearAllCoords()V

    return-void
.end method

.method public static synthetic $r8$lambda$t1odNjqdhNRqr1_MlS_oycdKBeU(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;Landroidx/activity/result/ActivityResult;)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 229
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 231
    const-string v0, "coordsListJson"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 233
    iget-object v1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iput-object v0, v1, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->coordsListJson:Ljava/lang/String;

    .line 234
    const-string v0, "cors"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 235
    const-string v1, "position"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    .line 237
    array-length v5, v0

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    aget-object v6, v0, v2

    iput-object v6, v5, Lcom/qianhe/baselib/base/BaseProEntity;->coordinateSystem:Ljava/lang/String;

    .line 238
    :cond_0
    array-length v5, v0

    if-le v5, v4, :cond_1

    iget-object v5, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    aget-object v6, v0, v4

    iput-object v6, v5, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    .line 239
    :cond_1
    array-length v5, v0

    if-le v5, v3, :cond_2

    iget-object v5, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    aget-object v6, v0, v3

    iput-object v6, v5, Lcom/qianhe/baselib/base/BaseProEntity;->corsHost:Ljava/lang/String;

    .line 240
    :cond_2
    array-length v5, v0

    const/4 v6, 0x3

    if-le v5, v6, :cond_3

    iget-object v5, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/qianhe/baselib/base/BaseProEntity;->corsPort:I

    .line 241
    :cond_3
    array-length v5, v0

    const/4 v6, 0x4

    if-le v5, v6, :cond_4

    iget-object v5, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    aget-object v6, v0, v6

    iput-object v6, v5, Lcom/qianhe/baselib/base/BaseProEntity;->corsUserName:Ljava/lang/String;

    .line 242
    :cond_4
    array-length v5, v0

    const/4 v6, 0x5

    if-le v5, v6, :cond_5

    iget-object v5, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    aget-object v6, v0, v6

    iput-object v6, v5, Lcom/qianhe/baselib/base/BaseProEntity;->corsPassword:Ljava/lang/String;

    .line 243
    :cond_5
    array-length v5, v0

    const/4 v6, 0x6

    if-le v5, v6, :cond_6

    iget-object v5, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    aget-object v0, v0, v6

    iput-object v0, v5, Lcom/qianhe/baselib/base/BaseProEntity;->corsMount:Ljava/lang/String;

    .line 245
    :cond_6
    const-string v0, "cadPath"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 247
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iput-object p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    .line 249
    :cond_7
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->coordsListJson:Ljava/lang/String;

    new-instance v5, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$5;

    invoke-direct {v5, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$5;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)V

    .line 250
    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 249
    invoke-virtual {p1, v0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_9

    .line 251
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 252
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->clear()V

    .line 253
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/PolyLinePreView;->clearPoints()V

    .line 254
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    .line 255
    invoke-direct {p0, v5, v4}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->addPoint([DZ)V

    goto :goto_0

    :cond_8
    if-nez v1, :cond_9

    .line 258
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    aget-wide v5, v1, v2

    iput-wide v5, v0, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->east1:D

    .line 259
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    aget-wide v5, v1, v4

    iput-wide v5, v0, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->north1:D

    .line 260
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    aget-wide v5, v1, v3

    iput-wide v5, v0, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->elev1:D

    .line 261
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    invoke-virtual {v0, p1}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertGAUSSXYToGeodetic([D)[D

    move-result-object p1

    .line 262
    iget-object p0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    aget-wide v0, p1, v2

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->lon1:D

    .line 263
    aget-wide v0, p1, v4

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->lat1:D

    :cond_9
    return-void
.end method

.method public static synthetic $r8$lambda$wXCG0UOdjbsn94PAn9xprujALQw(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;Ljava/lang/String;[D)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    .line 74
    iput-object p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    .line 75
    invoke-direct {p0, p2}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->replaceCadPickPoints([D)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurvedSlopeEntity(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)Lcom/qianhe/baselib/bean/CurvedSlopeEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)Lcom/qianhe/baselib/bean/CurvedSlopeEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlauncher(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmINS(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmList(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->mList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddPoint(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;[DZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->addPoint([DZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearAllCoords(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->clearAllCoords()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->clearCadPath()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateEntity(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;Lcom/qianhe/baselib/bean/CurvedSlopeEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->createEntity(Lcom/qianhe/baselib/bean/CurvedSlopeEntity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnext(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->next()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    return-void
.end method

.method private addCadPickPoints([D)V
    .locals 13

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 300
    array-length v4, p1

    if-lt v4, v2, :cond_2

    array-length v4, p1

    rem-int/2addr v4, v2

    if-eqz v4, :cond_0

    goto :goto_2

    .line 303
    :cond_0
    array-length v4, p1

    div-int/2addr v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    mul-int/lit8 v6, v5, 0x3

    .line 305
    aget-wide v7, p1, v6

    add-int/lit8 v9, v6, 0x1

    aget-wide v9, p1, v9

    add-int/2addr v6, v0

    aget-wide v11, p1, v6

    new-array v6, v2, [D

    aput-wide v7, v6, v1

    aput-wide v9, v6, v3

    aput-wide v11, v6, v0

    add-int/lit8 v7, v4, -0x1

    if-ne v5, v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 310
    :goto_1
    invoke-direct {p0, v6, v7}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->addPoint([DZ)V

    add-int/2addr v5, v3

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private addPoint([DZ)V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->addCoords([D)V

    .line 274
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/view/PolyLinePreView;->addPoint([D)V

    .line 275
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->tvContinue:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 276
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->mList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->coordsListJson:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 277
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {p1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 278
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->rcvCoords:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private clearAllCoords()V
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->mList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->clear()V

    .line 342
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/PolyLinePreView;->clearPoints()V

    .line 343
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->pointsList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 344
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    const-string v1, ""

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    .line 347
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->mList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->coordsListJson:Ljava/lang/String;

    .line 348
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->tvContinue:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private clearCadPath()V
    .locals 6

    .line 353
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-string v1, ""

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private confirmClearAllCoords()V
    .locals 7

    .line 316
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->mList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->clear_list_confirm:I

    .line 320
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/qianhe/yct/R$string;->confirm:I

    .line 321
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/qianhe/yct/R$string;->cancel:I

    .line 322
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$6;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$6;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)V

    .line 319
    const-string v5, ""

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private createEntity(Lcom/qianhe/baselib/bean/CurvedSlopeEntity;)V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    if-eqz v0, :cond_0

    .line 212
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/BaseStationEntity;->lon:D

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    .line 213
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/BaseStationEntity;->lat:D

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    .line 214
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/BaseStationEntity;->elev:D

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationElev:D

    :cond_0
    return-void
.end method

.method private createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;
    .locals 1

    .line 368
    new-instance v0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$8;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$8;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)V

    return-object v0
.end method

.method private initActivityResultLauncher()V
    .locals 2

    .line 227
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private initObserve()V
    .locals 3

    .line 357
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->observeCoordsStep3()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$7;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$7;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/PolyLinePreView;->setWorkMode(Z)V

    .line 109
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->tvCadImport:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->tvClearCoords:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 112
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->setupToothViewCollectListeners(Lcom/qianhe/yct/view/ToothView;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    .line 113
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->tvCadImport:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->tvCadImport:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->tvClearCoords:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$1;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->rcvCoords:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->mList:Ljava/util/List;

    .line 155
    new-instance v0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->mList:Ljava/util/List;

    iget-object v3, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget v3, v3, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    invoke-direct {v0, v1, v2, v3}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    .line 156
    iget-object v1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->rcvCoords:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 157
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    new-instance v1, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$3;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->setOnActionListener(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener;)V

    return-void
.end method

.method private next()V
    .locals 4

    .line 219
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->start_jobs:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 220
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    iget-object v1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 222
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 223
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private replaceCadPickPoints([D)V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->clear()V

    .line 289
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/PolyLinePreView;->clearPoints()V

    if-eqz p1, :cond_1

    .line 290
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->addCadPickPoints([D)V

    return-void

    .line 291
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    const-string v0, ""

    iput-object v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    .line 292
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->mList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->coordsListJson:Ljava/lang/String;

    .line 293
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->tvContinue:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

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

    .line 418
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    new-instance p1, Lcom/qianhe/yct/activity/cad/CadPickHelper;

    new-instance v0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)V

    invoke-direct {p1, p0, v0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;)V

    iput-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 81
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    .line 82
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 84
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v1, "LOG,REFSTATION,ONTIME,1"

    invoke-direct {p3, v0, v1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 85
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 86
    iget-object p3, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 87
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 89
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 90
    iget-object p3, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 91
    iget-object p3, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    .line 95
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 97
    const-string p2, "initEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    .line 98
    const-string p2, "baseProEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    .line 100
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->initView()V

    .line 101
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->initObserve()V

    .line 102
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->initActivityResultLauncher()V

    .line 103
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 4

    .line 423
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    .line 424
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 425
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

    .line 407
    iput-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    return-void
.end method

.method public onResume()V
    .locals 12

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 186
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 187
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v4

    iput-boolean v4, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->isH5Pro:Z

    .line 188
    iget-object v4, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->tvCollectType:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget v5, v5, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    if-nez v5, :cond_0

    sget v5, Lcom/qianhe/yct/R$string;->collect_slope_top_curves:I

    goto :goto_0

    :cond_0
    sget v5, Lcom/qianhe/yct/R$string;->collect_slope_bottom_curve:I

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 190
    iget-object v4, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v4}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->clear()V

    .line 191
    iget-object v4, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep3Binding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {v4}, Lcom/qianhe/yct/view/PolyLinePreView;->clearPoints()V

    .line 192
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    iget-object v5, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget-object v5, v5, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->coordsListJson:Ljava/lang/String;

    new-instance v6, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$4;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$4;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)V

    .line 193
    invoke-virtual {v6}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 192
    invoke-virtual {v4, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iput-object v4, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->pointsList:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 194
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 198
    :cond_1
    iget-object v4, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->pointsList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 199
    iget-object v4, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->pointsList:Ljava/util/List;

    iget-object v5, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget-wide v6, v5, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->east1:D

    iget-wide v8, v5, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->north1:D

    iget-wide v10, v5, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->elev1:D

    new-array v2, v2, [D

    aput-wide v6, v2, v3

    aput-wide v8, v2, v1

    aput-wide v10, v2, v0

    invoke-interface {v4, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 195
    :cond_2
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->pointsList:Ljava/util/List;

    .line 196
    iget-object v5, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget-wide v6, v5, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->east1:D

    iget-wide v8, v5, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->north1:D

    iget-wide v10, v5, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->elev1:D

    new-array v2, v2, [D

    aput-wide v6, v2, v3

    aput-wide v8, v2, v1

    aput-wide v10, v2, v0

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    :goto_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->pointsList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 202
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 203
    invoke-direct {p0, v1, v3}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->addPoint([DZ)V

    goto :goto_3

    .line 206
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->pointsList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->coordsListJson:Ljava/lang/String;

    return-void
.end method
