.class public Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LFilePickerActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBtnAddBook:Landroid/widget/Button;

.field private mEmptyView:Landroid/view/View;

.field private mFilter:Lcom/leon/lfilepickerlibrary/filter/LFileFilter;

.field private mIsAllSelected:Z

.field private mListFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mListNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMenu:Landroid/view/Menu;

.field private mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

.field private mPath:Ljava/lang/String;

.field private mPathAdapter:Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;

.field private mRecylerView:Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field private mTvBack:Landroid/widget/TextView;

.field private mTvPath:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 42
    const-string v0, "FilePickerLeon"

    iput-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mListNumbers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mIsAllSelected:Z

    return-void
.end method

.method static synthetic access$000(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mListFiles:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->chekInDirectory(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mListFiles:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->chooseDone()V

    return-void
.end method

.method static synthetic access$1201(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)V
    .locals 0

    .line 40
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method static synthetic access$200(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Lcom/leon/lfilepickerlibrary/filter/LFileFilter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mFilter:Lcom/leon/lfilepickerlibrary/filter/LFileFilter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Lcom/leon/lfilepickerlibrary/model/ParamEntity;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mPathAdapter:Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;

    return-object p0
.end method

.method static synthetic access$502(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mIsAllSelected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Landroid/widget/Button;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mBtnAddBook:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$700(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mRecylerView:Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->setShowPath(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mListNumbers:Ljava/util/ArrayList;

    return-object p0
.end method

.method private applyScreenOrientation()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SourceLockedOrientationActivity"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->isAutoAdaptation()Z

    move-result v0

    const/16 v1, 0x400

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 105
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 106
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    return-void

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->isPad()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 113
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method private checkSDState()Z
    .locals 2

    .line 319
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private chekInDirectory(I)V
    .locals 4

    .line 273
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mListFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mPath:Ljava/lang/String;

    .line 274
    invoke-direct {p0, p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->setShowPath(Ljava/lang/String;)V

    .line 276
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mFilter:Lcom/leon/lfilepickerlibrary/filter/LFileFilter;

    iget-object v1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    invoke-virtual {v1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->isGreater()Z

    move-result v1

    iget-object v2, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    invoke-virtual {v2}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->getFileSize()J

    move-result-wide v2

    invoke-static {p1, v0, v1, v2, v3}, Lcom/leon/lfilepickerlibrary/utils/FileUtils;->getFileList(Ljava/lang/String;Ljava/io/FileFilter;ZJ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mListFiles:Ljava/util/List;

    .line 277
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mPathAdapter:Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;

    invoke-virtual {v0, p1}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->setmListData(Ljava/util/List;)V

    .line 278
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mPathAdapter:Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 279
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mRecylerView:Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private chooseDone()V
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    invoke-virtual {v0}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->isChooseMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    invoke-virtual {v0}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->getMaxNum()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mListNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    invoke-virtual {v1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->getMaxNum()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 289
    sget v0, Lcom/leon/lfilepickerlibrary/R$string;->lfile_OutSize:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 293
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 294
    const-string v1, "paths"

    iget-object v2, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mListNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 295
    iget-object v1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mTvPath:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 296
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 297
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private initListener()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mTvBack:Landroid/widget/TextView;

    new-instance v1, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$2;

    invoke-direct {v1, p0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$2;-><init>(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mPathAdapter:Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;

    new-instance v1, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;

    invoke-direct {v1, p0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;-><init>(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)V

    invoke-virtual {v0, v1}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->setOnItemClickListener(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$OnItemClickListener;)V

    .line 248
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mBtnAddBook:Landroid/widget/Button;

    new-instance v1, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$4;

    invoke-direct {v1, p0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$4;-><init>(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initToolbar()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    sget v1, Lcom/leon/lfilepickerlibrary/R$string;->lfile_Back:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 131
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    invoke-virtual {v0}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->getTitleStyle()I

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    invoke-virtual {v1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->getTitleStyle()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    invoke-virtual {v0}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->getTitleColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    invoke-virtual {v1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->getTitleColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    invoke-virtual {v0}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    invoke-virtual {v1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    invoke-virtual {v0}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->getBackIcon()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    sget v1, Lcom/leon/lfilepickerlibrary/R$mipmap;->lfile_back2:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    goto :goto_0

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    sget v1, Lcom/leon/lfilepickerlibrary/R$mipmap;->lfile_back1:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 151
    :goto_0
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v1, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$1;

    invoke-direct {v1, p0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$1;-><init>(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 304
    sget v0, Lcom/leon/lfilepickerlibrary/R$id;->recylerview:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;

    iput-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mRecylerView:Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;

    .line 305
    sget v0, Lcom/leon/lfilepickerlibrary/R$id;->tv_path:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mTvPath:Landroid/widget/TextView;

    .line 306
    sget v0, Lcom/leon/lfilepickerlibrary/R$id;->tv_back:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mTvBack:Landroid/widget/TextView;

    .line 307
    sget v0, Lcom/leon/lfilepickerlibrary/R$id;->btn_addbook:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mBtnAddBook:Landroid/widget/Button;

    .line 308
    sget v0, Lcom/leon/lfilepickerlibrary/R$id;->empty_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mEmptyView:Landroid/view/View;

    .line 309
    sget v0, Lcom/leon/lfilepickerlibrary/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 310
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    invoke-virtual {v0}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->getAddText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mBtnAddBook:Landroid/widget/Button;

    iget-object v1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    invoke-virtual {v1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->getAddText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private isAutoAdaptation()Z
    .locals 2

    .line 122
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v1, "wheatek"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "RT3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setShowPath(Ljava/lang/String;)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mTvPath:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateAddButton()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    invoke-virtual {v0}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->isMutilyMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mBtnAddBook:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    invoke-virtual {v0}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->isChooseMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mBtnAddBook:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mBtnAddBook:Landroid/widget/Button;

    sget v2, Lcom/leon/lfilepickerlibrary/R$string;->lfile_OK:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    invoke-virtual {v0, v1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->setMutilyMode(Z)V

    :cond_1
    return-void
.end method

.method private updateOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 345
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mMenu:Landroid/view/Menu;

    sget v0, Lcom/leon/lfilepickerlibrary/R$id;->action_selecteall_cancel:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    invoke-virtual {v0}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->isMutilyMode()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method public isPad()Z
    .locals 2

    .line 118
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "CPDEVICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SPRING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "RT3 Pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 4

    .line 389
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 390
    sget v1, Lcom/leon/lfilepickerlibrary/R$string;->tips:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/leon/lfilepickerlibrary/R$string;->exit_page:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/leon/lfilepickerlibrary/R$string;->confirm:I

    new-instance v3, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$6;

    invoke-direct {v3, p0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$6;-><init>(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/leon/lfilepickerlibrary/R$string;->cancel:I

    new-instance v3, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$5;

    invoke-direct {v3, p0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$5;-><init>(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)V

    .line 394
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 400
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SourceLockedOrientationActivity"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->applyScreenOrientation()V

    .line 62
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 64
    sget p1, Lcom/leon/lfilepickerlibrary/R$layout;->activity_lfile_picker:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->getTheme()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->initView()V

    .line 73
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 74
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 77
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 78
    sget v1, Lcom/leon/lfilepickerlibrary/R$string;->lfile_Back:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->initToolbar()V

    .line 81
    invoke-direct {p0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->updateAddButton()V

    .line 82
    invoke-direct {p0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->checkSDState()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 83
    sget p1, Lcom/leon/lfilepickerlibrary/R$string;->lfile_NotFoundPath:I

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 86
    :cond_2
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    invoke-virtual {p1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mPath:Ljava/lang/String;

    .line 87
    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 89
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mPath:Ljava/lang/String;

    .line 91
    :cond_3
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mTvPath:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    new-instance p1, Lcom/leon/lfilepickerlibrary/filter/LFileFilter;

    iget-object v2, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    invoke-virtual {v2}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->getFileTypes()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/leon/lfilepickerlibrary/filter/LFileFilter;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mFilter:Lcom/leon/lfilepickerlibrary/filter/LFileFilter;

    .line 93
    iget-object v2, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    invoke-virtual {v3}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->isGreater()Z

    move-result v3

    iget-object v4, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    invoke-virtual {v4}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->getFileSize()J

    move-result-wide v4

    invoke-static {v2, p1, v3, v4, v5}, Lcom/leon/lfilepickerlibrary/utils/FileUtils;->getFileList(Ljava/lang/String;Ljava/io/FileFilter;ZJ)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mListFiles:Ljava/util/List;

    .line 94
    new-instance v6, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;

    iget-object v9, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mFilter:Lcom/leon/lfilepickerlibrary/filter/LFileFilter;

    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    invoke-virtual {p1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->isMutilyMode()Z

    move-result v10

    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    invoke-virtual {p1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->isGreater()Z

    move-result v11

    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    invoke-virtual {p1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->getFileSize()J

    move-result-wide v12

    move-object v8, p0

    invoke-direct/range {v6 .. v13}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;-><init>(Ljava/util/List;Landroid/content/Context;Ljava/io/FileFilter;ZZJ)V

    iput-object v6, v8, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mPathAdapter:Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;

    .line 95
    iget-object p1, v8, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mRecylerView:Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 96
    iget-object p1, v8, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mPathAdapter:Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;

    iget-object v0, v8, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    invoke-virtual {v0}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->getIconStyle()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->setmIconStyle(I)V

    .line 97
    iget-object p1, v8, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mRecylerView:Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;

    iget-object v0, v8, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mPathAdapter:Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;

    invoke-virtual {p1, v0}, Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 98
    iget-object p1, v8, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mRecylerView:Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;

    iget-object v0, v8, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;->setmEmptyView(Landroid/view/View;)V

    .line 99
    invoke-direct {p0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->initListener()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 333
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/leon/lfilepickerlibrary/R$menu;->menu_main_toolbar:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 334
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mMenu:Landroid/view/Menu;

    .line 335
    invoke-direct {p0, p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->updateOptionsMenu(Landroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 350
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/leon/lfilepickerlibrary/R$id;->action_selecteall_cancel:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_4

    .line 352
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mPathAdapter:Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;

    iget-boolean v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mIsAllSelected:Z

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->updateAllSelelcted(Z)V

    .line 353
    iget-boolean p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mIsAllSelected:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mIsAllSelected:Z

    if-nez p1, :cond_2

    .line 355
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mListFiles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 357
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mListNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 358
    iget-object v2, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mListNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    invoke-virtual {v0}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->getAddText()Ljava/lang/String;

    move-result-object v0

    const-string v2, " )"

    const-string v3, "( "

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mBtnAddBook:Landroid/widget/Button;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mParamEntity:Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    invoke-virtual {v5}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->getAddText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mListNumbers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mBtnAddBook:Landroid/widget/Button;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/leon/lfilepickerlibrary/R$string;->lfile_Selected:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mListNumbers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 367
    :cond_2
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mListNumbers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 368
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mBtnAddBook:Landroid/widget/Button;

    sget v0, Lcom/leon/lfilepickerlibrary/R$string;->lfile_Selected:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    :cond_3
    invoke-virtual {p0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->updateMenuTitle()V

    :cond_4
    return v1
.end method

.method public updateMenuTitle()V
    .locals 2

    .line 380
    iget-boolean v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mIsAllSelected:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lcom/leon/lfilepickerlibrary/R$string;->lfile_Cancel:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lcom/leon/lfilepickerlibrary/R$string;->lfile_SelectAll:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method
