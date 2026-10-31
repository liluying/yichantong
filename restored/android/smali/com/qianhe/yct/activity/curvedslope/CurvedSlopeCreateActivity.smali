.class public Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "CurvedSlopeCreateActivity.java"


# instance fields
.field private adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

.field private binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;

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

.field private curvedSlopeChoiceTypeFragment:Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;

.field private curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

.field private curvedSlopeStep1Fragment:Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;

.field private curvedSlopeStep2Fragment:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;

.field private curvedSlopeStep3Fragment:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

.field private id:J

.field private initEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

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


# direct methods
.method public static synthetic $r8$lambda$8Zd8R2qFcV5ZLyjgCAwNU6qnctM(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 203
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 205
    const-string v0, "coords"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object v0

    .line 206
    const-string v1, "cors"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 208
    array-length v1, p1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iput-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->coordinateSystem:Ljava/lang/String;

    .line 209
    :cond_0
    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    aget-object v2, p1, v2

    iput-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    .line 210
    :cond_1
    array-length v1, p1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    aget-object v2, p1, v2

    iput-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsHost:Ljava/lang/String;

    .line 211
    :cond_2
    array-length v1, p1

    const/4 v2, 0x3

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsPort:I

    .line 212
    :cond_3
    array-length v1, p1

    const/4 v2, 0x4

    if-le v1, v2, :cond_4

    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    aget-object v2, p1, v2

    iput-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsUserName:Ljava/lang/String;

    .line 213
    :cond_4
    array-length v1, p1

    const/4 v2, 0x5

    if-le v1, v2, :cond_5

    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    aget-object v2, p1, v2

    iput-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsPassword:Ljava/lang/String;

    .line 214
    :cond_5
    array-length v1, p1

    const/4 v2, 0x6

    if-le v1, v2, :cond_7

    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    aget-object p1, p1, v2

    iput-object p1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsMount:Ljava/lang/String;

    goto :goto_0

    .line 217
    :cond_6
    invoke-direct {p0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->saveCors()V

    :cond_7
    :goto_0
    if-eqz v0, :cond_a

    .line 220
    iget-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->mList:Ljava/util/List;

    iget v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->pagePosition:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;

    if-eqz p1, :cond_8

    .line 221
    iget-object p0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->coordsStep1:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 222
    :cond_8
    iget-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->mList:Ljava/util/List;

    iget v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->pagePosition:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;

    if-eqz p1, :cond_9

    .line 223
    iget-object p0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->coordsStep2:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 224
    :cond_9
    iget-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->mList:Ljava/util/List;

    iget v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->pagePosition:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    if-eqz p1, :cond_a

    .line 225
    iget-object p0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->coordsStep3:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetpagePosition(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->pagePosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputpagePosition(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->pagePosition:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 65
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->coordsStep1:Landroidx/lifecycle/MutableLiveData;

    .line 66
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->coordsStep2:Landroidx/lifecycle/MutableLiveData;

    .line 67
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->coordsStep3:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method private initActivityResultLauncher()V
    .locals 2

    .line 201
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private initViewPager()V
    .locals 4

    .line 128
    new-instance v0, Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    .line 129
    new-instance v0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->createNameFragment:Lcom/qianhe/yct/fragment/CreateProjectNameFragment;

    .line 130
    new-instance v0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeChoiceTypeFragment:Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;

    .line 131
    new-instance v0, Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;

    invoke-direct {v0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeStep1Fragment:Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;

    .line 132
    new-instance v0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;

    invoke-direct {v0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeStep2Fragment:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;

    .line 133
    new-instance v0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-direct {v0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeStep3Fragment:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    .line 134
    invoke-direct {p0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->setFragmentData()V

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->mList:Ljava/util/List;

    .line 136
    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->createNameFragment:Lcom/qianhe/yct/fragment/CreateProjectNameFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->mList:Ljava/util/List;

    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeChoiceTypeFragment:Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->mList:Ljava/util/List;

    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeStep1Fragment:Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->mList:Ljava/util/List;

    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeStep2Fragment:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->mList:Ljava/util/List;

    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeStep3Fragment:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseProjectFragment;

    .line 142
    iget-object v2, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 145
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    iget v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->pagePosition:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 147
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity$1;-><init>(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void
.end method

.method private next()V
    .locals 3

    .line 186
    iget v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->pagePosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->pagePosition:I

    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    invoke-virtual {v1}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->pagePosition:I

    :goto_0
    iput v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->pagePosition:I

    if-ltz v0, :cond_1

    .line 187
    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method

.method private previous()V
    .locals 3

    .line 178
    iget v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->pagePosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->pagePosition:I

    if-gez v0, :cond_0

    .line 179
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method private saveCors()V
    .locals 4

    .line 234
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

    .line 235
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    sget-object v1, Lcom/qianhe/baselib/enums/CoordinateSystemEnum;->CGCS2000:Lcom/qianhe/baselib/enums/CoordinateSystemEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->coordinateSystem:Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    sget v1, Lcom/qianhe/yct/R$string;->x_fixed:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    const-string v1, "rss.rtkiot.cn"

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->corsHost:Ljava/lang/String;

    const/16 v1, 0x1f41

    .line 238
    iput v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->corsPort:I

    .line 239
    const-string v1, "AUTO"

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->corsMount:Ljava/lang/String;

    return-void

    .line 241
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryCORS(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    sget-object v2, Lcom/qianhe/baselib/enums/CoordinateSystemEnum;->CGCS2000:Lcom/qianhe/baselib/enums/CoordinateSystemEnum;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->coordinateSystem:Ljava/lang/String;

    .line 243
    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/CorsEntity;

    iget-object v3, v3, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    iput-object v3, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    .line 244
    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/CorsEntity;

    iget-object v3, v3, Lcom/qianhe/baselib/bean/CorsEntity;->host:Ljava/lang/String;

    iput-object v3, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsHost:Ljava/lang/String;

    .line 245
    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/CorsEntity;

    iget v3, v3, Lcom/qianhe/baselib/bean/CorsEntity;->port:I

    iput v3, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsPort:I

    .line 246
    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/CorsEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/CorsEntity;->mount:Ljava/lang/String;

    iput-object v0, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsMount:Ljava/lang/String;

    return-void
.end method

.method private setFragmentData()V
    .locals 3

    .line 158
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 159
    const-string v1, "initEntity"

    iget-object v2, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->initEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 160
    const-string v1, "baseProEntity"

    iget-object v2, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 161
    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->createNameFragment:Lcom/qianhe/yct/fragment/CreateProjectNameFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 162
    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeChoiceTypeFragment:Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 163
    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeStep1Fragment:Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 164
    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeStep2Fragment:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 165
    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeStep3Fragment:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 1

    .line 313
    iput-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    .line 314
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeStep1Fragment:Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;->gga(Lcom/qianhe/baselib/bean/GGAEntity;)V

    .line 315
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeStep3Fragment:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->gga(Lcom/qianhe/baselib/bean/GGAEntity;)V

    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public goCollectCoordinates(I)V
    .locals 2

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qianhe/yct/activity/CollectCoordsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    const-string/jumbo v1, "toothType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    iget-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public goPointLibrary()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-static {p0}, Lcom/qianhe/yct/activity/pointlib/PointLibraryIntent;->pickPoint(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method protected initData()V
    .locals 3

    .line 259
    invoke-direct {p0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->initActivityResultLauncher()V

    .line 260
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity$2;-><init>(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;)V

    const-string v2, "back"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->curved_slope:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TopbarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected ivBackClick()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->lltBackTb:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity$3;-><init>(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;)V

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

    .line 70
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->coordsStep1:Landroidx/lifecycle/MutableLiveData;

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

    .line 74
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->coordsStep2:Landroidx/lifecycle/MutableLiveData;

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

    .line 78
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->coordsStep3:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 320
    iget v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->pagePosition:I

    iget v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->initPage:I

    if-ne v0, v1, :cond_0

    .line 321
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void

    .line 323
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->previous()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeCreateBinding;

    .line 84
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 88
    const-string v0, "id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->id:J

    .line 89
    const-string v0, "proType"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->proType:I

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "pagePosition"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->pagePosition:I

    iput p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->initPage:I

    .line 91
    iget-wide v4, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->id:J

    cmp-long p1, v4, v1

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->proType:I

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityById(ILjava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 93
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iput-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    goto :goto_0

    .line 97
    :cond_0
    new-instance p1, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    invoke-direct {p1}, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    .line 98
    iget v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->proType:I

    iput v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    .line 100
    :cond_1
    :goto_0
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iput-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->initEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    .line 101
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    iput-wide v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    .line 102
    iget-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    iput-object v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    .line 103
    iget-object p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->saveCors()V

    .line 105
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->initViewPager()V

    return-void
.end method

.method public onEventMessage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 170
    const-string v0, "previous"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->previous()V

    return-void

    .line 172
    :cond_0
    const-string v0, "next"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 173
    invoke-direct {p0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->next()V

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

    .line 302
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeStep1Fragment:Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;

    iget-boolean v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mAvailable:Z

    invoke-virtual {v0, p1, v1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;->insNavi(Lcom/qianhe/baselib/bean/InsNavi;Z)V

    .line 303
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeStep3Fragment:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    iget-boolean v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mAvailable:Z

    invoke-virtual {v0, p1, v1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->insNavi(Lcom/qianhe/baselib/bean/InsNavi;Z)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 329
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onPause()V

    .line 330
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 119
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 121
    const-string v0, "lineEntity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iput-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    .line 123
    invoke-direct {p0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->setFragmentData()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 252
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    .line 253
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 254
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 110
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 112
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    if-eqz v0, :cond_0

    .line 113
    const-string v1, "lineEntity"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method
