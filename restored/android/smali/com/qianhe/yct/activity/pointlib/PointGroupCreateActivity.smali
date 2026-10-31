.class public Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "PointGroupCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity$CollectGnssQuality;
    }
.end annotation


# instance fields
.field private adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

.field private binding:Lcom/qianhe/yct/databinding/ActivityPointgroupCreateBinding;

.field private final coordsLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private createNewGroup:Z

.field private createPointNameFragment:Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;

.field private editGroupLocalId:J

.field private editGroupOnly:Z

.field private final geodeticLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private final gnssQualityLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private groupLocalId:J

.field private initEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

.field private initPage:I

.field private launcher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field

.field private mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mReturnValue:Z

.field private pagePosition:I

.field private pendingGroupName:Ljava/lang/String;

.field private pointCreateFragment:Lcom/qianhe/yct/fragment/PointCreateFragment;

.field private pointGroupEntity:Lcom/qianhe/baselib/bean/PointGroupEntity;

.field private pointId:J

.field private pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;


# direct methods
.method public static synthetic $r8$lambda$QmeZkStrP2koZTKA_-E52SKSCbU(Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    .line 330
    const-string v0, "geodetic"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object v0

    .line 331
    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->gnssQualityLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity$CollectGnssQuality;

    const-string v3, "quality"

    const/4 v4, 0x0

    .line 332
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 333
    const-string v4, "hdop"

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v7

    const-string/jumbo v4, "vdop"

    .line 334
    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    move-wide v9, v7

    move-wide v6, v4

    move-wide v4, v9

    invoke-direct/range {v2 .. v7}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity$CollectGnssQuality;-><init>(IDD)V

    .line 331
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    .line 335
    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->geodeticLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 336
    :cond_1
    const-string v0, "coords"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object p1

    if-eqz p1, :cond_2

    .line 337
    iget-object p0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->coordsLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static bridge synthetic -$$Nest$fputpagePosition(Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pagePosition:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 67
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->coordsLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 68
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->geodeticLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 69
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->gnssQualityLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method private initActivityResultLauncher()V
    .locals 2

    .line 327
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private initViewPager()V
    .locals 4

    .line 227
    new-instance v0, Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    .line 228
    new-instance v0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->createPointNameFragment:Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;

    .line 229
    new-instance v0, Lcom/qianhe/yct/fragment/PointCreateFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/fragment/PointCreateFragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pointCreateFragment:Lcom/qianhe/yct/fragment/PointCreateFragment;

    .line 230
    invoke-direct {p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->setFragmentData()V

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->mList:Ljava/util/ArrayList;

    .line 232
    invoke-direct {p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->isGroupNameStep()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-boolean v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->editGroupOnly:Z

    if-eqz v1, :cond_1

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->mList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->createPointNameFragment:Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_1
    iget-boolean v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->editGroupOnly:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->mList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pointCreateFragment:Lcom/qianhe/yct/fragment/PointCreateFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointgroupCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointgroupCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    .line 241
    iput v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->initPage:I

    iput v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pagePosition:I

    .line 242
    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointgroupCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityPointgroupCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 243
    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointgroupCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityPointgroupCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 244
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointgroupCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointgroupCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity$1;-><init>(Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void
.end method

.method private isGroupNameStep()Z
    .locals 5

    .line 368
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->createNewGroup:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->groupLocalId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pendingGroupName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private next()V
    .locals 3

    .line 315
    iget v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pagePosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pagePosition:I

    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    invoke-virtual {v1}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pagePosition:I

    if-ltz v0, :cond_0

    .line 316
    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointgroupCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityPointgroupCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method private previous()V
    .locals 3

    .line 310
    iget v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pagePosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pagePosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointgroupCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityPointgroupCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method private setFragmentData()V
    .locals 4

    .line 253
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 254
    const-string v1, "initEntity"

    iget-object v2, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->initEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 255
    const-string v1, "pointlibEntity"

    iget-object v2, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 256
    const-string v1, "pointGroupEntity"

    iget-object v2, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pointGroupEntity:Lcom/qianhe/baselib/bean/PointGroupEntity;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 257
    iget-boolean v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->createNewGroup:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->editGroupOnly:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v2, "isGroupName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 258
    const-string v1, "editGroupOnly"

    iget-boolean v2, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->editGroupOnly:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 259
    const-string v1, "editGroupLocalId"

    iget-wide v2, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->editGroupLocalId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 260
    const-string v1, "groupLocalId"

    iget-wide v2, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->groupLocalId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 261
    const-string v1, "pendingGroupName"

    iget-object v2, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pendingGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->createPointNameFragment:Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 263
    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pointCreateFragment:Lcom/qianhe/yct/fragment/PointCreateFragment;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_3
    return-void
.end method

.method private uploadPendingPointAfterSaveAsync()V
    .locals 6

    .line 300
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    if-eqz v0, :cond_5

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_5

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->pointId:J

    cmp-long v2, v0, v3

    if-lez v2, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 302
    :cond_1
    iget-wide v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->groupLocalId:J

    cmp-long v2, v0, v3

    if-gtz v2, :cond_2

    goto :goto_0

    .line 303
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v2, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryPointGroupByLocalId(J)Lcom/qianhe/baselib/bean/PointGroupEntity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 304
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_3

    goto :goto_0

    .line 305
    :cond_3
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/qianhe/yct/utils/NetworkUserLoader;->isPointUploading(J)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 306
    :cond_4
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-virtual {v1, v0, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->addPoint(Lcom/qianhe/baselib/bean/PointGroupEntity;Lcom/qianhe/baselib/bean/PointlibEntity;)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public ensurePendingGroupCreated()J
    .locals 6

    .line 160
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->createNewGroup:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->groupLocalId:J

    return-wide v0

    .line 161
    :cond_0
    iget-wide v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->groupLocalId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    return-wide v0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pendingGroupName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-wide v2

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pendingGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->isPointGroupNameExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 164
    sget v0, Lcom/qianhe/yct/R$string;->point_group_name_already_exists:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-wide v2

    .line 167
    :cond_3
    new-instance v0, Lcom/qianhe/baselib/bean/PointGroupEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/PointGroupEntity;-><init>()V

    .line 168
    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pendingGroupName:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->name:Ljava/lang/String;

    .line 169
    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->insertPointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-gtz v1, :cond_4

    return-wide v2

    .line 171
    :cond_4
    iput-wide v4, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    .line 172
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->setCreatedGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)V

    .line 173
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createPointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)V

    return-wide v4
.end method

.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 0
    return-void
.end method

.method public getGroupLocalId()J
    .locals 2

    .line 104
    iget-wide v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->groupLocalId:J

    return-wide v0
.end method

.method public getInitEntity()Lcom/qianhe/baselib/bean/PointlibEntity;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->initEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    return-object v0
.end method

.method public getPendingGroupName()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pendingGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getPointlibEntity()Lcom/qianhe/baselib/bean/PointlibEntity;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    return-object v0
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointgroupCreateBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityPointgroupCreateBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public goCollectCoordinates(I)V
    .locals 2

    .line 320
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qianhe/yct/activity/CollectCoordsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 321
    const-string/jumbo v1, "toothType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    const-string p1, "returnGeodetic"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 323
    iget-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method protected initData()V
    .locals 0

    .line 343
    invoke-direct {p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->initActivityResultLauncher()V

    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 5

    .line 353
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->editGroupOnly:Z

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointgroupCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointgroupCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->edit_point_group:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 355
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->isGroupNameStep()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointgroupCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointgroupCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->create_point_group:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 358
    :cond_1
    iget-wide v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pointId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 359
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointgroupCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointgroupCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->edit_point:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointgroupCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointgroupCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->create_point:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointgroupCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointgroupCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TopbarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public isCreateNewGroup()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->createNewGroup:Z

    return v0
.end method

.method public observeCoordsLive()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->coordsLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public observeGeodeticLive()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->geodeticLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public observeGnssQualityLive()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->gnssQualityLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 385
    iget v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pagePosition:I

    iget v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->initPage:I

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void

    .line 386
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->previous()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityPointgroupCreateBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityPointgroupCreateBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointgroupCreateBinding;

    .line 185
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 186
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 187
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 190
    const-string v0, "pointId"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pointId:J

    .line 191
    const-string v0, "createNewGroup"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->createNewGroup:Z

    .line 192
    const-string v0, "editGroupLocalId"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->editGroupLocalId:J

    .line 193
    const-string v0, "groupLocalId"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->groupLocalId:J

    .line 194
    const-string v0, "pendingGroupName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pendingGroupName:Ljava/lang/String;

    .line 195
    const-string v0, "returnValue"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->mReturnValue:Z

    .line 196
    iget-wide v4, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->editGroupLocalId:J

    const/4 p1, 0x1

    cmp-long v0, v4, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->editGroupOnly:Z

    .line 197
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pendingGroupName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v4, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->groupLocalId:J

    cmp-long v0, v4, v1

    if-gtz v0, :cond_1

    .line 198
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->createNewGroup:Z

    .line 200
    :cond_1
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->editGroupOnly:Z

    if-eqz p1, :cond_2

    .line 201
    iget-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->editGroupLocalId:J

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryPointGroupByLocalId(J)Lcom/qianhe/baselib/bean/PointGroupEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pointGroupEntity:Lcom/qianhe/baselib/bean/PointGroupEntity;

    .line 202
    new-instance p1, Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-direct {p1}, Lcom/qianhe/baselib/bean/PointlibEntity;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 203
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pointGroupEntity:Lcom/qianhe/baselib/bean/PointGroupEntity;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->name:Ljava/lang/String;

    iput-object v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    goto :goto_1

    .line 204
    :cond_2
    iget-wide v4, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pointId:J

    cmp-long p1, v4, v1

    if-eqz p1, :cond_3

    .line 205
    iget-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryPoint(Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 206
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 207
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/PointlibEntity;

    iput-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 208
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->groupLocalId:J

    iput-wide v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->groupLocalId:J

    goto :goto_1

    .line 211
    :cond_3
    new-instance p1, Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-direct {p1}, Lcom/qianhe/baselib/bean/PointlibEntity;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 212
    iget-wide v3, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->groupLocalId:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_4

    .line 213
    iput-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->groupLocalId:J

    .line 214
    iget-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {p1, v3, v4}, Lcom/qianhe/yct/db/DatabaseManager;->queryPointGroupByLocalId(J)Lcom/qianhe/baselib/bean/PointGroupEntity;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 215
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->groupId:J

    .line 218
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    if-nez p1, :cond_5

    new-instance p1, Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-direct {p1}, Lcom/qianhe/baselib/bean/PointlibEntity;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 219
    :cond_5
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/PointlibEntity;

    iput-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->initEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 220
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    .line 221
    iget-object v0, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    iput-object v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    .line 223
    :cond_6
    invoke-direct {p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->initViewPager()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 391
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 392
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/PointGroupResponse;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_1

    .line 268
    iget v0, p1, Lcom/qianhe/yct/event/PointGroupResponse;->state:I

    if-nez v0, :cond_1

    iget-wide v2, p1, Lcom/qianhe/yct/event/PointGroupResponse;->groupLocalId:J

    iget-wide v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->groupLocalId:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    iget-wide v4, p1, Lcom/qianhe/yct/event/PointGroupResponse;->id:J

    const-wide/16 v0, 0x0

    cmp-long v6, v4, v0

    if-gtz v6, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v6, p1, Lcom/qianhe/yct/event/PointGroupResponse;->uuid:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/db/DatabaseManager;->updatePointGroupServerIds(JJLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/PointSyncResponse;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_2

    .line 274
    iget v0, p1, Lcom/qianhe/yct/event/PointSyncResponse;->state:I

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/qianhe/yct/event/PointSyncResponse;->ids:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/qianhe/yct/event/PointSyncResponse;->entities:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 275
    :goto_0
    iget-object v1, p1, Lcom/qianhe/yct/event/PointSyncResponse;->entities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p1, Lcom/qianhe/yct/event/PointSyncResponse;->ids:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 276
    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    if-eqz v1, :cond_1

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    iget-object v3, p1, Lcom/qianhe/yct/event/PointSyncResponse;->entities:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v3, v3, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 277
    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-object v2, p1, Lcom/qianhe/yct/event/PointSyncResponse;->ids:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->pointId:J

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v2, p1, Lcom/qianhe/yct/event/PointSyncResponse;->entities:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    iget-object v4, p1, Lcom/qianhe/yct/event/PointSyncResponse;->ids:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/qianhe/yct/db/DatabaseManager;->updatePointServerId(JJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onEventMessage(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 285
    const-string v0, "previous"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->previous()V

    return-void

    .line 287
    :cond_0
    const-string v0, "next"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    invoke-direct {p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->next()V

    return-void

    .line 289
    :cond_1
    const-string v0, "pointSaved"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 290
    invoke-direct {p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->uploadPendingPointAfterSaveAsync()V

    .line 291
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "isAdd"

    const/4 v1, 0x1

    .line 292
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "groupLocalId"

    iget-wide v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->groupLocalId:J

    .line 293
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    .line 291
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 294
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
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

.method public openPointListAfterGroupNamed(JLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 134
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->mReturnValue:Z

    const-string v1, "pendingGroupName"

    const-string v2, "groupName"

    const-string v3, "groupLocalId"

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_2

    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 136
    const-string v6, "openPointList"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    cmp-long v6, p1, v4

    if-lez v6, :cond_0

    .line 138
    invoke-virtual {v0, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 139
    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 141
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 143
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 147
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcom/qianhe/yct/activity/PointListActivity;

    invoke-direct {v0, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    cmp-long v6, p1, v4

    if-lez v6, :cond_3

    .line 149
    invoke-virtual {v0, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 150
    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 151
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 152
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public setCreatedGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)V
    .locals 2

    .line 178
    iput-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pointGroupEntity:Lcom/qianhe/baselib/bean/PointGroupEntity;

    if-eqz p1, :cond_0

    .line 179
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->setGroupLocalId(J)V

    :cond_0
    return-void
.end method

.method public setGroupLocalId(J)V
    .locals 1

    .line 112
    iput-wide p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->groupLocalId:J

    .line 113
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    if-eqz v0, :cond_0

    iput-wide p1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->groupLocalId:J

    :cond_0
    return-void
.end method

.method public setPendingGroupName(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->pendingGroupName:Ljava/lang/String;

    return-void
.end method
