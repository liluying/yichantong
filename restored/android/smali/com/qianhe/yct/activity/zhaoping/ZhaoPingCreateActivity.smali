.class public Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "ZhaoPingCreateActivity.java"


# instance fields
.field private adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

.field private binding:Lcom/qianhe/yct/databinding/ActivityZpCreateBinding;

.field private final coordsLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private createNameFragment:Lcom/qianhe/yct/fragment/CreateProjectNameFragment;

.field private id:J

.field private initEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

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
            "Lcom/qianhe/yct/base/BaseProjectFragment;",
            ">;"
        }
    .end annotation
.end field

.field private pagePosition:I

.field private proType:I

.field private zhaoPingChoiceTypeFragment:Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;

.field private zhaoPingCreateFragment:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

.field private zhaopingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;


# direct methods
.method public static synthetic $r8$lambda$0dvwTAgNL3te9MtJrJe0q3a3xis(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 208
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 210
    iget-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->mList:Ljava/util/List;

    iget v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->pagePosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    if-eqz v0, :cond_8

    .line 211
    const-string v0, "coords"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object v0

    .line 212
    const-string v1, "cors"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 214
    array-length v1, p1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaopingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iput-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->coordinateSystem:Ljava/lang/String;

    .line 215
    :cond_0
    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaopingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    aget-object v2, p1, v2

    iput-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    .line 216
    :cond_1
    array-length v1, p1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaopingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    aget-object v2, p1, v2

    iput-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsHost:Ljava/lang/String;

    .line 217
    :cond_2
    array-length v1, p1

    const/4 v2, 0x3

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaopingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsPort:I

    .line 218
    :cond_3
    array-length v1, p1

    const/4 v2, 0x4

    if-le v1, v2, :cond_4

    iget-object v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaopingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    aget-object v2, p1, v2

    iput-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsUserName:Ljava/lang/String;

    .line 219
    :cond_4
    array-length v1, p1

    const/4 v2, 0x5

    if-le v1, v2, :cond_5

    iget-object v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaopingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    aget-object v2, p1, v2

    iput-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsPassword:Ljava/lang/String;

    .line 220
    :cond_5
    array-length v1, p1

    const/4 v2, 0x6

    if-le v1, v2, :cond_7

    iget-object v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaopingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    aget-object p1, p1, v2

    iput-object p1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsMount:Ljava/lang/String;

    goto :goto_0

    .line 223
    :cond_6
    invoke-direct {p0}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->saveCors()V

    :cond_7
    :goto_0
    if-eqz v0, :cond_8

    .line 226
    iget-object p0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->coordsLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetpagePosition(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->pagePosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputpagePosition(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->pagePosition:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 62
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->coordsLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method private initActivityResultLauncher()V
    .locals 2

    .line 206
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private initViewPager()V
    .locals 4

    .line 143
    new-instance v0, Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    .line 144
    new-instance v0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->createNameFragment:Lcom/qianhe/yct/fragment/CreateProjectNameFragment;

    .line 145
    new-instance v0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaoPingChoiceTypeFragment:Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;

    .line 146
    new-instance v0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaoPingCreateFragment:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    .line 147
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 148
    const-string v1, "initEntity"

    iget-object v2, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->initEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 149
    const-string v1, "baseProEntity"

    iget-object v2, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaopingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 150
    iget-object v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->createNameFragment:Lcom/qianhe/yct/fragment/CreateProjectNameFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 151
    iget-object v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaoPingChoiceTypeFragment:Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 152
    iget-object v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaoPingCreateFragment:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->mList:Ljava/util/List;

    .line 154
    iget-object v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->createNameFragment:Lcom/qianhe/yct/fragment/CreateProjectNameFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->mList:Ljava/util/List;

    iget-object v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaoPingChoiceTypeFragment:Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->mList:Ljava/util/List;

    iget-object v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaoPingCreateFragment:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseProjectFragment;

    .line 158
    iget-object v2, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityZpCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 161
    iget-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityZpCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    iget v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->pagePosition:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 163
    iget-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityZpCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 164
    iget-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityZpCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity$1;-><init>(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void
.end method

.method private next()V
    .locals 3

    .line 191
    iget v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->pagePosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->pagePosition:I

    iget-object v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    invoke-virtual {v1}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->pagePosition:I

    :goto_0
    iput v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->pagePosition:I

    if-ltz v0, :cond_1

    .line 192
    iget-object v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZpCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityZpCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method

.method private previous()V
    .locals 3

    .line 183
    iget v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->pagePosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->pagePosition:I

    if-gez v0, :cond_0

    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZpCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityZpCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method private restoreEntityState(Landroid/os/Bundle;)V
    .locals 2

    .line 106
    const-string v0, "initEntity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iput-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->initEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    .line 107
    const-string/jumbo v0, "zhaoPingEntity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iput-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaopingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    .line 108
    const-string v0, "pagePosition"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->pagePosition:I

    .line 109
    const-string v1, "initPage"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->initPage:I

    return-void
.end method

.method private saveCors()V
    .locals 4

    .line 235
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

    .line 236
    iget-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaopingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    sget-object v1, Lcom/qianhe/baselib/enums/CoordinateSystemEnum;->CGCS2000:Lcom/qianhe/baselib/enums/CoordinateSystemEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->coordinateSystem:Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaopingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    sget v1, Lcom/qianhe/yct/R$string;->x_fixed:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaopingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    const-string v1, "rss.rtkiot.cn"

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->corsHost:Ljava/lang/String;

    const/16 v1, 0x1f41

    .line 239
    iput v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->corsPort:I

    .line 240
    const-string v1, "AUTO"

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->corsMount:Ljava/lang/String;

    return-void

    .line 242
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryCORS(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaopingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    sget-object v2, Lcom/qianhe/baselib/enums/CoordinateSystemEnum;->CGCS2000:Lcom/qianhe/baselib/enums/CoordinateSystemEnum;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->coordinateSystem:Ljava/lang/String;

    .line 244
    iget-object v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaopingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/CorsEntity;

    iget-object v3, v3, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    iput-object v3, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    .line 245
    iget-object v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaopingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/CorsEntity;

    iget-object v3, v3, Lcom/qianhe/baselib/bean/CorsEntity;->host:Ljava/lang/String;

    iput-object v3, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsHost:Ljava/lang/String;

    .line 246
    iget-object v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaopingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/CorsEntity;

    iget v3, v3, Lcom/qianhe/baselib/bean/CorsEntity;->port:I

    iput v3, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsPort:I

    .line 247
    iget-object v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaopingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/CorsEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/CorsEntity;->mount:Ljava/lang/String;

    iput-object v0, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsMount:Ljava/lang/String;

    return-void
.end method

.method private setFragmentData()V
    .locals 3

    .line 133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    const-string v1, "initEntity"

    iget-object v2, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->initEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 135
    const-string v1, "baseProEntity"

    iget-object v2, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaopingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 136
    iget-object v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->createNameFragment:Lcom/qianhe/yct/fragment/CreateProjectNameFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 137
    iget-object v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaoPingChoiceTypeFragment:Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 138
    iget-object v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaoPingCreateFragment:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 1

    .line 313
    iput-object p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    .line 314
    iget-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaoPingCreateFragment:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->gga(Lcom/qianhe/baselib/bean/GGAEntity;)V

    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZpCreateBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityZpCreateBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public goCollectCoordinates(I)V
    .locals 2

    .line 196
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qianhe/yct/activity/CollectCoordsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    const-string/jumbo v1, "toothType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    iget-object p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public goPointLibrary()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-static {p0}, Lcom/qianhe/yct/activity/pointlib/PointLibraryIntent;->pickPoint(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method protected initData()V
    .locals 3

    .line 260
    invoke-direct {p0}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->initActivityResultLauncher()V

    .line 261
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity$2;-><init>(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;)V

    const-string v2, "back"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityZpCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->leveling:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityZpCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TopbarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected ivBackClick()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityZpCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->lltBackTb:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity$3;-><init>(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public observeCoords()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->coordsLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 319
    iget v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->pagePosition:I

    iget v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->initPage:I

    if-ne v0, v1, :cond_0

    .line 320
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void

    .line 322
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->previous()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityZpCreateBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityZpCreateBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZpCreateBinding;

    .line 77
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-eqz p1, :cond_0

    .line 80
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->restoreEntityState(Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 84
    const-string v0, "id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->id:J

    .line 85
    const-string v0, "proType"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->proType:I

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "pagePosition"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->pagePosition:I

    iput p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->initPage:I

    .line 87
    iget-wide v4, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->id:J

    cmp-long p1, v4, v1

    if-eqz p1, :cond_1

    .line 88
    iget-object p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->proType:I

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityById(ILjava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 89
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iput-object p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaopingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    goto :goto_0

    .line 93
    :cond_1
    new-instance p1, Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    invoke-direct {p1}, Lcom/qianhe/baselib/bean/ZhaoPingEntity;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaopingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    .line 94
    iget v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->proType:I

    iput v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    .line 96
    :cond_2
    :goto_0
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaopingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iput-object p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->initEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    .line 97
    iget-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaopingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    iput-wide v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    .line 98
    iget-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    iput-object v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    .line 99
    iget-object p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->saveCors()V

    .line 102
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->initViewPager()V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 334
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 335
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "UNLOG,REFSTATION"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 175
    const-string v0, "previous"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->previous()V

    return-void

    .line 177
    :cond_0
    const-string v0, "next"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 178
    invoke-direct {p0}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->next()V

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

    .line 303
    iget-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaoPingCreateFragment:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    iget-boolean v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mAvailable:Z

    invoke-virtual {v0, p1, v1}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->insNavi(Lcom/qianhe/baselib/bean/InsNavi;Z)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 328
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onPause()V

    .line 329
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 127
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 128
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->restoreEntityState(Landroid/os/Bundle;)V

    .line 129
    invoke-direct {p0}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->setFragmentData()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 253
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    .line 254
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 255
    iget-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 114
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 115
    iget-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->initEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    if-eqz v0, :cond_0

    .line 116
    const-string v1, "initEntity"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->zhaopingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    if-eqz v0, :cond_1

    .line 119
    const-string/jumbo v1, "zhaoPingEntity"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 121
    :cond_1
    const-string v0, "pagePosition"

    iget v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->pagePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 122
    const-string v0, "initPage"

    iget v1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->initPage:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
