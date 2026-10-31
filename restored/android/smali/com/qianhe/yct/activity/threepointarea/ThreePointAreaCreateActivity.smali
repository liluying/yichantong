.class public Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "ThreePointAreaCreateActivity.java"


# instance fields
.field private adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

.field private binding:Lcom/qianhe/yct/databinding/ActivityThreePointAreaCreateBinding;

.field private final coordsStep1:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private final coordsStep2:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private final coordsStep3:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private createNameFragment:Lcom/qianhe/yct/fragment/CreateProjectNameFragment;

.field private id:J

.field private initEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

.field private initPage:I

.field private launcher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field

.field private mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private pagePosition:I

.field private proType:I

.field private threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

.field private threePointAreaStep1Fragment:Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;

.field private threePointAreaStep2Fragment:Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;

.field private threePointAreaStep3Fragment:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;


# direct methods
.method public static synthetic $r8$lambda$crkgmTiXyeEJvBE34kEjJLYQWNo(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 199
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 201
    const-string v0, "coords"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object v0

    .line 202
    const-string v1, "cors"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 204
    array-length v1, p1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iput-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->coordinateSystem:Ljava/lang/String;

    .line 205
    :cond_0
    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    aget-object v2, p1, v2

    iput-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    .line 206
    :cond_1
    array-length v1, p1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    aget-object v2, p1, v2

    iput-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsHost:Ljava/lang/String;

    .line 207
    :cond_2
    array-length v1, p1

    const/4 v2, 0x3

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsPort:I

    .line 208
    :cond_3
    array-length v1, p1

    const/4 v2, 0x4

    if-le v1, v2, :cond_4

    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    aget-object v2, p1, v2

    iput-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsUserName:Ljava/lang/String;

    .line 209
    :cond_4
    array-length v1, p1

    const/4 v2, 0x5

    if-le v1, v2, :cond_5

    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    aget-object v2, p1, v2

    iput-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsPassword:Ljava/lang/String;

    .line 210
    :cond_5
    array-length v1, p1

    const/4 v2, 0x6

    if-le v1, v2, :cond_7

    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    aget-object p1, p1, v2

    iput-object p1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsMount:Ljava/lang/String;

    goto :goto_0

    .line 213
    :cond_6
    invoke-direct {p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->saveCors()V

    :cond_7
    :goto_0
    if-eqz v0, :cond_a

    .line 216
    iget-object p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->mList:Ljava/util/List;

    iget v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->pagePosition:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;

    if-eqz p1, :cond_8

    .line 217
    iget-object p0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->coordsStep1:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 218
    :cond_8
    iget-object p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->mList:Ljava/util/List;

    iget v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->pagePosition:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;

    if-eqz p1, :cond_9

    .line 219
    iget-object p0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->coordsStep2:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 220
    :cond_9
    iget-object p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->mList:Ljava/util/List;

    iget v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->pagePosition:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    if-eqz p1, :cond_a

    .line 221
    iget-object p0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->coordsStep3:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetpagePosition(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->pagePosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputpagePosition(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->pagePosition:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 64
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->coordsStep1:Landroidx/lifecycle/MutableLiveData;

    .line 65
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->coordsStep2:Landroidx/lifecycle/MutableLiveData;

    .line 66
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->coordsStep3:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method private initActivityResultLauncher()V
    .locals 2

    .line 197
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private initViewPager()V
    .locals 4

    .line 127
    new-instance v0, Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    .line 128
    new-instance v0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->createNameFragment:Lcom/qianhe/yct/fragment/CreateProjectNameFragment;

    .line 129
    new-instance v0, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;

    invoke-direct {v0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaStep1Fragment:Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;

    .line 130
    new-instance v0, Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;

    invoke-direct {v0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaStep2Fragment:Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;

    .line 131
    new-instance v0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    invoke-direct {v0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaStep3Fragment:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    .line 132
    invoke-direct {p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->setFragmentData()V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->mList:Ljava/util/List;

    .line 134
    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->createNameFragment:Lcom/qianhe/yct/fragment/CreateProjectNameFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->mList:Ljava/util/List;

    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaStep1Fragment:Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->mList:Ljava/util/List;

    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaStep2Fragment:Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->mList:Ljava/util/List;

    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaStep3Fragment:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 139
    iget-object v2, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreePointAreaCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreePointAreaCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 142
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreePointAreaCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreePointAreaCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    iget v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->pagePosition:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 144
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreePointAreaCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreePointAreaCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreePointAreaCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreePointAreaCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity$1;-><init>(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void
.end method

.method private next()V
    .locals 3

    .line 182
    iget v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->pagePosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->pagePosition:I

    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    invoke-virtual {v1}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->pagePosition:I

    :goto_0
    iput v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->pagePosition:I

    if-ltz v0, :cond_1

    .line 183
    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreePointAreaCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityThreePointAreaCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method

.method private previous()V
    .locals 3

    .line 174
    iget v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->pagePosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->pagePosition:I

    if-gez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreePointAreaCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityThreePointAreaCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method private saveCors()V
    .locals 4

    .line 230
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/qianhe/baselib/Constant;->NTRIPTYPE:Ljava/lang/String;

    sget-object v2, Lcom/qianhe/baselib/enums/NtripTypeEnum;->SDK:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NTRIP:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    sget-object v1, Lcom/qianhe/baselib/enums/CoordinateSystemEnum;->CGCS2000:Lcom/qianhe/baselib/enums/CoordinateSystemEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->coordinateSystem:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    sget v1, Lcom/qianhe/yct/R$string;->x_fixed:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    const-string v1, "rss.rtkiot.cn"

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->corsHost:Ljava/lang/String;

    const/16 v1, 0x1f41

    .line 234
    iput v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->corsPort:I

    .line 235
    const-string v1, "AUTO"

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->corsMount:Ljava/lang/String;

    return-void

    .line 237
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryCORS(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    sget-object v2, Lcom/qianhe/baselib/enums/CoordinateSystemEnum;->CGCS2000:Lcom/qianhe/baselib/enums/CoordinateSystemEnum;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->coordinateSystem:Ljava/lang/String;

    .line 239
    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/CorsEntity;

    iget-object v3, v3, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    iput-object v3, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    .line 240
    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/CorsEntity;

    iget-object v3, v3, Lcom/qianhe/baselib/bean/CorsEntity;->host:Ljava/lang/String;

    iput-object v3, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsHost:Ljava/lang/String;

    .line 241
    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/CorsEntity;

    iget v3, v3, Lcom/qianhe/baselib/bean/CorsEntity;->port:I

    iput v3, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsPort:I

    .line 242
    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/CorsEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/CorsEntity;->mount:Ljava/lang/String;

    iput-object v0, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsMount:Ljava/lang/String;

    return-void
.end method

.method private setFragmentData()V
    .locals 3

    .line 155
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 156
    const-string v1, "initEntity"

    iget-object v2, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->initEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 157
    const-string v1, "baseProEntity"

    iget-object v2, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 158
    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->createNameFragment:Lcom/qianhe/yct/fragment/CreateProjectNameFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 159
    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaStep1Fragment:Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 160
    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaStep2Fragment:Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 161
    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaStep3Fragment:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreePointAreaCreateBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityThreePointAreaCreateBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public goCollectCoordinates(I)V
    .locals 2

    .line 187
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qianhe/yct/activity/CollectCoordsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    const-string/jumbo v1, "toothType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    iget-object p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public goPointLibrary()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-static {p0}, Lcom/qianhe/yct/activity/pointlib/PointLibraryIntent;->pickPoint(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method protected initData()V
    .locals 3

    .line 255
    invoke-direct {p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->initActivityResultLauncher()V

    .line 256
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity$2;-><init>(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;)V

    const-string v2, "back"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreePointAreaCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreePointAreaCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->three_point_area:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreePointAreaCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreePointAreaCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TopbarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected ivBackClick()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreePointAreaCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreePointAreaCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->lltBackTb:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity$3;-><init>(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public observeCoordsStep1()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->coordsStep1:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public observeCoordsStep2()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->coordsStep2:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public observeCoordsStep3()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->coordsStep3:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 316
    iget v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->pagePosition:I

    iget v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->initPage:I

    if-ne v0, v1, :cond_0

    .line 317
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void

    .line 319
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->previous()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityThreePointAreaCreateBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityThreePointAreaCreateBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreePointAreaCreateBinding;

    .line 83
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 87
    const-string v0, "id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->id:J

    .line 88
    const-string v0, "proType"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->proType:I

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "pagePosition"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->pagePosition:I

    iput p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->initPage:I

    .line 90
    iget-wide v4, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->id:J

    cmp-long p1, v4, v1

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->proType:I

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityById(ILjava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 92
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iput-object p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    goto :goto_0

    .line 96
    :cond_0
    new-instance p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    invoke-direct {p1}, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    .line 97
    iget v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->proType:I

    iput v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    .line 99
    :cond_1
    :goto_0
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iput-object p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->initEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    .line 100
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    iput-wide v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    .line 101
    iget-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    iput-object v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    .line 102
    iget-object p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->saveCors()V

    .line 104
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->initViewPager()V

    return-void
.end method

.method public onEventMessage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 166
    const-string v0, "previous"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->previous()V

    return-void

    .line 168
    :cond_0
    const-string v0, "next"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 169
    invoke-direct {p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->next()V

    :cond_1
    return-void
.end method

.method protected onHorizontalAngleRange(Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onINsNavi(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaStep1Fragment:Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;

    iget-boolean v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mAvailable:Z

    invoke-virtual {v0, p1, v1}, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;->insNavi(Lcom/qianhe/baselib/bean/InsNavi;Z)V

    .line 299
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaStep2Fragment:Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;

    iget-boolean v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mAvailable:Z

    invoke-virtual {v0, p1, v1}, Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;->insNavi(Lcom/qianhe/baselib/bean/InsNavi;Z)V

    .line 300
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaStep3Fragment:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    iget-boolean v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mAvailable:Z

    invoke-virtual {v0, p1, v1}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->insNavi(Lcom/qianhe/baselib/bean/InsNavi;Z)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 325
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onPause()V

    .line 326
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 118
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 120
    const-string/jumbo v0, "threePointAreaEntity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iput-object p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    .line 122
    invoke-direct {p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->setFragmentData()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 248
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    .line 249
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 109
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 111
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    if-eqz v0, :cond_0

    .line 112
    const-string/jumbo v1, "threePointAreaEntity"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method
