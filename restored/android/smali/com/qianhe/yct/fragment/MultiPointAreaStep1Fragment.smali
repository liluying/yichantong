.class public Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "MultiPointAreaStep1Fragment.java"


# instance fields
.field private baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

.field private binding:Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;

.field private cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

.field private initEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

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

.field private mToothType:I

.field private multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

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
.method public static synthetic $r8$lambda$4UyetqNS9dxf1UrlUJFMxXB-H00(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;Landroidx/activity/result/ActivityResult;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    .line 315
    const-string v0, "coordsListJson"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    iput-object v0, v1, Lcom/qianhe/baselib/bean/MultiPointAreaEntity;->coordsListJson:Ljava/lang/String;

    .line 318
    const-string v1, "cadPath"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    iput-object p1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    .line 322
    :cond_0
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$5;-><init>(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)V

    .line 323
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 322
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->pointsList:Ljava/util/List;

    .line 324
    iget-object p1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 325
    iget-object p1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 326
    iget-object p1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->areaPreview:Lcom/qianhe/yct/view/MulPointAreaPreView;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/MulPointAreaPreView;->clearPoints()V

    .line 327
    iget-object p1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->pointsList:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 328
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x1

    .line 329
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->addPoint([DZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$AYgMg_nA7_L7xM8r5UqBTvDstxE(Landroid/view/View;)V
    .locals 1

    .line 118
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    const-string v0, "previous"

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Na0rFTYVis4Y9NkXEThPCYZxH6k(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;Landroid/view/View;)V
    .locals 5

    .line 121
    iget-object p1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;

    .line 121
    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->tvContinue:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 122
    iget-object p1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->least_three_points:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->createEntity(Lcom/qianhe/baselib/bean/MultiPointAreaEntity;)V

    .line 126
    iget-object p1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    iget-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->insert(Lcom/qianhe/baselib/base/BaseProEntity;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    .line 128
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->next()V

    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->initEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    invoke-virtual {v0, p1}, Lcom/qianhe/baselib/bean/MultiPointAreaEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 132
    iget-object p1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    .line 134
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 136
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->next()V

    :cond_3
    return-void
.end method

.method public static synthetic $r8$lambda$RVztF3C01Pw_RmLi5jC3rcuQKhE(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;[D)V
    .locals 1

    if-eqz p1, :cond_1

    .line 277
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 278
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->clearCadPath()V

    const/4 v0, 0x1

    .line 279
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->addPoint([DZ)V

    return-void

    .line 0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static synthetic $r8$lambda$Sui6yZ1jV5DJkUwNajVPk2KBSYY(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;

    .line 198
    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->rcvCoords:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {p0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UEgJpEomf7VHkELZ4U76fzBNNaU(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;Ljava/lang/String;[D)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    .line 69
    iput-object p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    .line 70
    invoke-direct {p0, p2}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->replaceCadPickPoints([D)V

    return-void
.end method

.method public static synthetic $r8$lambda$c0GDmZm07FIXZiD3JjVIAVDxMKk(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;Landroid/view/View;)V
    .locals 2

    .line 109
    iget-object p1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    .line 109
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    iget-object p0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->mList:Ljava/util/List;

    .line 111
    invoke-static {p0}, Lcom/qianhe/yct/activity/cad/CadEntityChooseIntent;->flattenPoints(Ljava/util/List;)[D

    move-result-object p0

    const/4 v1, -0x1

    .line 109
    invoke-virtual {p1, v0, v1, p0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(Ljava/lang/String;I[D)V

    return-void
.end method

.method public static synthetic $r8$lambda$fxuJIbgrcsCe8ud2-iHbqMF3H5M(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;Landroid/view/View;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->confirmClearAllCoords()V

    return-void
.end method

.method public static synthetic $r8$lambda$kl38kqAmjnjSz7lK872ctTMVvN8(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;Landroid/view/View;)Z
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    const/4 p1, -0x1

    .line 113
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(I)V

    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlauncher(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmList(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->mList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmultiPointAreaEntity(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)Lcom/qianhe/baselib/bean/MultiPointAreaEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmToothType(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->mToothType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$maddPoint(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;[DZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->addPoint([DZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearAllCoords(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->clearAllCoords()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->clearCadPath()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateContinueButton(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->updateContinueButton()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
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

    .line 218
    array-length v4, p1

    if-lt v4, v2, :cond_2

    array-length v4, p1

    rem-int/2addr v4, v2

    if-eqz v4, :cond_0

    goto :goto_2

    .line 221
    :cond_0
    array-length v4, p1

    div-int/2addr v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    mul-int/lit8 v6, v5, 0x3

    .line 223
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

    .line 228
    :goto_1
    invoke-direct {p0, v6, v7}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->addPoint([DZ)V

    add-int/2addr v5, v3

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private addPoint([DZ)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->addCoords([D)V

    .line 194
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->areaPreview:Lcom/qianhe/yct/view/MulPointAreaPreView;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/view/MulPointAreaPreView;->addPoint([D)V

    .line 195
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->updateContinueButton()V

    .line 196
    iget-object p1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->mList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/qianhe/baselib/bean/MultiPointAreaEntity;->coordsListJson:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 197
    iget-object p1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {p1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 198
    iget-object p1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->rcvCoords:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$$ExternalSyntheticLambda8;-><init>(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private clearAllCoords()V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->mList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->clear()V

    .line 260
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->areaPreview:Lcom/qianhe/yct/view/MulPointAreaPreView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/MulPointAreaPreView;->clearPoints()V

    .line 261
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    const-string v1, ""

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    .line 262
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->mList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/MultiPointAreaEntity;->coordsListJson:Ljava/lang/String;

    .line 263
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->updateContinueButton()V

    :cond_1
    :goto_0
    return-void
.end method

.method private clearCadPath()V
    .locals 6

    .line 268
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

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

    .line 234
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->mList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->clear_list_confirm:I

    .line 238
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/qianhe/yct/R$string;->confirm:I

    .line 239
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/qianhe/yct/R$string;->cancel:I

    .line 240
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$3;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$3;-><init>(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)V

    .line 237
    const-string v5, ""

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private createEntity(Lcom/qianhe/baselib/bean/MultiPointAreaEntity;)V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    if-eqz v0, :cond_0

    .line 178
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/BaseStationEntity;->lon:D

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    .line 179
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/BaseStationEntity;->lat:D

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    .line 180
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

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

    .line 284
    new-instance v0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$4;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$4;-><init>(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)V

    return-object v0
.end method

.method private initActivityResultLauncher()V
    .locals 2

    .line 312
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$$ExternalSyntheticLambda6;-><init>(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private initObserve()V
    .locals 3

    .line 276
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaCreateActivity;->observeCoordsStep()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$$ExternalSyntheticLambda7;-><init>(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initView()V
    .locals 5

    .line 101
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->areaPreview:Lcom/qianhe/yct/view/MulPointAreaPreView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/MulPointAreaPreView;->setWorkMode(Z)V

    .line 102
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    iget v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->tvCadImport:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    iget v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 104
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->tvClearCoords:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    iget v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->setupToothViewCollectListeners(Lcom/qianhe/yct/view/ToothView;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    .line 107
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    iput v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->mToothType:I

    .line 109
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->tvCadImport:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->tvCadImport:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->tvClearCoords:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->tvPrevious:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->tvContinue:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->rcvCoords:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->mList:Ljava/util/List;

    .line 144
    new-instance v0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->mList:Ljava/util/List;

    iget-object v4, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    iget v4, v4, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    invoke-direct {v0, v2, v3, v4}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    .line 145
    iget-object v2, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->rcvCoords:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 146
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    new-instance v2, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$1;-><init>(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)V

    invoke-virtual {v0, v2}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->setOnActionListener(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener;)V

    .line 165
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/MultiPointAreaEntity;->coordsListJson:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 166
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    iget-object v2, v2, Lcom/qianhe/baselib/bean/MultiPointAreaEntity;->coordsListJson:Ljava/lang/String;

    new-instance v3, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$2;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$2;-><init>(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)V

    .line 167
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 166
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->pointsList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 169
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 170
    invoke-direct {p0, v2, v1}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->addPoint([DZ)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method private next()V
    .locals 4

    .line 185
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->start_jobs:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 186
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    iget-object v1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 189
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private replaceCadPickPoints([D)V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->clear()V

    .line 207
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->areaPreview:Lcom/qianhe/yct/view/MulPointAreaPreView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/MulPointAreaPreView;->clearPoints()V

    if-eqz p1, :cond_1

    .line 208
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->addCadPickPoints([D)V

    return-void

    .line 209
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    const-string v0, ""

    iput-object v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    .line 210
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->mList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/qianhe/baselib/bean/MultiPointAreaEntity;->coordsListJson:Ljava/lang/String;

    .line 211
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->updateContinueButton()V

    return-void
.end method

.method private updateContinueButton()V
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->tvContinue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

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

    if-eqz p1, :cond_0

    .line 348
    iput-object p1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    new-instance p1, Lcom/qianhe/yct/activity/cad/CadPickHelper;

    new-instance v0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)V

    invoke-direct {p1, p0, v0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;)V

    iput-object p1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 76
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;

    .line 77
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 78
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v1, "LOG,REFSTATION,ONTIME,1"

    invoke-direct {p3, v0, v1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 79
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 80
    iget-object p3, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 81
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 83
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 84
    iget-object p3, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 85
    iget-object p3, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    .line 89
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 91
    const-string p2, "initEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->initEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    .line 92
    const-string p2, "baseProEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    .line 94
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->initView()V

    .line 95
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->initObserve()V

    .line 96
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->initActivityResultLauncher()V

    .line 97
    iget-object p1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 4

    .line 353
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    .line 354
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 355
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

    .line 343
    iput-object p1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    return-void
.end method
